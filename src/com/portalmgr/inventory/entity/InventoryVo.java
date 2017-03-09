package com.portalmgr.inventory.entity;

import com.portalmgr.common.CommBean;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-01 21:56
 **/
public class InventoryVo extends CommBean {

    private String  inventoryId;
    private String  price;
    private String shape;


    public String getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(String inventoryId) {
        this.inventoryId = inventoryId;
    }


    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }


    public String getShape() {
        return shape;
    }


    public void setShape(String shape) {
        this.shape = shape;
    }
}
