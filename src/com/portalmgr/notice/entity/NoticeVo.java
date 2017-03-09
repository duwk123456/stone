package com.portalmgr.notice.entity;

import com.portalmgr.common.CommBean;

/**
 * @author duwk
 * @Description
 * @Date 2017-02-27 14:08
 **/
public class NoticeVo  extends CommBean {

    private String noticeTitle;
    private String noticeId;
    private String beginTime;
    private String endTime;
    private String noticeContent;


    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(String noticeId) {
        this.noticeId = noticeId;
    }


    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getNoticeContent() {
        return noticeContent;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }
}
