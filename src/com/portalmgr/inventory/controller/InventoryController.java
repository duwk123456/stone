package com.portalmgr.inventory.controller;

import com.portalmgr.common.ResultEntity;
import com.portalmgr.inventory.entity.Inventory;
import com.portalmgr.inventory.entity.InventoryVo;
import com.portalmgr.inventory.service.InventoryService;
import com.portalmgr.util.GsonTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 15:05
 **/
@Controller
@RequestMapping(value="inventoryController")
public class InventoryController {

    //出入库也放这边
    @Autowired
    private InventoryService inventoryService;

    @RequestMapping(value="/getInventoryList")
    public void  getInventoryList(HttpServletRequest request,HttpServletResponse response,InventoryVo inventroyVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            inventroyVo.setStartRow();
            int total = inventoryService.getInventoryCount(inventroyVo);
            List<Inventory> inventoryList=inventoryService.getInventoryList(inventroyVo);
            resultEntity.setProperty("total",total);
            resultEntity.setMsg("查询库存成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(inventoryList);

        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/updateInventory")
    public void  updateInventory(HttpServletRequest request,HttpServletResponse response){
        ResultEntity resultEntity = new ResultEntity();
        try{
            int OrderId = inventoryService.updateInventory(request);
            resultEntity.setMsg("库存更新成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(OrderId);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


    @RequestMapping(value="/findInventory")
    public void  findInventory(HttpServletRequest request,HttpServletResponse response,InventoryVo inventroyVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            Inventory inventroy = inventoryService.findInventory(inventroyVo);
            resultEntity.setMsg("获取库存对象成功");
            resultEntity.setSuccess(true);
            resultEntity.setData(inventroy);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }


}
