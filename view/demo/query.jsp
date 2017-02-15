<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>设备查询</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body">
    <div class="ui-content">
        <img class="phone" src="media/imgs/sweep.png">
        <div class="text">
            <p>1. 扫描需要维修的设备二维码进入信息填写界面</p>
            <p>2. 填写基本信息</p>
            <p>3. 描述诊断故障，完善故障信息</p>
            <p>4. 提交信息</p>
        </div>
        <a class="btn" href="javascript:;">扫一扫</a>
    </div>
</div>
</body>
<style>
.ui-content{padding:0 45px}
.phone{margin:50px auto;width:85px}
.text{line-height:2em}
</style>
</html>
