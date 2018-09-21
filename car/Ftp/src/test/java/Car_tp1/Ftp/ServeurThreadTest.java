package Car_tp1.Ftp;

import static org.junit.Assert.*;

import java.io.File;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class ServeurThreadTest {
	ServeurThread ftp;
	ServerSocket serverSocket;
	Socket socket;

	@Before
	public void init() throws IOException {
		serverSocket = new ServerSocket(1234);
		socket = new Socket("127.0.0.1", 1234);
		ftp = new ServeurThread(socket);
		ftp.addUsers();
	}

	@After
	public void fin() throws IOException {
		this.socket.close();
		this.serverSocket.close();
		this.ftp.interrupt();
	}

	@Test
	public void ConnextionReussiTest() throws IOException {
		assertNotNull(ftp);
		// this.socket.close();
	}

	@Test
	public void CreerServeurTest() throws IOException {
		Serveur s = new Serveur();
		assertNotNull(s);
	}

	@Test
	public void VerifieUsersReussiTest() throws IOException {
		assertTrue(ftp.utilisateurs.get("a").equals("a"));
	}

	@Test
	public void VerifieUsersEchoueTest() throws IOException {
		assertFalse(ftp.utilisateurs.containsKey("c"));
	}

	@Test
	public void CommandeParametreEstPasVideTest() throws IOException {
		assertTrue(this.ftp.VerifierCommande("STOR", "a.txt"));
		assertFalse(this.ftp.VerifierCommande("USER", "vide"));
	}

	@Test
	public void CommandeNexistePasTest() throws IOException {
		assertFalse(this.ftp.VerifierCommande("TOTO", "vide"));
	}

	@Test
	public void CommandeParametreEstVideTest() throws IOException {
		assertTrue(this.ftp.VerifierCommande("QUIT", "vide"));
		assertFalse(this.ftp.VerifierCommande("QUIT", "toto"));
	}

	@Test
	public void processUSERExcisteTest() throws IOException {
		assertTrue(this.ftp.processUSER("a"));
	}

	@Test
	public void processUSERExcistePasTest() throws IOException {
		assertFalse(this.ftp.processUSER("c"));
	}

	@Test
	public void processPASSCorrectTest() throws IOException {
		this.ftp.processUSER("a");
		assertTrue(this.ftp.processPASS("a"));
	}

	@Test
	public void processPASSIncorrectTest() throws IOException {
		this.ftp.processUSER("a");
		assertFalse(this.ftp.processPASS("c"));
	}

	@Test
	public void processQUITTest() throws IOException {
		assertEquals(this.ftp.processQUIT(), "quit");
	}

	@Test
	public void processSYSYTest() throws IOException {
		assertEquals(this.ftp.processSYST(), "syst");
	}

	@Test
	public void processLPRTTest() throws IOException {

		assertEquals(this.ftp.processLPRT(), "lprt");
	}

	@Test
	public void processPORTTest() throws IOException {
		String host = socket.getInetAddress().getHostAddress();
		int port = socket.getPort();
		int n1 = port / 256;
		int n2 = port % 256;
		String hostCommand = host.replace('.', ',');
		String portCommand = hostCommand + "," + n1 + "," + n2;
		assertEquals(this.ftp.processPORT(portCommand), "port");
	}

	@Test
	public void processEPRTTest() throws IOException {
		int port = socket.getPort();
		String portCommand = "|||" + port + "|";
		assertEquals(this.ftp.processEPRT(portCommand), "eprt");
	}
	@Test
	public void processLISTTest() throws IOException {
		String host = socket.getInetAddress().getHostAddress();
		int port = socket.getPort();
		int n1 = port / 256;
		int n2 = port % 256;
		String hostCommand = host.replace('.', ',');
		String portCommand = hostCommand + "," + n1 + "," + n2;
		this.ftp.processPORT(portCommand);
		assertTrue(this.ftp.processLIST());
	}
	@Test
	public void processRETRTest() throws IOException {
		String host = socket.getInetAddress().getHostAddress();
		int port = socket.getPort();
		int n1 = port / 256;
		int n2 = port % 256;
		String hostCommand = host.replace('.', ',');
		String portCommand = hostCommand + "," + n1 + "," + n2;
		this.ftp.processPORT(portCommand);
		assertEquals(this.ftp.processRETR("a.txt"), "retr");  
	
	}
	@Test
	public void processPWDTest() throws IOException {
		assertEquals(this.ftp.processPWD(), System.getProperty("user.dir"));  
	
	}
	@Test
	public void processDeleteFileTest() throws IOException {
		File f=new File(System.getProperty("user.dir")+"/a.java");
		f.createNewFile();
		assertFalse(this.ftp.deleteFile(f));
		File f2=new File(System.getProperty("user.dir")+"/a.txt");
		f2.createNewFile();
		assertTrue(this.ftp.deleteFile(f2));
		File f3=new File("toto.txt");
		assertFalse(this.ftp.deleteFile(f3));
		f.delete();
	}

	@Test
	public void getFileTest() throws IOException {
		assertNotNull(this.ftp.getFile(System.getProperty("user.dir").toString(), 0));
		
	}
	@Test
	public void processDeleteDirTest() throws IOException {
		File dir=new File(System.getProperty("user.dir")+"/toto");
		dir.mkdirs();
		File f=new File(System.getProperty("user.dir")+"/toto/a.java");
		f.createNewFile();
		assertFalse(this.ftp.deleteDir(dir));
		f.delete();
		f=new File(System.getProperty("user.dir")+"/toto/a.txt");
		f.createNewFile();
		assertTrue(this.ftp.deleteDir(dir));	
		
	}
	@Test
	public void supprime_queueTest() throws IOException {
		assertEquals(ftp.supprime_queue("/a/b/c/d"), "/a/b/c"); 	
		
	}

	@Test
	public void cwdTest() throws IOException {
		File dir=new File(System.getProperty("user.dir")+"/toto");
		dir.mkdirs();
		assertEquals(ftp.processCWD("toto"), "cwd"); 	
		dir.delete();
		assertEquals(ftp.processCWD("tata"), "Repertoire_inexistant"); 
	}
	@Test
	public void DeleTest() throws IOException {
		File f=new File(System.getProperty("user.dir")+"/toto.txt");
		f.createNewFile();	
		assertTrue(ftp.processDELE("toto.txt"));	
		assertFalse(ftp.processDELE("tata.txt"));	
		File f1=new File(System.getProperty("user.dir")+"/toto.java");
		f1.createNewFile();	
		assertFalse(ftp.processDELE("toto.java"));	
		f1.delete();
		File dir=new File(System.getProperty("user.dir")+"/toto");
		dir.mkdirs();
		assertFalse(ftp.processDELE("toto"));	
		dir.delete();
	}
	@Test
	public void DeleDirTest() throws IOException {
		File dir=new File(System.getProperty("user.dir")+"/toto");
		dir.mkdirs();
		assertTrue(ftp.processRMD("toto"));	
		dir=new File(System.getProperty("user.dir")+"/toto");
		dir.mkdirs();
		File f=new File(System.getProperty("user.dir")+"/toto/toto.java");
		f.createNewFile();
		assertFalse(ftp.processRMD("toto"));
		f.delete();
		dir.delete();
	}

	
}
