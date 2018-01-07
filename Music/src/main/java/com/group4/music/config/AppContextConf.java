package com.group4.music.config;

/**
 *
 * @author Will
 */

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import com.group4.music.dao.UserDAO;

@Configuration
@ComponentScan("com.group4.music.*")
@EnableTransactionManagement
@PropertySource("classpath:datasource.properties")

public class AppContextConf {
    
    @Autowired
    private Environment e;
    
    @Autowired
    private UserDAO userDAO;
    
    @Bean
    public ResourceBundleMessageSource messageSource() {
        ResourceBundleMessageSource ms = new ResourceBundleMessageSource();
        ms.setBasenames(new String[] {"messages/validator"});
        return ms;
    }
    
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
 
        ds.setDriverClassName(e.getProperty("ds.database-driver"));
        ds.setUrl(e.getProperty("ds.url"));
        ds.setUsername(e.getProperty("ds.username"));
        ds.setPassword(e.getProperty("ds.password"));
 
        System.out.println("## getDataSource: " + ds);
 
        return ds;
  }
    
    @Bean(name = "viewResolver")
    public InternalResourceViewResolver getViewResolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver();
        vr.setPrefix("WEB-INF/jsp/");
        vr.setSuffix(".jsp");
        return vr;
    }
    
    @Autowired
    @Bean(name = "transactionManager")
    public DataSourceTransactionManager getTransactionManager(DataSource ds) {
        DataSourceTransactionManager ts = new DataSourceTransactionManager(ds);
        
        return ts;
    }
    
}
