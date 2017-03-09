package com.portalmgr.feedback.service;

import com.portalmgr.feedback.dao.FeedBackDao;
import com.portalmgr.feedback.entity.FeedBack;
import com.portalmgr.feedback.entity.FeedBackVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/2/28.
 */
@Service("feedBackService")
public class FeedBackService {

    @Resource
    private FeedBackDao feedBackDao;


    public FeedBack findFeedBack(FeedBackVo feedBackVo) {
       return  feedBackDao.findFeedBack(feedBackVo);
    }

    public List<FeedBack> getFeedBackList(FeedBackVo feedBackVo) {
        return  feedBackDao.getFeedBackList(feedBackVo);
    }

    public void addFeedBack(FeedBack feedBack) {
        feedBackDao.addFeedBack(feedBack);
    }

    public void updateFeedBack(FeedBack feedBack) {
        feedBackDao.updateFeedBack(feedBack);
    }

    public int getFeedBackCnt(FeedBackVo feedBackVo) {
        return feedBackDao.getFeedBackCnt(feedBackVo);
    }
}
