<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>工单详情</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content wsdetail">
        <div class="box">
        	<h4>设备名称</h4>
        	<p>放射科CT机</p>
        </div>
        <div class="box">
        	<h4>故障类型</h4>
        	<p>无法开机</p>
        </div>
        <div class="box">
        	<h4>故障地址</h4>
        	<p>机内硬件</p>
        </div>
        <div class="box">
        	<h4>故障描述</h4>
        	<p>描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字描述文字</p>
            <p class="images">
                <img src="http://usr.im/80x60?text=照片">
                <img src="http://usr.im/80x60?text=照片">
                <img src="http://usr.im/80x60?text=照片">
            </p>
        </div>
        <div class="box">
        	<h4>联系人</h4>
        	<p>张医生</p>
        </div>
        <div class="box">
        	<h4>联系电话</h4>
        	<p>13XXXXXXXX</p>
        </div>
        <a href="view/demo/worksheet_progress.jsp" class="btn">查看进度</a>
    </div>
</div>
</body>
<style>
.wsdetail .box {
    background-color: #fff;
    margin: 10px 0;
    padding: 10px;
}
.wsdetail .box h4 {
    color: #f2c53d;
    font-weight: normal;
}
.wsdetail .box h4:before {
    font-family: icon;
    margin-right: 5px;
    content: "\e6e9";
}
.wsdetail .box p {
    text-indent: 2em;
    margin: 10px 0 5px 0;
}
.wsdetail .box p.images {
    text-indent: 0;
}
.wsdetail .box p.images img {
    display: inline-block;
}
.wsdetail a.btn {
    margin: 30px 50px;
}
</style>
</html>
