package src;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Serveur{

	public static  Map<String, String> utilisateurs = new HashMap<String, String>();
	//limite the people who can operate the files
    public static void addUsers() {
    	        utilisateurs.put("a", "a");
		    utilisateurs.put("b", "b");
		    utilisateurs.put("admin", "admin");	
		   
    }
    public static List<String> commands = new ArrayList<String>();

	public static void initCommands() {

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

	}
	public static void main(String[] args)  throws IOException {
		    addUsers();	
		    initCommands();
			ServerSocket server=new ServerSocket(1234);
			System.out.println("We open the serveur. Now we wait for your connexions...");
			while (true) {
				//循环监听等待客户端的连接
				Socket client=server.accept();
				//获取Socket的输出流，用来向客户端发送数据
				BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(client.getOutputStream()));
			    InetAddress address = InetAddress.getLocalHost();
		        String ip = address.getHostAddress();
				bw.write("220"+ " " +"Connexion with the server "+ip+" successfully"+"\n");
				//输出连接成功的信息到客户端
				bw.flush();		
				System.out.println("Connexion with the client "+ip+" successfully");//输出连接成功的信息到服务端的控制台
				new Thread(new ServeurThread(client)).start();  //为每个客户端连接开启一个线程   
			}
			
			
			
		} 
		
	
}