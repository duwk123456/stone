package com.portalmgr.notice.entity;

/**
 * @author duwk
 * @Description
 * @Date 2017-02-27 14:02
 **/
public class Notice {

   private String  noticeId;
   private String  noticeContent;
   private String  createTime;
   private String  status;
   private String  statusName;
   private String  noticeTitle;
   private String  modifyTime;

   public String getModifyTime() {
      return modifyTime;
   }

   public void setModifyTime(String modifyTime) {
      this.modifyTime = modifyTime;
   }

   public String getNoticeId() {
      return noticeId;
   }

   public void setNoticeId(String noticeId) {
      this.noticeId = noticeId;
   }

   public String getNoticeContent() {
      return noticeContent;
   }

   public void setNoticeContent(String noticeContent) {
      this.noticeContent = noticeContent;
   }

   public String getCreateTime() {
      return createTime;
   }

   public void setCreateTime(String createTime) {
      this.createTime = createTime;
   }

   public String getStatus() {
      return status;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   public String getStatusName() {
      return statusName;
   }

   public void setStatusName(String statusName) {
      this.statusName = statusName;
   }

   public String getNoticeTitle() {
      return noticeTitle;
   }

   public void setNoticeTitle(String noticeTitle) {
      this.noticeTitle = noticeTitle;
   }

   @Override
   public String toString() {
      return "Notice{" +
              "noticeId='" + noticeId + '\'' +
              ", noticeContent='" + noticeContent + '\'' +
              ", createTime='" + createTime + '\'' +
              ", status='" + status + '\'' +
              ", statusName='" + statusName + '\'' +
              ", noticeTitle='" + noticeTitle + '\'' +
              '}';
   }
}
