package config;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.ws.rs.ext.RuntimeDelegate;
import org.apache.cxf.bus.spring.SpringBus;
import org.apache.cxf.endpoint.Server;
import org.apache.cxf.jaxrs.JAXRSServerFactoryBean;
import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import rs.*;
import Main.*;
import rs.FtpRestService;

/**
 * 
 * @author shaqianqian
 * 
 *         la classe de configuration de rest
 *
 */
@Configuration
public class AppConfig {
	/**
	 * Operations a effectuer lors de l'arret.
	 */
	@Bean(destroyMethod = "shutdown")
	public SpringBus cxf() {
		return new SpringBus();
	}

	/**
	 * Configuration au demarrage.
	 */
	@Bean
	@DependsOn("cxf")
	public Server jaxRsServer() {
		JAXRSServerFactoryBean factory = RuntimeDelegate.getInstance().createEndpoint(jaxRsApiApplication(),
				JAXRSServerFactoryBean.class);
		factory.setServiceBeans(Arrays.<Object>asList(ftpRestService()));
		factory.setAddress("/" + factory.getAddress());
		factory.setProviders(Arrays.<Object>asList(jsonProvider()));
		return factory.create();
	}

	@Bean
	public JaxRsApiApplication jaxRsApiApplication() {
		return new JaxRsApiApplication();
	}

	@Bean
	public FtpRestService ftpRestService() {
		return new FtpRestService();
	}

	@Bean
	public JacksonJsonProvider jsonProvider() {
		return new JacksonJsonProvider();
	}

}
