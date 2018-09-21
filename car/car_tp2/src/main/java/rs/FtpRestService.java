package rs;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;
import Main.Constants;

@Path("")
public class FtpRestService {

	private FTPClient client;
	private String host;
	private int port;
	private boolean authentified = false;

	public FtpRestService() {
		this.host = Constants.host;
		this.port = Constants.port;
		FTPClientConfig conf = new FTPClientConfig(FTPClientConfig.SYST_UNIX);
		conf.setServerLanguageCode(FTPClientConfig.SYST_UNIX);
		client = new FTPClient();
		client.configure(conf);
	}

	public boolean isAuthentified() {
		return authentified;
	}

	@GET
	@Produces("text/html; charset=UTF-8")
	@Path("")
	public String login() {
		return Constants.connextion_html;
	}

	@POST
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces("text/html; charset=UTF-8")
	@Path("/connexion")
	public String connexion(@FormParam("username") String username, @FormParam("password") String password)
			throws IOException {
			client.connect(host, port);
			this.authentified = client.login(username, password);
			if (isAuthentified()) {
				return Constants.login_in_html;			
			}
			else {client.disconnect();
			return Constants.login_echou_html;}
		} 

	@GET
	@Produces("text/html")
	@Path("/list{folder_path : (/folder_path)?}")
	public String list(@PathParam("folder_path") String folderPath) {
		FTPFile[] ftpFiles = null;

		String html = "";

		if (isAuthentified()) {
			try {
				if (folderPath != null) {
					ftpFiles = client.listFiles(folderPath);
					folderPath += "/";
				} else {
					ftpFiles = client.listFiles("");
					folderPath = "./";
				}

			} catch (final Exception e) {
				e.printStackTrace();
			}

			html += "<table border=\"1\" align=\"center\">   "
					+ "<caption>les fichiers dans ftp serveur</caption>"
					+ " <tr>\n" + 
					"    <th>Le nom de fichier ou repertoire</th>"
					+   "<th>Type</th> \n" + 
					"    <th>Delete</th> "
					+ "  <th>Taille</th> \n" + 
					"  </tr>";

			for (FTPFile file : ftpFiles) {
				String cmd;
				String filename = file.getName();
				if (file.isDirectory()) {
					cmd = "/list/";
					filename += "/";
				} else {
					cmd = "/get/";
				}

				html += "<tr><td align=\"center\">";
				html += "<a href='" + Constants.url + cmd + folderPath + file.getName() + "'>" + filename + "</a> </td>"; 

				if (!file.isDirectory())
					{html += "<td align=\"center\"><p>Fichier</p></td>"
							+ "<td align=\"center\"><a href='" + Constants.url + "/delete/" + folderPath + file.getName() + "'>" + "Delete"
							+ "</a> </td>";
					html += "<td align=\"center\"> <p > "+file.getSize()/1024+"kb</p> </td>";}
				else {html +="<td align=\"center\"><p>Directory</p></td>"
						+ "<td align=\"center\"><p><font color='red'>Can't</font></p></td>"
						+ "<td align=\"center\" ><p><font color='red'>Can't</font></p></td>";}
				html += "</tr>";
			}
			html += " </table >";
			html += "<div>";
			html += "<form method='POST' action='" + Constants.url + "/upload' enctype='multipart/form-data'>\n";
			html += "Fichier<input type='file' id='file' name='file' onchange=\"myFunction()\" ><br>";
			html += "<input type='hidden' name='path' value='" + folderPath + "'>";
			html += "Modifier le nom de fichier <input type='text' name='name' id=\"aim\" /><br>";
			//html += "<button type='button'  onclick=\"myFunction()\"> Charge le nom de fichier</button><br>";
			html +=" <script>\n" 
					+" function myFunction() {  "
				    + "var x = document.getElementById('file').value; "
					+ "var filename=x.substr(x.lastIndexOf('\\\\')+1);  "
					//+ "alert(filename);"
					+ " document.getElementById('aim').setAttribute('value',filename);" 			
					+"    }" + 
					"</script>";
			html += "<input type='submit' value='Envoyer'>\n";
			html += "</form> ";
			html += "</div>";
		}

		return html;
	}

	@GET
	@Produces("application/octet-stream")
	@Path("/get{path : (/path)?}")
	public File get(@PathParam("path") String path) {
		File file = null;

		if (isAuthentified()) {
			try {
				String[] paths = path.split("/");
				String filename = paths[paths.length - 1];

				file = new File(filename);
				FileOutputStream output = new FileOutputStream(file);

				client.retrieveFile(path, output);
				output.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return file;
	}

	
	@POST
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces("text/html; charset=UTF-8")
	@Path("/upload")
	public String upload(@Multipart("file") InputStream fichier, @Multipart("name") String name,
			@Multipart("path") String path) throws IOException {
		String html = "";

		if (isAuthentified()) {
			client.storeFile(path + name, fichier);
			html = "<h3>Fichier importé</h3>";
		}

		return html;
	}

	@GET
	@Produces("text/html; charset=UTF-8")
	@Path("/delete{filepath : (/filepath)?}")
	public String deleteFile(@PathParam("filepath") String filepath) {
		String html = "";

		if (isAuthentified()) {
			try {
				client.deleteFile(filepath);
			} catch (IOException e) {
				e.printStackTrace();
			}

			html = "<h3>Fichier supprimé</h3>";
		}

		return html;
	}

	
}