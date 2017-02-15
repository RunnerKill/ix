<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>首页</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content">
        <!-- 轮播部分 -->
        <div class="swiper-container banner">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="media/imgs/ib1.png"></div>
                <div class="swiper-slide"><img src="media/imgs/ib1.png"></div>
                <div class="swiper-slide"><img src="media/imgs/ib1.png"></div>
            </div>
            <!-- 如果需要分页器 -->
            <div class="swiper-pagination"></div>
        </div>
        <!-- 盒状按钮 -->
        <div class="box-btn">
            <a class="btn1" href="javascript:;">添加设备</a>
            <a class="btn2" href="javascript:;">我的工单</a>
        </div>
        <!-- 分割线 -->
        <div class="cut-line"></div>
        <!-- 主菜单 num-3/num-5分别是每行3/5个样式，默认每行5个 -->
        <ul class="main-menu num-5">
            <%for(int i = 0; i < 2; i ++) { %>
        	<li><a href="javascript:;">
                <img src="media/imgs/mi1.png">
                <span>我的消息</span>
            </a></li>
        	<li><a href="javascript:;">
                <img src="media/imgs/mi2.png">
                <span>设备列表</span>
            </a></li>
        	<li><a href="javascript:;">
                <img src="media/imgs/mi3.png">
                <span>拨打客服</span>
            </a></li>
        	<li><a href="javascript:;">
                <img src="media/imgs/mi4.png">
                <span>我要报修</span>
            </a></li>
        	<li><a href="javascript:;">
                <img src="media/imgs/mi5.png">
                <span>个人设置</span>
            </a></li>
            <%} %>
        </ul>
    </div>
</div>
<jsp:include page="/iportal/common/footer_menu.jsp">
    <jsp:param value="home" name="active"/>
</jsp:include>
<script>
var mySwiper = new Swiper ('.swiper-container', {
    loop: true,
    // 如果需要分页器
    pagination: '.swiper-pagination',
});
</script>
<style>
.banner img {
    width: 100%;
    height: auto;
}
.swiper-pagination-bullet {
    width: 25px;
    height: 5px;
    border-radius: 0;
    background: #fff;
    opacity: 1;
}
.swiper-pagination-bullet-active {
    background: #f2c53d;
}
.box-btn {
    text-align: center;
    margin: 20px 0;
}
.box-btn a {
    display: inline-block;
    width: 140px;
    height: 100px;
    margin: 0 15px;
    color: #000;
    font: normal 20px/100px 黑体,sans-serif;
    text-align: center;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: 100% 100%;
}
.box-btn a.btn1 {background-image: url('media/imgs/mb1.png');}
.box-btn a.btn2 {background-image: url('media/imgs/mb2.png');}
.cut-line {
    height: 3px;
    color: #aaa;
    background-color: #ddd;
    font-family: icon;
    text-align: center;
    line-height: 4px;
    font-size: 24px;
    margin: 10px 0;
}
.cut-line:before {
    content: "\e73f";
    background-color: #f0efef;
    padding: 10px;
}
.main-menu {
}
.main-menu li {
    display: block;
    float: left;
    margin-top: 20px;
}
.main-menu.num-5 li {width: 20%;}
.main-menu.num-3 li {width: 33.3%;}
.main-menu a {
    display: block;
    color: #444;
    text-align: center;
    font-size: 15px;
}
.main-menu img {
    margin: 0 auto;
    width: 80%;
    border-radius: 50%;
}
.main-menu li:nth-child(1n) img {background-color: #ff6768;}
.main-menu li:nth-child(2n) img {background-color: #f7c842;}
.main-menu li:nth-child(3n) img {background-color: #00c7bb;}
.main-menu li:nth-child(4n) img {background-color: #359fc8;}
.main-menu li:nth-child(5n) img {background-color: #43c7ab;}
</style>
</body>
</html>
