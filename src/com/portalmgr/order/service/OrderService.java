package com.portalmgr.order.service;

import com.portalmgr.order.dao.OrderDao;
import com.portalmgr.order.entity.Order;
import com.portalmgr.order.entity.OrderDTO;
import com.portalmgr.order.entity.OrderVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author duwk
 * @Description
 * @Date 2017-03-06 10:49
 **/
@Service
public class OrderService {

    @Resource
    private OrderDao orderDao;

    public void updateOrder(Order order) {

        orderDao.updateOrder(order);
    }

    public List<Order> getOrderList(OrderVo orderVo) {
        return  orderDao.getOrderList(orderVo);
    }

    public List<OrderDTO> getOrderDTOList(OrderVo orderVo) {
        return  orderDao.getOrderDTOList(orderVo);
    }
}
