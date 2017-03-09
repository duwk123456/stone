package com.portalmgr.sys.controller;

import com.portalmgr.common.*;
import com.portalmgr.sys.entity.UserInfo;
import com.portalmgr.sys.service.UserService;
import com.portalmgr.sys.vo.UserInfoVo;
import com.portalmgr.util.GsonTools;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

;import java.io.IOException;


/**
 * 
 * @author duwk
 * @date： 日期：2016-11-17 时间：下午4:35:39
 */

@Controller
@RequestMapping("/sys")
public class SysController extends BaseController {
	private static Logger log = Logger.getLogger(SysController.class);
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/login")
	public void  login(HttpServletRequest request,HttpServletResponse response,UserInfoVo userInfoVo) throws IOException {
		ResultEntity resultEntity= new ResultEntity();

		try {

			if(StringUtils.isNotEmpty(userInfoVo.getLoginName())&&StringUtils.isNotEmpty(userInfoVo.getPassword())) {

				UserInfo userInfo = userService.loginSys(userInfoVo);
				if (userInfo == null) {
					resultEntity.setSuccess(false);
					resultEntity.setMsg("用户号或密码不正确，请重新输入");
				}else if (!userInfo.getPassword().equals(userInfoVo.getPassword())) {
					resultEntity.setSuccess(false);
					resultEntity.setMsg("用户号或密码不正确，请重新输入");
				}else {

					UserSessionInfo userSessionInfo = new UserSessionInfo();
					userSessionInfo.setUserId(userInfo.getUserId());
					userSessionInfo.setUserName(userInfo.getUserName());
					userSessionInfo.setUserType(userInfo.getUserType());
					resultEntity.setSuccess(true);
					resultEntity.setMsg("登陆成功");
					resultEntity.setData(userSessionInfo);
					request.setAttribute(ClientConstantPool.SESSION_KEY, userSessionInfo);
				}
			}else{

				log.info("参数异常");
				resultEntity.setSuccess(false);
				resultEntity.setMsg("服务异常");
			}
		}catch (Exception e){
		    e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}


	@RequestMapping(value="/logOut")
	public void  logOut(HttpServletRequest request,HttpServletResponse response,UserInfoVo userInfoVo){

		ResultEntity resultEntity= new ResultEntity();
		CommonContext.removeSessionValue(ClientConstantPool.SESSION_KEY,request);
		resultEntity.setSuccess(true);
		GsonTools.writeJsonObj(response, resultEntity);
		//userService.loginSys(userInfoVo);
		//return "";

	}
	

}
