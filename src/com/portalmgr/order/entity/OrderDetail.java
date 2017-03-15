package com.portalmgr.order.entity;

import com.portalmgr.product.entity.BaseInfo;

import java.io.Serializable;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-03 14:00
 **/
public class OrderDetail extends BaseInfo implements Serializable{

    private String orderId;
    private String inventoryId;
    private int num;
    private String totalPrice;

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(String inventoryId) {
        this.inventoryId = inventoryId;
    }

    public  int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }



}
