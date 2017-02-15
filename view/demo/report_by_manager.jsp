<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>我要上报</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content">
        <form class="validate" action="view/demo/worksheet_list.jsp" method="post" onsubmit="return callbackForm(this, '是否提交？')">
        <div class="ui-form">
            <h4>所在单位：新华医院</h4>
            <div class="box select name" id="select_name">
                <span class="tips">设备名称</span>
            </div>
            <div class="box equip-info">
                <dl>
                    <dt>设备名称：</dt>
                    <dd>放射科CT机</dd>
                </dl>
                <dl>
                    <dt>资产编号：</dt>
                    <dd>SW123232424</dd>
                </dl>
                <dl>
                    <dt>型号：</dt>
                    <dd>Q-2SAS</dd>
                </dl>
                <dl>
                    <dt>规格：</dt>
                    <dd>XL</dd>
                </dl>
            </div>
            <div class="box select type">
                <span class="tips">故障类型</span>
            </div>
            <div class="box address">
                <input class="required" name="address" type="text" placeholder="故障地址">
            </div>
            <div class="box description blob">
                <span class="tips">故障描述</span>
                <p>
                    <textarea class="required" name="description" placeholder="请输入..."></textarea>
                </p>
                <ul class="images"></ul>
            </div>
            <div class="box contact">
                <input name="contact" type="text" placeholder="联系人">
            </div>
            <div class="box telphone">
                <input name="telphone" type="text" placeholder="联系电话">
            </div>
        </div>
        <input type="submit" value="提交" />
        </form>
    </div>
</div>
</body>
<script>
$('.images').iphoto_init({
    server : 'http://192.168.1.61:9090/file',
    project : 'emsp',
    onError : function(msg) {
        console.error(msg);
    }
});
$('#select_name').click(function() {
    ix.slide('view/demo/equipment_select.jsp', 'left');
});
</script>
<style>
.ui-content{padding:20px 30px}
ul.images{padding:5px 10px 0 10px;border-top:1px solid #e8e7e4}
ul.images li{float:left;margin:0 5px 5px 0}
ul.images li>a{display:block;width:80px;height:50px}
ul.images .add{background:#ccc;font-family:icon;text-align:center;line-height:50px;font-size:30px}
.ui-form .equip-info{line-height:28px;padding:10px 15px;font-size:14px}
</style>
</html>
