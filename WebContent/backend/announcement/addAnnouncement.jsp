<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.announcement.model.*"%>
<%
AnnouncementVO announcementVO = (AnnouncementVO) request.getAttribute("announcementVO");
%>

<html>
<head>
<title>最新消息資料新增 - addAnnouncement.jsp</title></head>
<link rel="stylesheet" type="text/css" href="js/calendar.css">
<script language="JavaScript" src="js/calendarcode.js"></script>
<div id="popupcalendar" class="text"></div>
<style>
.undone {
  margin-left : 10px;
  margin-right : 10px;
  font-size: 1.0rem;
  padding: 10px 20px;
  display: inline;
  background-color: #009ac9;
  border: 1px solid transparent;
  color: #ffffff;
  font-weight: 100;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
</style>
<body >

<div class="col-xs-12 col-sm-12">
<div style="float: left; font-size: 50px">新增最新消息</div>
</div>
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font color='red'>請修正以下錯誤:
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li>${message}</li>
		</c:forEach>
	</ul>
	</font>
</c:if>

<FORM style="display:inline" METHOD="post" ACTION="announcement.do" name="form1">
<table border="0">

	<tr>
		<td>最新消息:</td>
		<td><input type="TEXT" name="ann_text" size="45" 
			value="<%= (announcementVO==null)? "最新消息" : announcementVO.getAnn_text()%>" /></td>
	</tr>
	<tr>
	</tr>
	<tr>
	</tr>
</table>
<br>
<input type="hidden" name="action" value="insert">
<input class="undone"   type="submit" value="送出新增"></FORM>
 <FORM style="display:inline" METHOD="post" ACTION="announcement.do" >
        <input class="undone" type="submit" value="返回">
        <input type="hidden" name="action" value="all_Announcements">
    </FORM>
</body>

</html>
