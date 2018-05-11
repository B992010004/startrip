package com.startrip.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebFilter(urlPatterns = { "/*" }, 
dispatcherTypes = { DispatcherType.REQUEST }
)
public class rememberUser implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		if (request instanceof HttpServletRequest && response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			HttpSession session = req.getSession();
			Cookie[] cookies = req.getCookies();
			if (cookies != null) {
				String cookiemail = "";
				String cookiepassword = "";
				for (int i = 0; i < cookies.length; i++) {
					Cookie c = cookies[i];
					if (c.getName().equalsIgnoreCase("mail")) {
						cookiemail = c.getValue();
					} else if (c.getName().equalsIgnoreCase("password")) {
						cookiepassword = c.getValue();
					}
				}
				if (cookiepassword != "") {
					Map<String, String> remember1 = new HashMap<String, String>();
					remember1.put("cookieremember", "checked");
					remember1.put("cookiemail", cookiemail);
					remember1.put("cookiepassword", cookiepassword);
					session.setAttribute("rememberme", remember1);
					
				}
			}
		}

		chain.doFilter(request, response);

	}

	@Override
	public void destroy() {

	}

}
