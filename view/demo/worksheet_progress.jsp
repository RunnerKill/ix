<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>维修进度</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content wsprogress">
        <div class="card">
            <img src="http://usr.im/140x100?text=照片">
            <h2>维修进度</h2>
            <span class="no">单号：<b>w123242133</b></span>
            <span class="step">进程：正在指派人员</span>
        </div>
        <div class="progress">
            <p class="text done">公司已经收到消息</p>
            <p class="date done">2016.11.5<br />17:35</p>
            <p class="text done">已经与您去的联系获得故障信息</p>
            <p class="date done">2016.11.5<br />18:20</p>
            <p class="text">指派工作人员上门</p>
            <p class="date"></p>
            <p class="text">维修完成</p>
        </div>
    </div>
</div>
<%@include file="/iportal/common/footer_menu.jsp" %>
</body>
<style>
.wsprogress .card {
    margin: 20px 0;
    padding: 10px 15px;
    background-color: #fff;
}
.wsprogress .card * {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.wsprogress .card img {
    float: left;
    margin-right: 15px;
}
.wsprogress .card h2 {
    font-size: 22px;
    line-height: 40px;
    height: 40px;
}
.wsprogress .card span {
    line-height: 30px;
    height: 30px;
}
.wsprogress .card .no b {
    color: #f2c53d;
    font-weight: normal;
}
.wsprogress .progress {
    padding: 0 30px;
    margin: 50px 0;
    color: #bbb;
}
.wsprogress .progress .text {
    margin-left: 100px;
    position: relative;
    line-height: 20px;
    padding-left: 30px;
    border-left: 1px solid #bbb;
}
.wsprogress .progress .text:before, .wsprogress .progress .text:after {
    content: " ";
    display: block;
    position: absolute;
    top: 50%;
    border-radius: 50%;
}
.wsprogress .progress .text:before {
    width: 22px;
    height: 22px;
    left: -12px;
    margin-top: -12px;
    background-color: #fff;
    border: 1px solid #bbb;
}
.wsprogress .progress .text:after {
    left: -8px;
    margin-top: -8px;
    width: 16px;
    height: 16px;
    background-color: #bbb;
}
.wsprogress .progress .date {
    width: 100px;
    height: 50px;
    line-height: 25px;
    text-align: center;
    border-right: 1px solid #bbb;
}
.wsprogress .progress .done {
    color: #444;
    border-color: #f2c53d;
}
.wsprogress .progress .done:before {
    border-color: #f2c53d;
}
.wsprogress .progress .done:after {
    background-color: #f2c53d;
}
</style>
</html>
