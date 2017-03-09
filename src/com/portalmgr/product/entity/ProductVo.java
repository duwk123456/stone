package com.portalmgr.product.entity;

import com.portalmgr.common.CommBean;

/**
 * Created by Administrator on 2017/2/28.
 */
public class ProductVo extends CommBean{

    private String productId;
    private String  price;
    private String shape;

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
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
