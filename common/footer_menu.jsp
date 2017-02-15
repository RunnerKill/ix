<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String activebtn = request.getParameter("active");
activebtn = activebtn == null ? "home" : activebtn;
%>
<div class="ui-footer">
    <ul class="nav-bar">
    	<li><a class="home" href="javascript:ix.tip('系统建设中...');">首页</a></li>
    	<li><a class="order" href="ems/workorderinfo/list">工单</a></li>
    	<li><a class="notice" href="javascript:ix.tip('系统建设中...');">通知</a></li>
    	<li><a class="mine" href="system/sysunit/center">我的</a></li>
    </ul>
</div>
<script>
$('.nav-bar a.<%=activebtn %>').addClass('active');
</script>
<style>
.ui-body {bottom: 61px;}
.nav-bar{width:100%;display:table;border-top:1px solid #efefef;box-shadow:0px -1px 8px 0px #ccc}
.nav-bar li{display:table-cell}
.nav-bar a{display:block;height:50px;padding-top:10px;text-align:center;font-size:12px;color:#888;line-height:26px}
.nav-bar a:before{display:block;font-family:icon;font-size:28px}
.nav-bar a:active{background-color:#efefef;color:#666;}
.nav-bar a.active{background-color:#f2c53d;color:#fff}
.nav-bar a.home:before{content:"\e6ea"}
.nav-bar a.order:before{content:"\e67d"}
.nav-bar a.notice:before{content:"\e63e"}
.nav-bar a.mine:before{content:"\e60a"}
</style>