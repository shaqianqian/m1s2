package Car_tp1.Ftp;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Serveur FTP
 * 
 * @author shaqianqian
 */
public class Serveur {
	/**
	 * Cette methode ouvre le port ftp serveur, ecoute la demande du client, et
	 * retourne un objet de Socket pour communiquer avec le client. Pour chaque
	 * socket, il va lancer un thread pour traiter les commandes de ce client.
	 * 
	 * @param server
	 *            Objet de type ServerSocket qui peut ecouter la connexion de client
	 */
	public void ecouter(ServerSocket server) {
		while (true) {
			// 循环监听等待客户端的连接
			Socket listener_client_cmd = null;
			try {
				listener_client_cmd = server.accept();
			} catch (IOException e) {
				e.printStackTrace();
			}
			// 捕捉到一个来自Client端的请求,返回一个用于与该Client通信的Socket对象,
			// 此后Server程序只要向这个Socket对象读写数据，就可以实现向远端的Client读写数据,
			BufferedWriter bw;
			try {
				bw = new BufferedWriter(new OutputStreamWriter(listener_client_cmd.getOutputStream()));
				bw.write("220" + " " + "Connexion with the server successfully" + "\n");
				// 输出连接成功的信息到客户端
				bw.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println("Connexion with the client successfully");
			// 输出连接成功的信息到服务端的控制台
			Thread t = new Thread(new ServeurThread(listener_client_cmd));
			// 为每个连接开启一个线程
			t.start();

		}
	}

	/**
	 * @param args
	 *            Unused..
	 */
	public static void main(String[] args) {

		ServerSocket server = null;
		try {
			server = new ServerSocket(1234);
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("We open the serveur. Now we wait for your connexions...");
		new Serveur().ecouter(server);

	}

}