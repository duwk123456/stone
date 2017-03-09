package com.portalmgr.order.dao;


import com.portalmgr.order.entity.Order;
import com.portalmgr.order.entity.OrderDTO;
import com.portalmgr.order.entity.OrderDetail;
import com.portalmgr.order.entity.OrderVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author duwk
 * @create 2017-03-02 15:53
 **/
@Repository
public interface OrderDao {

    public void addOrder(Order order);

    void addOrderDetail(@Param("beans")List<OrderDetail> orderDetailList);

    void updateOrder(Order order);

    List<Order> getOrderList(OrderVo orderVo);

    List<OrderDTO> getOrderDTOList(OrderVo orderVo);
}
