package com.portalmgr.feedback.controller;

import com.portalmgr.common.ResultEntity;
import com.portalmgr.feedback.entity.FeedBack;
import com.portalmgr.feedback.entity.FeedBackVo;
import com.portalmgr.feedback.service.FeedBackService;
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
@RequestMapping("feedBackController")
@Controller
public class feedBackController {


    @Autowired
    private FeedBackService feedBackService;


    /**
     * @param request
     * @param response
     */
    @RequestMapping(value="/editFeedBack")
    public void  editFeedBack(HttpServletRequest request,HttpServletResponse response,FeedBackVo feedBackVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            FeedBack feedBack = feedBackService.findFeedBack(feedBackVo);
            resultEntity.setMsg("查询单个对象");
            resultEntity.setSuccess(true);
            resultEntity.setData(feedBack);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }

    /**
     *
     * @param request
     * @param response
     */
    @RequestMapping(value="/getFeedBackList")
    public void  getFeedBackList(HttpServletRequest request,HttpServletResponse response,FeedBackVo feedBackVo){
        ResultEntity resultEntity = new ResultEntity();
        try{
            feedBackVo.setStartRow();
            int total= feedBackService.getFeedBackCnt(feedBackVo);
            List<FeedBack> feedBackList=feedBackService.getFeedBackList(feedBackVo);
            resultEntity.setMsg("查询成功");
            resultEntity.setProperty("total", total);
            resultEntity.setSuccess(true);
            resultEntity.setData(feedBackList);

        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
        GsonTools.writeJsonObj(response, resultEntity);
    }

    @RequestMapping(value="/addFeedBack")
    public void  addFeedBack(HttpServletRequest request,HttpServletResponse response,FeedBack feedBack){
        ResultEntity resultEntity = new ResultEntity();
        try{
            feedBackService.addFeedBack(feedBack);
            resultEntity.setMsg("添加成功");
            resultEntity.setSuccess(true);
            GsonTools.writeJsonObj(response, resultEntity);
        }catch(Exception e){
            e.printStackTrace();
            resultEntity.setSuccess(false);
            resultEntity.setMsg("服务异常");
        }
    }


    /**
     *
     * @param request
     * @param response
     */
    @RequestMapping(value="/updateFeedBack")
    public void  updateFeedBack(HttpServletRequest request,HttpServletResponse response,FeedBack feedBack){
        ResultEntity resultEntity = new ResultEntity();
        try{
            feedBackService.updateFeedBack(feedBack);
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
