package com.portalmgr.product.entity;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-01 21:25
 **/
public class BaseInfo {

    private  double width;
    private  double height;
    private  double length;
    private  String shape;
    private  double price;


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
}
