package com.portalmgr.notice.dao;

import com.portalmgr.notice.entity.Notice;
import com.portalmgr.notice.entity.NoticeVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author duwk
 * @create 2017-02-27 13:56
 **/
@Repository("noticeDao")
public interface NoticeDao {


    Notice findNotice(NoticeVo noticeVo);

    void updateNotice(Notice notice);

    List<Notice> findAllNotice(NoticeVo notice);

    void addNotice(Notice notice);

     int getNoticeCnt(NoticeVo notice);
}
