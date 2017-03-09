package com.portalmgr.sys.vo;

import com.portalmgr.common.CommBean;

/**用户参数实体
 * @author duwk
 * @date： 日期：2016-11-18 时间：上午8:55:40
 */
public class UserInfoVo  extends CommBean{

    private String loginName;
    private String password;
    private String userId;
    private String userName;
    private String userType;//区分是店员还是客户
    private String addr;//客户拥有的地址属性
    private String tel;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
