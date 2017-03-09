package com.portalmgr.inventory.service;

import com.portalmgr.common.ClientConstantPool;
import com.portalmgr.common.CommonContext;
import com.portalmgr.common.UserSessionInfo;
import com.portalmgr.inventory.dao.InventoryDao;
import com.portalmgr.inventory.entity.Inventory;
import com.portalmgr.inventory.entity.InventoryVo;
import com.portalmgr.order.dao.OrderDao;
import com.portalmgr.order.entity.Order;
import com.portalmgr.order.entity.OrderDetail;
import com.portalmgr.util.GsonTools;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-02 15:20
 **/
@Service
public class InventoryService {

    @Resource
    public InventoryDao inventoryDao;
    @Resource
    public OrderDao orderDao;
    public List<Inventory> getInventoryList(InventoryVo inventroyVo) {
        return inventoryDao.getInventoryList(inventroyVo);
    }

    public int getInventoryCount(InventoryVo inventroyVo) {
        return inventoryDao.getInventoryCount(inventroyVo);
    }

    public Inventory findInventory(InventoryVo inventroyVo) {
        return inventoryDao.findInventory(inventroyVo);
    }


    @Transactional
    public int  updateInventory(HttpServletRequest request){

        String type = request.getParameter("type");//1是进货 2是售出
        //String jsonStr= request.getParameter("jsonStr");
        String jsonStr= hh();
        List<Inventory>  inventoryList = (List<Inventory>) GsonTools.getObjects(jsonStr, Inventory.class);

        UserSessionInfo   userSessionInfo = (UserSessionInfo) CommonContext.getSessionValue(ClientConstantPool.SESSION_KEY, request);
        //String userId= userSessionInfo.getUserId()+"";
        String userId="3";
        //第一步 插入订单表
        Order order = new Order();
        order.setCreateUserId(userId);
        order.setType(type);
        orderDao.addOrder(order);
        System.out.println(order.getOrderId());
        OrderDetail orderDetail =null;
        List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
        if("1".equals(type)){
            //入库
            for (Inventory in :inventoryList){
                in.setNum(in.getNum() + in.getCnt());
                orderDetail = new OrderDetail();
                orderDetail.setNum(in.getCnt());
                orderDetail.setPrice(in.getPrice());
                orderDetail.setInventoryId(in.getInventoryId());
                orderDetail.setOrderId(order.getOrderId() + "");
                orderDetailList.add(orderDetail);
            }
        }else if("2".equals(type)){
            //出库
            for (Inventory in :inventoryList){
                in.setNum(in.getNum() - in.getCnt());
                orderDetail = new OrderDetail();
                orderDetail.setNum(in.getCnt());
                orderDetail.setPrice(in.getPrice());
                orderDetail.setInventoryId(in.getInventoryId());
                orderDetail.setOrderId(order.getOrderId() + "");
                orderDetailList.add(orderDetail);
            }
        }

        //第二  更新仓库库存量
        if(!inventoryList.isEmpty()){
          inventoryDao.updateInventory(inventoryList);
            //第三 插入订单明细表
            orderDao.addOrderDetail(orderDetailList);
        }

        return order.getOrderId();



    }


    public  String hh(){

        String str="";
        List<Inventory> inventoryList = new ArrayList<Inventory>();
        Inventory inventory= new Inventory();
        inventory.setNum(55);
        inventory.setCnt(5);
        inventory.setPrice(1864);
        inventory.setInventoryId(1 + "");
        inventory.setShape("sds");
        Inventory inventory1= new Inventory();
        inventory1.setNum(43);
        inventory1.setCnt(2);
        inventory1.setPrice(847);
        inventory1.setShape("sds");
        inventory1.setInventoryId(2 + "");
        inventoryList.add(inventory);
        inventoryList.add(inventory1);
        str=GsonTools.getJson(inventoryList);



        return str;
    }


}
