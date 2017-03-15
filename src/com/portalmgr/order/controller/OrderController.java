package com.portalmgr.order.controller;

import com.portalmgr.common.BaseController;
import com.portalmgr.common.ResultEntity;
import com.portalmgr.order.entity.Order;
import com.portalmgr.order.entity.OrderDTO;
import com.portalmgr.order.entity.OrderDetail;
import com.portalmgr.order.entity.OrderVo;
import com.portalmgr.order.service.OrderService;
import com.portalmgr.util.GsonTools;
import com.portalmgr.util.excelUtil.ExportExcelUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * 通知栏控制层
 * @author duwk
 * @date： 日期：2016-11-17 时间：下午4:35:39
 */

@Controller
@RequestMapping("orderController")
public class OrderController extends BaseController {
	private static Logger log = Logger.getLogger(OrderController.class);
	
	@Autowired
	private OrderService orderService;







	/**
	 * 售后服务需要更新订单表
	 * @param request
	 * @param response
	 * @param
	 */
	@RequestMapping(value="/updateOrder")
	public void  updateOrder(HttpServletRequest request,HttpServletResponse response,Order order){
		ResultEntity resultEntity = new ResultEntity();
		try{
			orderService.updateOrder(order);
			resultEntity.setMsg("更新成功");
			resultEntity.setSuccess(true);
		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}

	@RequestMapping(value="/getOrderList")
	@ResponseBody
	public void  getOrderList(HttpServletRequest request,HttpServletResponse response,OrderVo orderVo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			orderVo.setStartRow();
			int total = orderService.getOrderCnt(orderVo);
			List<Order> orderList = orderService.getOrderList(orderVo);
            resultEntity.setProperty("total",total);
			resultEntity.setMsg("查询订单成功");
			resultEntity.setSuccess(true);
			resultEntity.setData(orderList);
		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}
		GsonTools.writeJsonObj(response, resultEntity);
	}


	@RequestMapping("exportReport")
	public void exportReport(HttpServletRequest request,HttpServletResponse response,OrderVo orderVo) {
		try {
			String fileName ="订单报表.xls";
			response.reset();
			response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(fileName, "utf-8"));
			response.setContentType("application/msexcel");
			List<OrderDTO> orderList = orderService.getOrderDTOList(orderVo);
			ExportExcelUtil.exportReport(response.getOutputStream(), orderList, OrderDTO.class, fileName);
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@RequestMapping(value="/getOrderDetail")
	@ResponseBody
	public void  getOrderDetail(HttpServletRequest request,HttpServletResponse response,OrderVo orderVo){
		ResultEntity resultEntity = new ResultEntity();
		try{
			List<OrderDetail> orderList = orderService.getOrderDetail(orderVo);

			resultEntity.setMsg("查询订单成功");
			resultEntity.setSuccess(true);
			resultEntity.setData(orderList);


			//new GsonBuilder().registerTypeAdapter(Dataset.class, new DatasetTypeAdapter()).create();

		}catch(Exception e){
			e.printStackTrace();
			resultEntity.setSuccess(false);
			resultEntity.setMsg("服务异常");
		}

		GsonTools.writeJsonObj(response, resultEntity);
	}


















}
