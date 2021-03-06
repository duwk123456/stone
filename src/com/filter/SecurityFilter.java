package com.filter;


import com.portalmgr.common.ClientConstantPool;
import com.portalmgr.common.SingleLoginDelegate;
import com.portalmgr.common.UserSessionInfo;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class SecurityFilter implements Filter {

	private String redirectPage;// 重定向页面
	private List<String> exemptions = new ArrayList<String>();
	private static Logger logger = Logger.getLogger(SecurityFilter.class);
	public void destroy() {
		System.out.println("123");
	}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
		HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
		String currentURL = httpRequest.getRequestURI(); // 取得根目录所对应的绝对路径:
	
	
		// 登录页
		if (currentURL.indexOf(httpRequest.getContextPath() + redirectPage) > -1) {
			filterChain.doFilter(servletRequest, servletResponse);
			return;
		}
		// 错误页面
		if (currentURL.indexOf(httpRequest.getContextPath() + "/errors/") > -1) {
			filterChain.doFilter(servletRequest, servletResponse);
			return;
		}
		
		//豁免页面
		System.out.println("当前访问路径"+currentURL );
		for( String estr : exemptions ) {
			if( currentURL.indexOf(httpRequest.getContextPath()+estr) > -1 ) {
				System.out.println("当前链接进行豁免");
				filterChain.doFilter(servletRequest, servletResponse);
				return;
			}//if
		}//for
		
		
		
		HttpSession session = httpRequest.getSession();
		// 操作员未登录
		UserSessionInfo userSessionInfo = (UserSessionInfo) session.getAttribute(ClientConstantPool.SESSION_KEY);
		if (userSessionInfo == null ) {
			httpResponse.sendRedirect(httpRequest.getContextPath() + redirectPage);
			return;	
		}
		
		 //web 模块的去除登录
		if (!SingleLoginDelegate.validSessionId(1l, session.getId())) {
			session.removeAttribute(ClientConstantPool.SESSION_KEY);
			httpResponse.sendRedirect(httpRequest.getContextPath() + redirectPage);
			return;
		}
		filterChain.doFilter(servletRequest, servletResponse);
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		redirectPage = filterConfig.getInitParameter("redirectPage");// 得到重定向到的页面
		//装载免检查是否登录的页面
		String exemptionStr = filterConfig.getInitParameter("exemptions");
		if( !StringUtils.isEmpty(exemptionStr) ) {
			for( String estr : exemptionStr.split(",") ) {
				if( StringUtils.isNotEmpty(estr) ) {
					estr = estr.replaceAll("\\s*", "");
				}//if
				exemptions.add(estr);
			}//for
		}//if
	}
	
	
		
	

}
