package com.portalmgr.customer.controller;


import com.portalmgr.common.ResultEntity;
import com.portalmgr.customer.entity.CustomMade;
import com.portalmgr.customer.entity.CustomMadeVo;
import com.portalmgr.customer.service.CustomMadeService;
import com.portalmgr.util.GsonTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-07 14:26
 **/
@Controller
@RequestMapping(value="customMadeController")
public class CustomMadeController{

    @Autowired
    private CustomMadeService customMadeService;

    @RequestMapping(value="/getCustomMadeList")
    @ResponseBody
    public ResultEntity  getCustomMadeList(HttpServletRequest request,HttpServletResponse response,CustomMadeVo customMadeVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            customMadeVo.setStartRow();
            int total = customMadeService.getCustomMadeCnt(customMadeVo);
            List<CustomMade> customMadeList=customMadeService.getCustomMadeList(customMadeVo);
            resultEntity.setProperty("total", total);
            resultEntity.setMsg("查询定制石材成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(customMadeList);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        return resultEntity;
        //GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/updateCustomMade")
    public void  updateCustomMade(HttpServletRequest request,HttpServletResponse response,CustomMade customMade){
        ResultEntity resultEntity = new ResultEntity();
        try{
            customMadeService.updateCustomMade(customMade);
            resultEntity.setMsg("更新成功");
            resultEntity.setSuccess(true);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/findCustomMade")
    public void  findCustomMade(HttpServletRequest request,HttpServletResponse response,CustomMadeVo customMadeVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            CustomMade customMade = customMadeService.findCustomMade(customMadeVo);
            resultEntity.setMsg("获取订制成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(customMade);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/addCustomMade")
    public void  addCustomMade(HttpServletRequest request,HttpServletResponse response,CustomMade customMade){
        ResultEntity resultEntity = new ResultEntity();
        try{
            customMadeService.addCustomMade(customMade);
            resultEntity.setMsg("添加成功");
            resultEntity.setSuccess(true);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


}
