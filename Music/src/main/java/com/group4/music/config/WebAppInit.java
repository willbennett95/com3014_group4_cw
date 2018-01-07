package com.group4.music.config;

/**
 *
 * @author Will
 */
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebAppInit implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext ac = new AnnotationConfigWebApplicationContext();
        ac.register(AppContextConf.class);
        
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("SpringDispatcher", new DispatcherServlet(ac));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
    }
    
}
