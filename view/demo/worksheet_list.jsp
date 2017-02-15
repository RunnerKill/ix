<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>故障工单</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<%@include file="/iportal/common/header_search.jsp" %>
<div class="top-menu">
    <a class="active" href="javascript:;">
        <span>待处理</span>
    </a>
    <a href="javascript:;">
        <span>处理中</span>
    </a>
    <a href="javascript:;">
        <span>已完成</span>
    </a>
</div>
<div class="ui-body gray">
    <div class="ui-content">
        <ul class="wslist">
            <li>
                <a class="box" href="view/demo/worksheet_detail.jsp">
                    <img src="http://usr.im/60x60?text=头像">
                    <span class="state s1">待处理</span>
                    <h2>修理CT机</h2>
                    <span class="date">2016.11.05 17:30</span>
                    <p class="text">自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容</p>
                </a>
                <p class="links">
                    <a href="javascript:;">取消报修</a>
                    <a href="javascript:;">查看通知</a>
                    <a href="javascript:;">联系客服</a>
                </p>
            </li>
            <li>
                <a class="box" href="view/demo/worksheet_detail.jsp">
                    <img src="http://usr.im/60x60?text=头像">
                    <span class="state s2">处理中</span>
                    <h2>修理CT机</h2>
                    <span class="date">2016.11.05 17:30</span>
                    <p class="text">自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容</p>
                </a>
                <p class="links">
                    <a href="javascript:;">取消报修</a>
                    <a href="javascript:;">查看通知</a>
                    <a href="javascript:;">联系客服</a>
                </p>
            </li>
            <li>
                <a class="box" href="view/demo/worksheet_detail.jsp">
                    <img src="http://usr.im/60x60?text=头像">
                    <span class="state s3">已处理</span>
                    <h2>修理CT机</h2>
                    <span class="date">2016.11.05 17:30</span>
                    <p class="text">自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容，自动生成工单内容自动生成工单内容自动生成工单内容自动生成工单内容</p>
                </a>
                <p class="links">
                    <a href="javascript:;">取消报修</a>
                    <a href="javascript:;">查看通知</a>
                    <a href="javascript:;">联系客服</a>
                </p>
            </li>
        </ul>
    </div>
</div>
</body>
<style>
.ui-body{top:95px}
.top-menu{position:absolute;z-index:2;top:50px;left:0;width:100%;display:table;background-color:#f7f9f7;border-bottom:1px solid #efefef}
.top-menu a{position:relative;display:table-cell;width:33.3%;text-align:center;line-height:44px;font-size:14px}
.top-menu a.active, .top-menu a:active{color:#e94816}
.top-menu a.active:after{content:" ";display:block;border-bottom:3px solid #e94816;position:absolute;bottom:0;left:0;right:0;height:0}
.wslist li{
    margin: 15px;
    background-color: #fff;
    border-radius: 5px;
    border: 1px solid #ddd;
}
.wslist .box {
    position: relative;
    display: block;
    padding: 10px 15px;
    color: #444;
    overflow: hidden;
}
.wslist .box:active {background-color: #efefef;}
.wslist .box img {
    float: left;
    margin-right: 10px;
    border-radius: 50%;
}
.wslist .box h2 {
    font-size: 18px;
    line-height: 30px;
    margin: 0 70px;
    overflow: inherit;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.wslist .box .date {
    font-size: 15px;
    color: #888;
    line-height: 30px;
}
.wslist .box .date:before {
    font-family: icon;
    content: "\e7d9";
    margin-right: 5px;
    color: #f2c53d;
}
.wslist .box .state {
    float: right;
}
.wslist .box .state.s1 {
    color: #888;
}
.wslist .box .state.s2 {
    color: #e94816;
}
.wslist .box .state.s3 {
    color: #3f7f7f;
}
.wslist .box .text {
    margin: 8px 0;
    text-indent: 2em;
    height: 3em;
    line-height: 1.5em;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.wslist .links {
    padding: 10px;
    border-top: 1px solid #ddd;
    text-align: right;
}
.wslist .links a:first-child {
    float: left;
}
.wslist .links a:last-child {
    margin-left: 10px;
    color: #f2c53d;
}
.wslist .links a:active {
    color: #666;
}
.wslist .links a:last-child:active {
    color: #a08124;
}
</style>
</html>
