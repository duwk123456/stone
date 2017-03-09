package com.portalmgr.product.dao;

import com.portalmgr.product.entity.Product;
import com.portalmgr.product.entity.ProductVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/2/28.
 */
@Repository("productDao")
public interface ProductDao {


    Product findProduct(ProductVo productVo);

    List<Product> getProductList(ProductVo productVo);

    Product isExistProduct(Product product);

    void addInventory(Product product);

    void addProduct(Product product);

    void updateProduct(Product product);

    int getProductCnt(ProductVo productVo);
}
