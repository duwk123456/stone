package com.portalmgr.product.service;

import com.portalmgr.product.dao.ProductDao;
import com.portalmgr.product.entity.Product;
import com.portalmgr.product.entity.ProductVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/2/28.
 */
@Service("productService")
public class ProductService {

    @Resource
    private ProductDao productDao;

    public Product findProduct(ProductVo productVo) {

        return  productDao.findProduct(productVo);
    }

    public List<Product> getProductList(ProductVo productVo) {
        return  productDao.getProductList(productVo);
    }

    public boolean isExistProduct(Product product) {
        Product isExistProduct= productDao.isExistProduct(product);
        if(isExistProduct==null){
            return true;
        }else{
            return false;
        }
    }

    public void addProduct(Product product) {
        //插入库存表
        productDao.addInventory(product);
        productDao.addProduct(product);
        //插入样品表
    }


    public void updateProduct(Product product) {
        productDao.updateProduct(product);

    }

    public int getProductCnt(ProductVo productVo) {
        return productDao.getProductCnt(productVo);
    }
}
