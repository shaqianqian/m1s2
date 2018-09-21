package Main;


public class Constants {

	public static String host = "192.168.1.63";
	public static int port = 5678;
	public final static  String url = "http://localhost:8080/rest/api";
    public static String connextion_html="<div    style=\"     width: 390px;\n" + 

    		"             height: 250px;\n" + 
    		"             margin: 50px auto;\n" + 
    		"             border: 1px solid #8A8989;\n" + 
    		"             position: relative;\">\n" + 
    		"    <div style=\" width: 100%;\n" + 
    		"            height: 50px;\n" + 
    		"            line-height: 50px;\n" + 
    		"            background-color: rgb(247,247,247);\n" + 
    		"            background-repeat: no-repeat;\">\n" + 
    		"\n" + 
    		"        <h3 align=\"center\">Connect with your server FTP</h3>\n" + 
    		"    </div>\n" + 
    		"    <div style=\" width: 350px;\n" + 
    		"            height: 400px;\n" + 
    		"            margin: 0 auto;\">\n" + 
    		"        <form method='POST' action='" + url + "/connexion' enctype='multipart/form-data'>\n" + 
    		"            <input type=\"text\"  name='username'style=\"   display: block;\n" + 
    		"            width: 350px;\n" + 
    		"            height: 40px;\n" + 
    		"            margin: 10px auto;\">\n" + 
    		"            <input type=\"password\"  name='password'style=\" display: block;\n" + 
    		"            width: 350px;\n" + 
    		"            height: 40px;\n" + 
    		"            margin: 10px auto;\">\n" + 
    		"            <input type=\"submit\" value=\"log in\"  style=\" display: block;\n" + 
    		"            width: 350px;\n" + 
    		"            height: 40px;\n" + 
    		"            margin: 10px auto;\n" + 
    		"            background: #2066C5;\n" + 
    		"            color: white;\n" + 
    		"            font-size: 18px;\n" + 
    		"            font-weight: bold;\n" + 
    		"            height: 50px;\n" + 
    		"            border-radius: 4px;\">\n" + 
    		"        </form>\n" + 
    		"    </div>\n" + 
    		"</div>";
    public static String login_in_html="<h3 align=\"center\" style=\"color:#4CAF50; "
			+ "-webkit-text-stroke: 1px black; width:100%;text-align:center"
			+ " -webkit-text-stroke: 1px black;\">You have connect with the FTP server successfully</h3>"
			+ "</br> <div  style=\" text-align: center;>\""
			+ "<!-- 账号密码登录 -->\n" + "<form method=\"get\" action='" + Constants.url + "/list'>\n"
			+ "    <button type=\"submit\" "
			+ "  style=\" background-color: #4CAF50;\n" + 
			"    border: none;\n" + 
			"    color: white;\n" + 
			"    padding: 15px 32px;\n" + 
			"    text-align: center;\n" + 
			"    text-decoration: none;\n" + 
			"    display: inline-block;\n" + 
			"    font-size: 16px;\n" + 
			"    margin: 4px 2px;\n" + 
			"    cursor: pointer;\">Enter the FTP server</button>\n" + "</form> </div>\n";
    public static String login_echou_html="<h3 align=\"center\" style=\"color:#4CAF50; "
    		+ "-webkit-text-stroke: 1px black; width:100%;text-align:center;"
			+ " -webkit-text-stroke: 1px black;\">Your username or password isn't right</h3>";
}
