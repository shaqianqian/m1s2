package src;

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
import java.util.List;

public class ServeurThread implements Runnable {
	private Socket client = null;

	public ServeurThread(Socket client) {
		this.client = client;
	}

	// 和本线程相关的client(服务端开了一个线程给这个client)
	private Socket socketDonnees;
	/**
	 * Le serveur permettant le mode passif
	 */
	private ServerSocket serveur;

	/**
	 * Nom d'utilisateur
	 */
	private String identifiant = "";
	/**
	 * Valeur à true si l'utilisateur est authentifié, à false sinon
	 */
	private boolean authentifie = false;
	/**
	 * Répertoire courant du serveur
	 */
	private File repertoire = new File(System.getProperty("user.dir"));// 获取工程绝对位置
	// File repertoire = new
	// File(this.getClass().getResource("").getPath()+"/../..");

	/**
	 * Adresse à laquelle le socket communique
	 */

	/**
	 * Méthode utilisée par start() au lancement du thread de FtpRequest
	 */
	@Override
	public void run() {
		System.out.println(repertoire);
		try {
			/**
			 * Méthode gérant les requêtes en les receptionnant et en lançant les commandes
			 * correspondantes. La méthode continue la reception de requêtes tant que la
			 * commande QUIT n'est pas appelée
			 * 
			 * @throws IOException
			 */

			String request = null;
			String cmd = null;
			String param = null;

			do {
				request = null;
				// Reception d'une requête sur l'entrée du socket
				// On boucle pour éviter la reception de requête null qui peut arriver
				while (request == null) {
					// 获取客户端的输入流，读取客户端发来的信息。
					BufferedReader input = new BufferedReader(new InputStreamReader(client.getInputStream()));
					request = input.readLine();
				}
				System.out.println("Request: " + request);
				String[] s = request.split(" ");
				if (s.length == 2) {
					cmd = s[0];
					param = s[1];
				} else {
					cmd = s[0];
					param = "vide";
				}
				// 对客户端发过来的命令进行处理，切成命令和参数。
				if (VerifierCommande(cmd, param)) {
					switch (cmd) {

					case "USER":
						processUSER(param);
						break;

					case "PASS":
						processPASS(param);
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
						if (VerifierAuthority())
							processPORT(param);
						break;

					case "PASV":
						if (VerifierAuthority())
							processPASV();
						break;

					case "EPRT":
						if (VerifierAuthority())
							processEPRT(param);
						break;

					case "EPSV":
						if (VerifierAuthority())
							processEPSV();
						break;

					case "LIST":
						if (VerifierAuthority())
							processLIST();
						break;

					case "RETR":
						if (VerifierAuthority())
							processRETR(param);
						break;

					case "STOR":
						if (VerifierAuthority())
							processSTOR(param);
						break;
					case "DELE":
						if (VerifierAuthority())
							processDELE(param);
						break;

					case "PWD":
						if (VerifierAuthority())
							processPWD();
						break;

					case "CWD":
						if (VerifierAuthority())
							processCWD(param);
						break;

					case "CDUP":
						if (VerifierAuthority())
							processCDUP();
						break;

					}
				} else {
					cmd = null; // évite de sortir de la boucle quand la commande
								// non valide est QUIT
				}

			} while (!"QUIT".equals(cmd));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void processDELE(String filename) throws IOException {
		// TODO Auto-generated method stub
		System.out.println(repertoire);
		File file = new File(this.repertoire + "/" + filename);
		if (file.exists()) {
			if (file.isFile()) {
				if (deleteFile(file)) {
					String msg = "supprime le fichier ";
					PrintWriter output = new PrintWriter(client.getOutputStream(), true);
					output.println(msg);
					output.flush();
				} else {
					String msg = "ne peut pas supprimer le fichier ";
					PrintWriter output = new PrintWriter(client.getOutputStream(), true);
					output.println(msg);
					output.flush();
				}
			} else if (file.isDirectory()) {
				if (deleteDir(file)) {
					String msg = "supprime ce dir" + repertoire.getPath();
					PrintWriter output = new PrintWriter(client.getOutputStream(), true);
					output.println(msg);
					output.flush();
				} else {
					String msg = "ne peut pas supprimer le dir ";
					PrintWriter output = new PrintWriter(client.getOutputStream(), true);
					output.println(msg);
					output.flush();
				}

			}

		} else {
			String msg = "425 Le fichier n'existe pas";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
		}

	}

	private boolean deleteDir(File file) throws IOException {
		File[] array = file.listFiles();
		boolean reussi = true;
		for (int i = 0; i < array.length; i++) {
			if (array[i].isFile())// 如果是文件
			{
				reussi = deleteFile(new File(array[i].getAbsolutePath()));
				if (!reussi) {
					break;
				}
			} else if (array[i].isDirectory())// 如果是文件夹
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
		if (file.delete()) {
			return true;
		} else {
			return false;
		}

	}

	private boolean deleteFile(File file) throws IOException {
		if (!file.getName().contains("java"))
			return file.delete();
		else {

			return false;
		}
	}

	public boolean VerifierCommande(String cmd, String param) throws IOException {

		if (!Serveur.commands.contains(cmd)) {
			String msg = "500 Syntax error, command unrecognized.";
			// 命令不可识别
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return false;
		}
		// 这条命令是否存在
		if (cmd.equals("QUIT") || cmd.equals("SYST") || cmd.equals("PASV") || cmd.equals("EPSV") || cmd.equals("LIST")
				|| cmd.equals("PWD") || cmd.equals("CDUP")) {
			if (!param.equals("vide")) {
				String msg = "501 Syntax error in parameters or arguments.";
				PrintWriter output = new PrintWriter(client.getOutputStream(), true);
				output.println(msg);
				output.flush();
				return false;
			} // 参数错误，不该有参数的地方出现参数

		} else {
			if (param.equals("vide")) {
				String msg = "501 Syntax error in parameters or arguments.";
				PrintWriter output = new PrintWriter(client.getOutputStream(), true);
				output.println(msg);
				output.flush();
				return false;
			}
		} // 参数错误，有参数的地方没有参数

		return true;
	}

	public boolean VerifierAuthority() throws IOException {

		if (!this.authentifie) {
			String msg = "530 Not logged in.";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return false;
		}

		else {
			return true;
		}
	}

	private void processLPRT() throws IOException {
		String msg = "Long data port.";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();

	}

	public void processUSER(String user) throws IOException {
		this.authentifie = false;
		if (Serveur.utilisateurs.containsKey(user)) {
			this.identifiant = user;
			String msg = "331 User name is okay,need password.";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();

		} else {
			String msg = "430 Invalid username or password";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();

		}

	}

	public void processPASS(String mdp) throws IOException {

		if (Serveur.utilisateurs.get(this.identifiant).equals(mdp)) {
			this.authentifie = true;
			String msg = "230 User logged in, proceed. Logged out if appropriate.";
			// 密码正确，登录成功
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();

		} else {
			String msg = "430 Invalid username or password";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();

		}

	}

	/**
	 * Méthode éxécutant la commande QUIT
	 * 
	 * @throws IOException
	 */
	public void processQUIT() throws IOException {
		String msg = "221 Service closing control connection.";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		this.client.close();

	}

	/**
	 * Méthode éxécutant la commande SYST
	 * 
	 * @throws IOException
	 */
	public void processSYST() throws IOException {
		String msg = "215 JAVA. ";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();

	}

	/**
	 * Méthode éxécutant la commande PORT
	 * 
	 * @param hote
	 *            représente l'adresse et le port
	 * @throws IOException
	 */

	public void processPORT(String hote) throws IOException {

		String[] s = hote.split(",");
		int port = Integer.parseInt(s[4]) * 256 + Integer.parseInt(s[5]);// 127,0,0,1,4,210
		this.socketDonnees = new Socket(client.getInetAddress(), port);
		// 主动式，在客户端上开一个端口，服务端去连接他
		String msg = "200 The requested action has been successfully completed.";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();

	}

	/**
	 * Méthode éxécutant la commande PASV
	 * 
	 * @throws IOException
	 */
	public void processPASV() throws IOException { // 进入 ftp -p 或者passive
		// 被动式，在服务端上开一个端口，客户端去连接他
		serveur = new ServerSocket(0);
		// 如果把参数port设为0，表示由操作系统来为服务器分配一个任意可用的端口
		int port = serveur.getLocalPort();
		// 因为端口随机生成，所以现在要重新把它获取出来
		byte[] host = client.getInetAddress().getAddress();
		String adresse = "";
		for (byte b : host) {
			adresse += b + ",";
		}
		// 前四个指服务器的地址，最后两个，将倒数第二个乘 256 再加上最后一个数字，这就是 FTP 服务器开放的用来进行数据传输的端口
		String msg = "227 Entering Passive Mode " + "(" + adresse + port / 256 + "," + port % 256 + ")";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		this.socketDonnees = serveur.accept();
	}

	/**
	 * Méthode éxécutant la commande EPRT
	 * 
	 * @param hote
	 *            représente l'adresse et le port
	 * @throws IOException
	 */
	public void processEPRT(String hote) throws IOException {
		String[] s = hote.split("[|]");
		int port = Integer.parseInt(s[3]);

		this.socketDonnees = new Socket(client.getInetAddress(), port);
		String msg = String.valueOf(Constantes.CODE_SERVICE_OK);
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
	}

	/**
	 * Méthode éxécutant la commande EPSV
	 * 
	 * @throws IOException
	 */
	public void processEPSV() throws IOException {// ftp> epsv
		serveur = new ServerSocket(0);
		int port = serveur.getLocalPort();
		String msg = "229 Entering Extended Passive Mode (|||" + port + "|)";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();

		this.socketDonnees = serveur.accept();
	}

	/**
	 * Méthode éxécutant la commande LIST
	 * 
	 * @throws IOException
	 */
	public boolean processLIST() throws IOException {
		if (this.socketDonnees == null) {
			String msg = "425	 Can't open data connection.";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
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
		String msg = "150 File status okay; about to open data connection.";
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		OutputStreamWriter outputWriterData = new OutputStreamWriter(socketDonnees.getOutputStream());
		outputWriterData.write(liste);
		outputWriterData.flush();
		this.socketDonnees.close();
		if (this.serveur != null) {
			this.serveur.close();
			this.serveur = null;
		}
		msg = "226 Closing data connection. Requested file action successful";
		output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		return true;
	}

	private static List<Fichier> getFile(String path, int deep) {
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
	 * Méthode éxécutant la commande RETR
	 * 
	 * @param filename
	 *            le nom du fichier envoyé au client
	 * @return vrai si la commande se déroule bien, faux sinon
	 * @throws IOException
	 */
	public boolean processRETR(String filename) throws IOException {
		if (socketDonnees == null) {
			String msg = "425 Can't open data connection.";
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return false;
		}

		try {
			String path = this.repertoire.toPath().toAbsolutePath().toString() + "/" + filename;

			File f = new File(path);
			if (f.exists()) {
				String msg = String.valueOf(Constantes.CODE_LIST);
				PrintWriter output = new PrintWriter(client.getOutputStream(), true);
				output.println(msg);
				output.flush();

				Path target = Paths.get(path);
				OutputStream out = this.socketDonnees.getOutputStream();

				Files.copy(target, out);

				socketDonnees.close();

				if (this.serveur != null) {
					this.serveur.close();
					this.serveur = null;
				}
			} else {
				String msg = Constantes.CODE_TRANSFERT_ECHOUE + " " + Constantes.MSG_FICHIER_INEXISTANT;
				PrintWriter output = new PrintWriter(client.getOutputStream(), true);
				output.println(msg);
				output.flush();
				return false;
			}

		} catch (Exception e) {
			String msg = Constantes.CODE_TRANSFERT_ECHOUE + " " + Constantes.MSG_TRANSFERT_ECHOUE;
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
		}

		String msg = Constantes.CODE_TRANSFERT_REUSSI + " " + Constantes.MSG_TRANSFERT_REUSSI;
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		return true;
	}

	/**
	 * Méthode éxécutant la commande STOR
	 * 
	 * @param filename
	 *            le nom du fichier copié depuis le cient
	 * @return vrai si la commande se déroule bien, faux sinon
	 * @throws IOException
	 */
	public boolean processSTOR(String filename) throws IOException {
		if (socketDonnees == null) {
			String msg = Constantes.CODE_ERREUR_DONNEES + " " + Constantes.MSG_AUCUN_SOCKET_DONNEES;
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return false;
		}

		try {
			String msg = String.valueOf(Constantes.CODE_LIST);
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
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
			String msg = Constantes.CODE_TRANSFERT_ECHOUE + " " + Constantes.MSG_TRANSFERT_ECHOUE;
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
		}

		String msg = Constantes.CODE_TRANSFERT_REUSSI + " " + Constantes.MSG_TRANSFERT_REUSSI;
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		return true;
	}

	/**
	 * Méthode éxécutant la commande PWD
	 * 
	 * @throws IOException
	 */
	public int processPWD() throws IOException {
		String msg = Constantes.CODE_257_PWD + " " + this.repertoire.getAbsolutePath();
		PrintWriter output = new PrintWriter(client.getOutputStream(), true);
		output.println(msg);
		output.flush();
		return Constantes.CODE_257_PWD;
	}

	/**
	 * Méthode éxécutant la commande CWD
	 * 
	 * @param chemin
	 *            le chemin du dossier vers lequel on souhaite naviguer
	 * @throws IOException
	 * @return le code de retour de la commande
	 */
	public String supprime_queue(String path) {
		String[] positions = path.split("/");
		path = positions[0];
		for (int i = 1; i < positions.length - 1; i++) {
			path = path + "/" + positions[i];
		}
		return path;

	}

	public int processCWD(String chemin) throws IOException {
		File path = new File(this.repertoire.getAbsolutePath() + "/" + chemin);
		if (path.exists()) {
			if (!chemin.equals("..")) {
				this.repertoire = new File(this.repertoire.getAbsolutePath() + "/" + chemin);
			} else {
				this.repertoire = new File(supprime_queue(this.repertoire.toString()));
			}
			String msg = "250" + " " + this.repertoire;
			// System.out.println(this.repertoire);
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return Constantes.CODE_FILEOP_COMPLETED;
		} else {
			String msg = Constantes.CODE_REQUEST_NO_EXECUTED + " " + Constantes.MSG_NO_SUCH_FOLDER;
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return Constantes.CODE_REQUEST_NO_EXECUTED;
		}
	}

	/**
	 * Méthode éxécutant la commande CDUP
	 * 
	 * @throws IOException
	 * @return le code de retour de la commande
	 */
	public int processCDUP() throws IOException {
		Path path;
		if (this.repertoire.getParent() != null) {
			path = Paths.get(this.repertoire.getParent());
		} else {
			path = Paths.get(this.repertoire.getPath());
		}

		if (Files.exists(path, LinkOption.NOFOLLOW_LINKS)) {
			this.repertoire = new File(path.toString());
			String msg = Constantes.CODE_FILEOP_COMPLETED + " " + this.repertoire.getAbsolutePath();
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return Constantes.CODE_FILEOP_COMPLETED;
		} else {
			String msg = Constantes.CODE_REQUEST_NO_EXECUTED + " " + Constantes.MSG_NO_SUCH_FOLDER;
			PrintWriter output = new PrintWriter(client.getOutputStream(), true);
			output.println(msg);
			output.flush();
			return Constantes.CODE_REQUEST_NO_EXECUTED;
		}
	}
}
