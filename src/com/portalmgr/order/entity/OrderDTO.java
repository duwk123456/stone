package com.portalmgr.order.entity;

import com.newland.iot.common.annotation.ExcelAnnotation;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 16:02
 **/
public class OrderDTO {


    @ExcelAnnotation(columnIndex = 1,columnTitle = "订单号",excelTitle = "订单明细表")
    private  String orderId;
    @ExcelAnnotation(columnIndex = 2,columnTitle = "宽度(m)")
    private  double width;
    @ExcelAnnotation(columnIndex = 3,columnTitle = "高度(m)")
    private  double height;
    @ExcelAnnotation(columnIndex = 4,columnTitle = "高度(m)")
    private  double length;
    @ExcelAnnotation(columnIndex = 5,columnTitle = "形状")
    private  String shape;
    @ExcelAnnotation(columnIndex = 6,columnTitle = "价格(元)")
    private  double price;
    @ExcelAnnotation(columnIndex = 7,columnTitle = "数量")
    private  String num;
    @ExcelAnnotation(columnIndex = 8,columnTitle = "下单人")
    private  String userName;
    @ExcelAnnotation(columnIndex = 9,columnTitle = "下单时间")
    private  String createTime;
    private  String saleTypeStr;


    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getLength() {
        return length;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public String getShape() {
        return shape;
    }

    public void setShape(String shape) {
        this.shape = shape;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
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

    public String getSaleTypeStr() {
        return saleTypeStr;
    }

    public void setSaleTypeStr(String saleTypeStr) {
        this.saleTypeStr = saleTypeStr;
    }
}
