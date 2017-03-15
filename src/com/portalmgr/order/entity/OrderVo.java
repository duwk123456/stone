package com.portalmgr.order.entity;

import com.portalmgr.common.CommBean;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 16:05
 **/
public class OrderVo extends CommBean{

    private String beginTime;
    private String endTime;

    private String type;
    private String userId;
    private String orderId;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
}
