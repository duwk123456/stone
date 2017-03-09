package com.portalmgr.inventory.entity;

import com.portalmgr.product.entity.BaseInfo;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-01 21:56
 **/
public class Inventory extends BaseInfo {

    private  String  inventoryId;
    private  int   num;
    private  int   cnt;//传递的进货出货数量


    public String getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(String inventoryId) {
        this.inventoryId = inventoryId;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }
}
