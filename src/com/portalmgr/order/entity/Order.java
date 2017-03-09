package com.portalmgr.order.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 15:55
 **/
public class Order implements Serializable {

    private int orderId;
    private String type;
    private String createUserId;
    private String userName;
    private String saleType;
    private String saleTypeStr;
    private String createTime;

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();

    public String getSaleType() {
        return saleType;
    }

    public void setSaleType(String saleType) {
        this.saleType = saleType;
    }

    public String getSaleTypeStr() {
        return saleTypeStr;
    }

    public void setSaleTypeStr(String saleTypeStr) {
        this.saleTypeStr = saleTypeStr;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
