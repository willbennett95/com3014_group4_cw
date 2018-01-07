package com.group4.music.config;

/**
 *
 * @author Will
 */

import java.util.Arrays;
import java.util.List;
import java.nio.charset.Charset;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc

public class WebMVCConf extends WebMvcConfigurerAdapter {
    
    private static final Charset UTF8 = Charset.forName("UTF-8");
    
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> mc) {
        StringHttpMessageConverter sc = new StringHttpMessageConverter();
        sc.setSupportedMediaTypes(Arrays.asList(new MediaType("text", "plain", UTF8)));
        mc.add(sc);
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/css/").setCachePeriod(31556926);
        registry.addResourceHandler("/img/**").addResourceLocations("/img/").setCachePeriod(31556926);
        registry.addResourceHandler("/js/**").addResourceLocations("/js/").setCachePeriod(31556926);
    }
    
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer hc) {
        hc.enable();
    }
    
}
