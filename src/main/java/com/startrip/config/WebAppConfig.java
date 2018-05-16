package com.startrip.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Configuration
@EnableWebMvc
@ComponentScan("com.startrip")
public class WebAppConfig extends WebMvcConfigurerAdapter {
	
	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		
		return resolver;
	}

	//message.properties
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
		resource.setBasename("message");
		return resource;
	}

	//天哪 前端好難喔!
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		
		registry.addResourceHandler("assets/**").addResourceLocations("/WEB-INF/views/assets/");
		//------------------------------------------- 
//		registry.addResourceHandler("assets/css/**").addResourceLocations("/WEB-INF/views/assets/css/");
//		registry.addResourceHandler("assets/images/**").addResourceLocations("/WEB-INF/views/assets/images/");
//		registry.addResourceHandler("assets/fonts/**").addResourceLocations("/WEB-INF/views/assets/fonts/");
//		registry.addResourceHandler("assets/js/**").addResourceLocations("/WEB-INF/views/assets/js/");
//		registry.addResourceHandler("assets/scss/**").addResourceLocations("/WEB-INF/views/assets/scss/");
		
		//-------------------------------------------
//		registry.addResourceHandler("assets/Travel/js/**").addResourceLocations("/WEB-INF/views/assets/Travel/js/");
//		registry.addResourceHandler("assets/Travel/css/**").addResourceLocations("/WEB-INF/views/assets/Travel/css/");
//		registry.addResourceHandler("assets/Travel/images/**").addResourceLocations("/WEB-INF/views/assets/Travel/images/");
		//-------------------------------------------------
	}

	//使用Jakarta Commons FileUpload
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}
	
		
	@Bean
	public MappingJackson2JsonView jsonView() {
		MappingJackson2JsonView view = new MappingJackson2JsonView();
		view.setPrettyPrint(true);
		return view;
	}

//	@Bean
//	public MarshallingView xmlView() {
//		Jaxb2Marshaller marshaller = new Jaxb2Marshaller();
//		marshaller.setClassesToBeBound(BookBean.class);
//		MarshallingView xmlview = new MarshallingView(marshaller);
//		return xmlview;
//	}

//	@Bean
//	public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
//		ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
//		resolver.setContentNegotiationManager(manager);
//		ArrayList<View> views = new ArrayList<>();
//		views.add(jsonView());
//		resolver.setDefaultViews(views);
//		views.add(xmlView());
//		return resolver;
//	}
}
