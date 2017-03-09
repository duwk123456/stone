package com.portalmgr.customer.entity;

import com.portalmgr.common.CommBean;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-08 8:30
 **/
public class CustomMadeVo extends CommBean {

    private  String userId;
    private  String customMadeId;
    private  String shape;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCustomMadeId() {
        return customMadeId;
    }

    public void setCustomMadeId(String customMadeId) {
        this.customMadeId = customMadeId;
    }

    public String getShape() {
        return shape;
    }

    public void setShape(String shape) {
        this.shape = shape;
    }
}

