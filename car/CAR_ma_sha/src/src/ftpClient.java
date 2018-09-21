package src;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class ftpClient {
public static void main(String[] args) throws UnknownHostException, IOException {
	Socket client=new Socket("127,0,0,1",1234);
	client.setSoTimeout(10000);  
	 //获取Socket的输出流，用来发送数据到服务端    
	BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(client.getOutputStream()));
	 PrintStream out = new PrintStream(client.getOutputStream());  
	 //获取Socket的输入流，用来接收从服务端发送过来的数据 
	 BufferedReader buf =  new BufferedReader(new InputStreamReader(client.getInputStream())); 
	
	
}
}
