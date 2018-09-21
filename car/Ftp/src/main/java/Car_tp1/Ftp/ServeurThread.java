package Car_tp1.Ftp;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Cette classe ecoute et traite les commandes des clients.
 * 
 * @author shaqianqian, maling
 */
public class ServeurThread  extends Thread {
	/**
	 * Les utilisateurs qui peuvent lancer les fichiers
	 */
	public static Map<String, String> utilisateurs = new HashMap<String, String>();
	/**
	 * Un objet de type Socket pour la communication entre client et serveur.
	 */
     Socket listener_client_cmd = null;
	/**
	 * Un objet de type ServerSocket qui ecoute un port du serveur.
	 */
	private ServerSocket serveur;
	/**
	 * Analyser si il contient cet utilisateur
	 */
	boolean contains_user = false;
	/**
	 * Analyser si le code secret de cet utilisateur est correct ou pas.
	 */
	boolean password_correct = false;
	/**
	 * Un objet de type Socket pour la communication entre client et serveur.
	 */
	Socket socketDonnees;
	/**
	 * Nom d'utilisateur
	 */
	private String identifiant = "";
	/**
	 * Répertoire courant du serveur
	 */
	// 获取工程绝对位置
	private File repertoire = new File(System.getProperty("user.dir"));

	/**
	 * @param listener_client_cmd
	 *            Socket pour la communication entre client et serveur.
	 */
	public ServeurThread(Socket listener_client_cmd) {
		this.listener_client_cmd = listener_client_cmd;
	}

	/**
	 * Methode limitant les utilisateurs qui veulent lancer les fichiers
	 */
	public static void addUsers() {
		utilisateurs.put("a", "a");
		utilisateurs.put("b", "b");
		utilisateurs.put("admin", "admin");

	}

	@Override
	/**
	 * Méthode receptionnant une requête sur l'entrée du socket et lançe les commandes
	 * correspondantes.
	 */
	public void run() {
		addUsers();
		try {
			String request = null;
			String cmd = null;
			String param = null;
			// On boucle pour éviter la reception de requête null ,et il
			// arrete quand le requete est quit.
			do {
				// 获取客户端的输入流，读取客户端发来的信息。
				BufferedReader input = new BufferedReader(new InputStreamReader(listener_client_cmd.getInputStream()));
				request = input.readLine();
				System.out.println("Request: " + request);
				String[] s = request.split(" ");
				if (s.length == 2) {
					cmd = s[0];
					param = s[1];
				} else {
					cmd = s[0];
					param = "vide";
				}
				// 对客户端发过来的命令进行处理，切成命令和参数。On coupe chaque requete pour obtenir la commande de la
				// cliente
				if (VerifierCommande(cmd, param)) {
					switch (cmd) {

					case "USER":
						contains_user = processUSER(param);
						break;
					case "PASS":
						if (contains_user)
							password_correct = processPASS(param);
						break;
					case "LPRT":
						processLPRT();
						break;
					case "QUIT":
						processQUIT();
						break;

					case "SYST": // syst
						processSYST();
						break;

					case "PORT":
						if (password_correct)
							processPORT(param);
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "PASV":
						if (password_correct)
							processPASV();
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "EPRT":
						if (password_correct)
							processEPRT(param);
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "EPSV":
						if (password_correct)
							processEPSV();
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "LIST":
						if (password_correct)
							processLIST();
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "RETR":
						if (password_correct)
							processRETR(param);
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "STOR":
						if (password_correct)
							processSTOR(param);
						else {
							repondre("530 Not logged in.");
						}
						break;
					case "DELE":
						if (password_correct)
							processDELE(param);
						else {
							repondre("530 Not logged in.");
						}
						break;
					case "RMD":
						if (password_correct)
							processRMD(param);
						else
							repondre("530 Not logged in.");
						break;
					case "PWD":
						if (password_correct)
							processPWD();
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "CWD":
						if (password_correct)
							processCWD(param);
						else {
							repondre("530 Not logged in.");
						}
						break;

					case "CDUP":
						if (password_correct)
							processCDUP();
						else {
							repondre("530 Not logged in.");
						}
						break;

					}
				} else {
					cmd = null;
				}

			} while (!"QUIT".equals(cmd));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Methode envoyant les messages au client
	 * @param msg
	 *            Le message que le serveur envoye au client
	 */
	public void repondre(String msg) {
		PrintWriter output;
		try {
			output = new PrintWriter(listener_client_cmd.getOutputStream(), true);
			output.println(msg);
			output.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * Methode supprimant le fichier dans le répertoire courant du serveur
	 * 
	 * @param filename
	 *            le nom du fichier que l'on veut supprimer
	 * @throws IOException
	 */
	boolean processDELE(String filename) throws IOException {
		System.out.println(repertoire);
		File file = new File(this.repertoire + "/" + filename);
		if (file.exists()) {
			if (file.isFile()) {
				if (deleteFile(file)) {
					repondre("supprime le fichier");
					return true;
				} else {
					repondre("ne peut pas supprimer le fichier ");
					return false;
				}
			} else if (file.isDirectory()) {
				repondre("c'est un dir, pas un fichier ");
				return false;

			}
			else {return false;}

		} else {
			repondre("425 Le fichier n'existe pas");
			return false;
		}
		

	}

	/**
	 * Methode supprimant le repertoire du serveur
	 * 
	 * @param filename
	 *            le nom du repertoire que l'on veut supprimer
	 */
     public boolean processRMD(String directiory) {
		System.out.println(repertoire);
		File file = new File(this.repertoire + "/" + directiory);
		if (file.exists()) {
			if (file.isFile()) {
				repondre("c'est pas un dir,cest un fichier");
			} else if (file.isDirectory()) {
				if (deleteDir(file)) {
					repondre("supprime ce dir" + repertoire.getPath());
					return true;
				} else {
					repondre("ne peut pas supprimer le dir ");
					return false;
				}

			}

		} else {
			repondre("Ce dir n'existe pas");
			return false;
		}
		return false;
		

	}

	/**
	 * Methode verifiant s'il existe le fichier java dans ce repetoire 
	 * 
	 * @param directory
	 *            le nom de repertoire que l'on veut supprimer
	 * @return si on peut le supprimer on renvoie true, sinon false
	 */
	public boolean verifierDir(File directory) {
		File[] array = directory.listFiles();
		boolean isJava = false;

		for (int i = 0; i < array.length; i++) {
			if (array[i].isFile())// 如果是文件
			{
				if (directory.getName().contains("java")) {
					isJava = true;
				}
				if (isJava) {
					break;
				}
			} else if (array[i].isDirectory())// 如果是文件夹
			{
				isJava = verifierDir(new File(array[i].getAbsolutePath()));
				if (isJava) {
					break;
				}
			}
		}
		if (isJava) {
			return false;
		} else
			return true;

	}

	/**
	 * Methode supprimant le repertoire
	 * 
	 * @param directory
	 *            le nom du repertoire que l'on veut supprimer
	 * @return si on a reussi a supprimer la repertoire, retourne true, sinon on retourne
	 *         false
	 */
	public boolean deleteDir(File directory) {
		if (verifierDir(directory)) {
			File[] array = directory.listFiles();
			boolean reussi = true;
			for (int i = 0; i < array.length; i++) {
				if (array[i].isFile())
				// 如果是文件
				{
					reussi = deleteFile(new File(array[i].getAbsolutePath()));
					if (!reussi) {
						break;
					}
				} else if (array[i].isDirectory())
				// 如果是文件夹
				{
					reussi = deleteDir(new File(array[i].getAbsolutePath()));
					if (!reussi) {
						break;
					}
				}
			}
			if (!reussi) {
				return false;
			}
			if (directory.delete()) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}

	}

	/**
	 * Methode supprimant le fichier
	 * 
	 * @param file
	 *            le nom de fichier que l'on veut supprimer
	 * @return si on peut supprimer ce fichier,retourne true sinon false
	 */
	public boolean deleteFile(File file) {
		if (!file.getName().contains("java"))
			return file.delete();
		else {

			return false;
		}
	}

	/**
	 * Methode verifiant la commande
	 * 
	 * @param cmd
	 *            la commande que le client va lancer
	 * @param param
	 *            la parametre de cette commande
	 * @return Si ftp a cette commande et le parametre de la commande est correct,
	 *         retourne true,sinon false
	 */
	public boolean VerifierCommande(String cmd, String param) {
		List<String> commands = new ArrayList<String>();
		commands.add("USER");
		commands.add("PASS");
		commands.add("QUIT");
		commands.add("LPRT");
		commands.add("SYST");
		commands.add("PORT");
		commands.add("PASV");
		commands.add("EPRT");
		commands.add("EPSV");
		commands.add("LIST");
		commands.add("RETR");
		commands.add("STOR");
		commands.add("PWD");
		commands.add("CWD");
		commands.add("CDUP");
		commands.add("DELE");
		commands.add("RMD");
		if (!commands.contains(cmd)) {
			String msg = "500 Syntax error, command unrecognized.";
			// 命令不可识别
			repondre(msg);
			return false;
		}
		// 这条命令是否存在
		if (cmd.equals("QUIT") || cmd.equals("SYST") || cmd.equals("PASV") || cmd.equals("EPSV") || cmd.equals("LIST")
				|| cmd.equals("PWD") || cmd.equals("CDUP")) {
			if (!param.equals("vide")) {
				repondre("501 Syntax error in parameters or arguments.");
				return false;
			} // 参数错误，不该有参数的地方出现参数

		} else {
			if (param.equals("vide")) {
				repondre("501 Syntax error in parameters or arguments.");
				return false;
			}
		} // 参数错误，有参数的地方没有参数

		return true;
	}

	public Socket getListener_client_cmd() {
		return listener_client_cmd;
	}

	public void setListener_client_cmd(Socket listener_client_cmd) {
		this.listener_client_cmd = listener_client_cmd;
	}

	/**
	 * Methode verifiant l'autorisation ftp de l'utilisateur
	 * 
	 * @param user
	 *            le nom de l'utilisateur
	 * @return si cet utilisateur est permi d'utiliser le ftp, retourne true, sinon false
	 */
	public boolean processUSER(String user) {
		if (utilisateurs.containsKey(user)) {
			this.identifiant = user;
			repondre("331 User name is okay,need password.");
			return true;

		} else {
			String msg = "430 Invalid username";
			repondre(msg);
			return false;

		}

	}

	/**
	 * Methode pour verifier le code secret
	 * 
	 * @param mdp
	 *            les mots de passe
	 * @return si le mot de passe de cet utilisateur est correct retourne true,
	 *         sinon false
	 */
	public boolean processPASS(String mdp) {
		if (utilisateurs.get(this.identifiant).equals(mdp)) {
			// 密码正确，登录成功
			repondre("230 User logged in, proceed. Logged out if appropriate.");
			return true;
		} else {
			repondre("430 Invalid password");
			return false;
		}

	}

	public String processLPRT() throws IOException {
		repondre("Long data port.");
		return "lprt";
	}

	/**
	 * Méthode éxécutant la commande QUIT, pour finir la communication entre le serveur et le client
	 * 
	 * @throws IOException erreur de socket
	 */
	public String processQUIT() throws IOException {
		repondre("221 Service closing control connection.");
		this.listener_client_cmd.close();
		return "quit";
		
	}

	/**
	 * Méthode éxécutant la commande SYST
	 */
	public String processSYST()  {
		repondre("215 JAVA.");
		return "syst";
	}

	/**
	 * Méthode éxécutant la commande PORT, et entrant dans le mode actif
	 * 
	 * @param hote
	 *            représente l'adresse et le port du client
	 * @throws IOException erreur de socket
	 */

	public String processPORT(String hote) throws IOException {
		String[] s = hote.split(",");
		int port = Integer.parseInt(s[4]) * 256 + Integer.parseInt(s[5]);
		this.socketDonnees = new Socket(listener_client_cmd.getInetAddress(), port);
		// 主动式，在客户端上开一个端口，服务端去连接他
		repondre("200 The requested action has been successfully completed"+hote);
		return "port";

	}

	/**
	 * Méthode éxécutant la commande PASV et entrant dans le mode passif
	 * 
	 * @throws IOException erreur de socket
	 */
	public void processPASV() throws IOException { // 进入 ftp -p 或者passive
		// 被动式，在服务端上开一个端口，客户端去连接他
		int port = 0;
		do {
			serveur = new ServerSocket(0);// 65535
			// 如果把参数port设为0，表示由操作系统来为服务器分配一个任意可用的端口
			port = serveur.getLocalPort();
		} while (port <= 1024);
		// 因为端口随机生成，所以现在要重新把它获取出来
		byte[] host = listener_client_cmd.getInetAddress().getAddress();
		String adresse = "";
		for (byte b : host) {
			adresse += b + ",";
		}
		// 前四个指服务器的地址，最后两个，将倒数第二个乘 256 再加上最后一个数字，这就是 FTP 服务器开放的用来进行数据传输的端口
		repondre("227 Entering Passive Mode " + "(" + adresse + port / 256 + "," + port % 256 + ")");
		this.socketDonnees = serveur.accept();
	}

	/**
	 * Méthode éxécutant la commande EPRT 
	 * 
	 * @param hote
	 *            représente l'adresse et le port client
	 */
	public String processEPRT(String hote)  {
		String[] s = hote.split("[|]");
		int port = Integer.parseInt(s[3]);
		try {
			this.socketDonnees = new Socket(listener_client_cmd.getInetAddress(), port);
		} catch (IOException e) {
			System.out.println("can't creat the socket for communicating the datas");
			e.printStackTrace();
		}
		repondre("200");
		return "eprt";
	}

	/**
	 * Méthode éxécutant la commande EPSV
	 * 
	 * @throws IOException l'erreur de serverSocket
	 */
	public void processEPSV() throws IOException {
		// ftp> epsv
		int port = 0;
		do {
			serveur = new ServerSocket(0);// 65535
			// 如果把参数port设为0，表示由操作系统来为服务器分配一个任意可用的端口
			port = serveur.getLocalPort();
		} while (port <= 1024);
		repondre("229 Entering Extended Passive Mode (|||" + port + "|)");
		this.socketDonnees = serveur.accept();
	}

	/**
	 * Méthode éxécutant la commande LIST et affichant tous les fichiers dans le repertoire courant du serveur
	 */
	public boolean processLIST() {
		if (this.socketDonnees == null) {
			repondre("425 Can't open data connection.");
			return false;
		}
		String liste = "";
		List<Fichier> fin = getFile(repertoire.getPath(), 0);
		for (Fichier f : fin) {
			for (int i = 0; i < f.getDeep(); i++)
				liste = liste + " ";
			liste = liste + "|--";
			liste = liste + f.name + "\n";
		}
		repondre("150 File status okay; about to open data connection.");
		OutputStreamWriter outputWriterData;
		try {
			outputWriterData = new OutputStreamWriter(socketDonnees.getOutputStream());
			outputWriterData.write(liste);
			outputWriterData.flush();
			this.socketDonnees.close();
			if (this.serveur != null) {
				this.serveur.close();
				this.serveur = null;
			}
			repondre("226 Closing data connection. Requested file action successful");
		} catch (IOException e) {

			repondre("Requested file action failed");
			e.printStackTrace();
		}
		return true;

	}

	
	public static List<Fichier> getFile(String path, int deep) {
		// 获取特定路径下的所有文件及其所在的深度
		String s = "";
		File file = new File(path);
		// 获得该文件夹内的所有文件
		File[] array = file.listFiles();
		List<Fichier> fin = new ArrayList<Fichier>();
		for (int i = 0; i < array.length; i++) {
			if (array[i].isFile())// 如果是文件
			{
				fin.add(new Fichier(array[i].getName(), deep));

			} else if (array[i].isDirectory())// 如果是文件夹
			{
				fin.add(new Fichier(array[i].getName(), deep));

				fin.addAll(getFile(array[i].getPath(), deep + 1));
			}
		}
		return fin;
	}

	/**
	 * Méthode éxécutant la commande RETR pour envoyer un fichier du serveur au client 
	 * 
	 * @param filename
	 *            le nom du fichier 
	 * @return true si la commande se déroule bien, false sinon
	 */
	public String processRETR(String filename)  {
		if (socketDonnees == null) {
			String msg = "425 Can't open data connection.";
			repondre(msg);
			return "Can't open data connection.";
		}

		try {
			String path = this.repertoire.toPath().toAbsolutePath().toString() + "/" + filename;

			File f = new File(path);
			if (f.exists()) {
				String msg = "150";
				repondre(msg);
				Path target = Paths.get(path);
				OutputStream out = this.socketDonnees.getOutputStream();

				Files.copy(target, out);

				socketDonnees.close();

				if (this.serveur != null) {
					this.serveur.close();
					this.serveur = null;
				}
			} else {
				String msg = "425 Le fichier n'existe pas";
				repondre(msg);
				return "retr";
			}

		} catch (Exception e) {
			String msg = "425 Transfert echoue";
			repondre(msg);
		}

		String msg = "226 Transfert reussi";
		repondre(msg);
		return "retr";
	}

	/**
	 * Méthode éxécutant la commande STOR pour envoyer ue fichier du client sur le serveur
	 * 
	 * @param filename
	 *            le nom du fichier copié depuis le cient
	 * @return true si la commande se déroule bien, false sinon
	 */
	public String processSTOR(String filename)  {
		if (socketDonnees == null) {
			repondre("425 Can't open data connection.");
			return "Can't open data connection.";
		}

		try {
			String msg = "150";
			repondre(msg);
			InputStream in = this.socketDonnees.getInputStream();

			String path = this.repertoire.toPath().toAbsolutePath().toString() + "/" + filename;
			Path target = Paths.get(path);

			Files.copy(in, target, StandardCopyOption.REPLACE_EXISTING);

			socketDonnees.close();

			if (this.serveur != null) {
				this.serveur.close();
				this.serveur = null;
			}
		} catch (IOException e) {
			repondre("425 Transfert echoue");
		}
		repondre("226 Transfert reussi");
		return "stor";
	}

	/**
	 * Méthode éxécutant la commande PWD pour obtenir le chemin du repertoire courant du serveur
	 * @return 
	 * 
	 */
	public String processPWD()  {
		repondre("257 " + this.repertoire.getAbsolutePath());
		return this.repertoire.getAbsolutePath();
	}

	public String supprime_queue(String path) {
		String[] positions = path.split("/");
		path = positions[0];
		for (int i = 1; i < positions.length - 1; i++) {
			path = path + "/" + positions[i];
		}
		return path;

	}
	/**
	 * Méthode éxécutant la commande CWD
	 * 
	 * @param chemin
	 *            le chemin du dossier vers lequel on souhaite naviguer
	 * @return le code de retour de la commande
	 */
	public String processCWD(String chemin) {
		File path = new File(this.repertoire.getAbsolutePath() + "/" + chemin);
		if (path.exists()) {
			if (!chemin.equals("..")) {
				this.repertoire = new File(this.repertoire.getAbsolutePath() + "/" + chemin);
			} else {
				this.repertoire = new File(supprime_queue(this.repertoire.toString()));
			}
			;
			// System.out.println(this.repertoire);
			repondre("250" + " " + this.repertoire);
			return "cwd";
		} else {
			repondre("520 Repertoire inexistant");
			return "Repertoire_inexistant";
		}
	}

	/**
	 * Méthode éxécutant la commande CDUP pour rentrer dans le chemin parent 
	 * @return le code de retour de la commande
	 */
	public int processCDUP()  {
		// 获取上级文件
		Path path;
		if (this.repertoire.getParent() != null) {
			path = Paths.get(this.repertoire.getParent());
		} else {
			path = Paths.get(this.repertoire.getPath());
		}

		if (Files.exists(path, LinkOption.NOFOLLOW_LINKS)) {
			this.repertoire = new File(path.toString());
			repondre("250 " + this.repertoire.getAbsolutePath());
			return 250;
		} else {
			repondre("530 Repertoire inexistant");
			return 530;
		}
	}
}
