package Main;

import org.apache.cxf.transport.servlet.CXFServlet;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import config.AppConfig;

/**
 * La classe principale de l'application. Demarre un serveur sur le port 8080.
 * Utilise le prefixe /rest/ pour les URLs.
 * 
 * @author shaqianqian
 *
 */
public class Starter {
   
	public static void main(final String[] args) throws Exception {

		Server server = new Server(8080);
		final ServletContextHandler context = new ServletContextHandler();
		final ServletHolder servletHolder = new ServletHolder(new CXFServlet());
		context.setContextPath("/");
		context.addServlet(servletHolder, "/rest/*");
		context.addEventListener(new ContextLoaderListener());
		context.setInitParameter("contextClass", AnnotationConfigWebApplicationContext.class.getName());
		context.setInitParameter("contextConfigLocation", AppConfig.class.getName());
		server.setHandler(context);
		server.start();
		server.join();
	}
}
