package com.portalmgr.customer.entity;

import com.portalmgr.product.entity.BaseInfo;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-07 14:32
 **/
public class CustomMade extends BaseInfo {

    private  String createUserId;
    private  String customMadeId;
    private  String userName;
    private  String  createTime;
    private  String  modifyTime;

    public String getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(String modifyTime) {
        this.modifyTime = modifyTime;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId;
    }

    public String getCustomMadeId() {
        return customMadeId;
    }

    public void setCustomMadeId(String customMadeId) {
        this.customMadeId = customMadeId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
