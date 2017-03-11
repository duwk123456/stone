package com.portalmgr.sys.controller;

import com.portalmgr.common.BaseController;
import com.portalmgr.common.ResultEntity;
import com.portalmgr.sys.entity.DictDef;
import com.portalmgr.sys.entity.UserInfo;
import com.portalmgr.sys.service.UserService;
import com.portalmgr.sys.vo.UserInfoVo;
import com.portalmgr.util.DictDefUtil;
import com.portalmgr.util.GsonTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * 
 * @author duwk
 * @date： 日期：2016-11-17 时间：下午4:35:39
 */

@Controller
@RequestMapping("userController")
public class UserController extends BaseController {
	private static Logger log = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;


	/**
	 *  查询得到用户数据 传回页面
	 * @param request
	 * @param response
	 * @param userInfoVo   userId
	 */
	@RequestMapping(value="/editUser")
	public void  editUser(HttpServletRequest request,HttpServletResponse response,UserInfoVo userInfoVo){
	    ResultEntity resultEntity = new ResultEntity();
	    try{
	    	UserInfo user=userService.findUser(userInfoVo);
			resultEntity.setMsg("查询成功");
			resultEntity.setSuccess(true);
			resultEntity.setData(user);

	    }catch(Exception e){
	    	e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
	    }
		GsonTools.writeJsonObj(response, resultEntity);
	}



	@RequestMapping(value="/updatePwd")
	public void  updatePwd(HttpServletRequest request,HttpServletResponse response,UserInfoVo userInfoVo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			UserInfo user=userService.findUser(userInfoVo);
			if(user.getPassword().equals(userInfoVo.getPassword())){
				UserInfo param = new UserInfo();
				param.setUserId(user.getUserId());
				param.setPassword(userInfoVo.getNewPwd());
				userService.updateUser(param);
				resultEntity.setMsg("密码更新成功");
				resultEntity.setSuccess(true);

			}else{
				resultEntity.setMsg("旧密码错误，请重新输入");
				resultEntity.setSuccess(false);
			}

		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}

	/**
	 *
	 * @param request
	 * @param response
	 * @param userInfoVo   userId
	 */
	@RequestMapping(value="/getUserList")
	public void  getUserList(HttpServletRequest request,HttpServletResponse response,UserInfoVo userInfoVo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			userInfoVo.setStartRow();
			int total =userService.getUserCnt(userInfoVo);
			List<UserInfo> userList=userService.getUserList(userInfoVo);
			resultEntity.setProperty("total",total);
			resultEntity.setMsg("查询成功");
			resultEntity.setSuccess(true);
			resultEntity.setData(userList);

		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}

	@RequestMapping(value="/addUser")
	public void  addUser(HttpServletRequest request,HttpServletResponse response,UserInfo userInfo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			UserInfoVo userInfoVo = new UserInfoVo();
			userInfoVo.setLoginName(userInfo.getLoginName());
			UserInfo user=userService.findUser(userInfoVo);
			if(user==null){
				userService.addUser(userInfo);
				resultEntity.setMsg("添加成功");
				resultEntity.setSuccess(true);
			}else{
				resultEntity.setMsg("登录名已存在");
				resultEntity.setSuccess(false);
			}

		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}


	/**
	 *
	 * @param request
	 * @param response
	 * @param userInfo userName password userId job salary addr（客户才有的属性）
	 */
	@RequestMapping(value="/updateUser")
	public void  updateUser(HttpServletRequest request,HttpServletResponse response,UserInfo userInfo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			userService.updateUser(userInfo);
			resultEntity.setMsg("修改成功");
			resultEntity.setSuccess(true);
		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}

	@RequestMapping(value="/getJob")
	public void getJob(HttpServletRequest request,HttpServletResponse response){

		ResultEntity resultEntity = new ResultEntity();
		try{
			List<DictDef> dictDefs = DictDefUtil.getDictDefByDictTypeDictClassFromMap("100","1001","");
			resultEntity.setData(dictDefs);
			resultEntity.setSuccess(true);
		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}



}
