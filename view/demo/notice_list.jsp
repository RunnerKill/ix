<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>消息列表</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body">
    <div class="ui-content">
        <ul class="ntclist">
            <li><a class="box no-read" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
            <li><a class="box no-read" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
            <li><a class="box no-read" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
            <li><a class="box" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
            <li><a class="box" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
            <li><a class="box" href="view/demo/notice_detail.jsp">
                <img class="head" src="http://usr.im/80x80?text=头像">
                <span class="datetime">2016-11-23 08:32</span>
                <h3 class="username">绿野仙灵</h3>
                <p class="content">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
            </a></li>
        </ul>
    </div>
</div>
<jsp:include page="/iportal/common/footer_menu.jsp">
    <jsp:param value="notice" name="active"/>
</jsp:include>
</body>
<style>
.ntclist .box {
    display: block;
    position: relative;
    padding: 10px 35px 20px 25px;
    border-bottom: 1px solid #ccc;
}
.ntclist .box:active {
    background-color: #efefef;
}
.ntclist .box:before, .ntclist .box:after {
    line-height: 110px;
    font-family: icon;
    position: absolute;
    top: 0;
}
.ntclist .box.no-read:before {
    color: #197b30;
    content: "\e666";
    left: 5px;
}
.ntclist .box:after {
    color: #aaa;
    content: "\e608";
    right: 10px;
}
.ntclist .head {
    float: left;
    width: 65px;
    height: 65px;
    margin-right: 10px;
    margin-top: 10px;
    border-radius: 50%;
}
.ntclist .datetime {
    float: right;
    font-size: 14px;
    line-height: 38px;
    color: #aaa;
}
.ntclist .username {    
    color: #444;
    line-height: 38px;
    font-size: 16px;
    font-weight: normal;
    margin: 0 120px 0 75px;
    height: 38px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.ntclist .content {
    color: #aaa;
    font-size: 14px;
    text-indent: 2em;
    line-height: 21px;
    height: 42px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
</style>
</html>
