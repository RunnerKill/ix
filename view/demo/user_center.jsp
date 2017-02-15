<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>个人中心</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content userinfo">
        <div class="card">
            <img class="head" src="http://usr.im/80x80?text=头像">
            <p><span class="name">张三</span></p>
            <p><span class="job">放射科主治医生</span></p>
        </div>
        <ul class="menu">
            <li><a class="info" href="javascript:;">个人信息</a></li>
            <li><a class="worksheet" href="javascript:;">我的工单</a></li>
            <li><a class="message" href="javascript:;">我的消息</a></li>
            <li><a class="report" href="javascript:;">我要报修</a></li>
            <li><a class="telphone" href="javascript:;">拨打客服</a></li>
            <li><a class="logout no-arrow" href="javascript:;">注销登录</a></li>
        </ul>
    </div>
</div>
<jsp:include page="/iportal/common/footer_menu.jsp">
    <jsp:param value="mine" name="active"/>
</jsp:include>
</body>
<style>
.userinfo .card {
    padding: 20px 0;
    background-color: #ccc;
    color: #fff;
    text-align: center;
}
.userinfo .card p {
    line-height: 2em;
}
.userinfo .card .head {
    width: 110px;
    height: 110px;
    margin: 10px auto;
    border-radius: 50%;
    border: 3px double #fff;
}
.userinfo .card .name {
    font-size: 20px;
}
.userinfo .menu a {
    display: block;
    position: relative;
    padding: 0 50px 0 60px;
    line-height: 50px;
    background-color: #fff;
    border-bottom: 1px solid #ccc;
}
.userinfo .menu a:before, .userinfo .menu a:after {
    position: absolute;
    font-family: icon;
    top: 0;
}
.userinfo .menu a:before {
    left: 20px;
    font-size: 26px;
}
.userinfo .menu a:after {
    content: "\e608";
    right: 15px;
    font-size: 15px;
}
.userinfo .menu a.no-arrow:after {
    content: "";
}
.userinfo .menu a.info:before {content: "\e611";color:#ffaf3f;}
.userinfo .menu a.worksheet:before {content: "\e625";color:#a1d450;}
.userinfo .menu a.message:before {content: "\e67a";color:#22a792;}
.userinfo .menu a.report:before {content: "\e629";color:#d2687b;}
.userinfo .menu a.telphone:before {content: "\e659";color:#86a550;}
.userinfo .menu a.logout:before {content: "\e680";color:#e1453b;}
.userinfo .menu li:last-child {
    margin-top: 20px;
}
.userinfo .menu a:active {
    color: #444;
    background-color: #efefef;
}
</style>
</html>
