<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>消息详情</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content ntcdetail">
        <div class="datetime"><span>2016年11月23日 23:12</span></div>
        <div class="box">
            <img class="head" src="http://usr.im/50x50?text=头像">
            <p class="text">消息内容消息内容消息内</p>
        </div>
        <div class="datetime"><span>08:02</span></div>
        <div class="box">
            <img class="head" src="http://usr.im/50x50?text=头像">
            <p class="text">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息</p>
        </div>
        <div class="datetime"><span>10:30</span></div>
        <div class="box">
            <img class="head" src="http://usr.im/50x50?text=头像">
            <p class="text">消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容消息内容</p>
        </div>
        <div class="box">
            <img class="head" src="http://usr.im/50x50?text=头像">
            <p class="text">消息内容消息内容消息内容消息内容消</p>
        </div>
    </div>
</div>
</body>
<style>
.ntcdetail {
    padding: 15px 30px 15px 15px;
}
.ntcdetail .datetime {
    font-size: 12px;
    line-height: 20px;
    text-align: center;
    margin: 30px 0;
}
.ntcdetail .datetime span {
    border-radius: 5px;
    color: #fff;
    padding: 3px 10px;
    background-color: #ccc;
}
.ntcdetail .box {
    margin: 30px 0;
    padding-left: 65px;
    position: relative;
}
.ntcdetail .box .head {
    position: absolute;
    top: 0;
    left: 0;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: #fff;
    padding: 2px;
    box-shadow: 1px 2px 3px 1px #ccc;
}
.ntcdetail .box .text {
    display: inline-block;
    position: relative;
    border-radius: 5px;
    background-color: #fff;
    line-height: 1.5em;
    padding: 10px 15px;
    box-shadow: 1px 2px 5px 1px #ccc;
}
.ntcdetail .box .text:before {
    display: block;
    content: " ";
    position: absolute;
    top: 15px;
    left: -8px;
    width: 0;
    height: 0;
    border-top: 8px solid transparent;
    border-right: 12px solid #fff;
    border-bottom: 8px solid transparent;
}
</style>
</html>
