package com.portalmgr.common;
import java.util.HashMap;
import java.util.Map;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;



public class ResultEntity {

	private static Log logger = LogFactory.getLog(ResultEntity.class);
	private   Map<String,Object>  results;
	public static final String MSG = "msg";
	public static final String SUCCESS = "success";
	public static final String DATA = "data";
	public static final String CODE = "code";

	
	

	public ResultEntity(){
		this.results = new  HashMap<String,Object>();
	}
	
	public Map<String,Object> getResult(){
		return this.results;
	}
	
	public void setResult(Map<String,Object> set){
		this.results=set;
	}
	
	
	
	/**
	 * @return the code
	 */
	public Integer getCode() {
		 return (Integer) results.get(CODE);
	}

	public boolean getSuccess(){
		return (Boolean) results.get(SUCCESS);
	}
	
	public String getMessage(){
		return (String) results.get(MSG);
	}
	

	
	/**
	 * 根据"  自定义添加属"
	 * @param key 属"标识
	 * @param value 
	 */
	public void setProperty(String key, Object value) {
		try {
			this.results.put(key, value);
		} catch (RuntimeException e) {
			logger.error("-->>设置key为："+key+"值为"+value+" Json时出错：",e);
		}
	}
	
	
	/**
	 * 设置成功标志 "  用于程序执行是否正常
	 * @param success 成功标识
	 */
	public void setCode(Integer code) {
		setProperty(CODE, code);
	}
	
	
	
	/**
	 * 设置成功标志 "  用于程序执行是否正常
	 * @param success 成功标识
	 */
	public void setSuccess(boolean success) {
		setProperty(SUCCESS, success);
	}
	
	/**
	 * 设置消息
	 * @param msg 消息"
	 */
	public void setMsg(String msg) {
		setProperty(MSG, msg);
	}
	

	 
	/**
	 * 添加对象
	 * @param obj 对象
	 */
	public void setData(Object obj) {
		setProperty(DATA, obj);
	}
 


	

	
}
