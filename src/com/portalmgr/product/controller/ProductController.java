package com.portalmgr.product.controller;

import com.portalmgr.common.ResultEntity;
import com.portalmgr.product.entity.Product;
import com.portalmgr.product.entity.ProductVo;
import com.portalmgr.product.service.ProductService;
import com.portalmgr.util.GsonTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Administrator on 2017/2/28.
 */
@RequestMapping("productController")
@Controller
public class ProductController {


    @Autowired
    private ProductService productService;



    @RequestMapping(value="/editProduct")
    public void  editProduct(HttpServletRequest request,HttpServletResponse response,ProductVo productVo){
        ResultEntity resultEntity = new ResultEntity();
        try{

            Product product = productService.findProduct(productVo);

            resultEntity.setMsg("获取样品对象成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(product);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/getProductList")
    public void  getProductList(HttpServletRequest request,HttpServletResponse response,ProductVo productVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            productVo.setStartRow();
            int total = productService.getProductCnt(productVo);
            List<Product> productList=productService.getProductList(productVo);
            resultEntity.setProperty("total",total);
            resultEntity.setMsg("查询样品成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(productList);

        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }

    @RequestMapping(value="/addProduct")
    public void  addProduct(HttpServletRequest request,HttpServletResponse response,Product product){
        ResultEntity resultEntity = new ResultEntity();
        try{

            if(productService.isExistProduct(product)){
                productService.addProduct(product);
                resultEntity.setMsg("添加成功");
                resultEntity.setSuccess(true);
            }else{
                resultEntity.setSuccess(false);
                resultEntity.setMsg("该样品已经存在");
            }
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }




    @RequestMapping(value="/updateProduct")
    public void  updateProduct(HttpServletRequest request,HttpServletResponse response,Product product){
        ResultEntity resultEntity = new ResultEntity();
        try{
            productService.updateProduct(product);
            resultEntity.setMsg("修改成功");
            resultEntity.setSuccess(true);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }




}
