package com.portalmgr.feedback.dao;

import com.portalmgr.feedback.entity.FeedBack;
import com.portalmgr.feedback.entity.FeedBackVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/2/28.
 */
@Repository("feedBackDao")
public interface FeedBackDao {


    void updateFeedBack(FeedBack feedBack);

    FeedBack findFeedBack(FeedBackVo feedBackVo);

    List<FeedBack> getFeedBackList(FeedBackVo feedBackVo);

    void addFeedBack(FeedBack feedBack);

    int getFeedBackCnt(FeedBackVo feedBackVo);

    void del(FeedBackVo feedBackVo);
}
