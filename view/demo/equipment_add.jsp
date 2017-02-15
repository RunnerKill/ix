<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>设备添加</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body">
    <div class="ui-content">
        <div class="eqadd ui-form">
        <form class="validate" action="view/demo/equipment_list.jsp" method="post" onsubmit="return callbackForm(this)">
            <div class="image">
                <a id="add_photo" class="" href="javascript:;">
                </a>
                <input name="image" type="file" accept="image/*" capture="photo">
            </div>
            <dl class="box">
            	<dt><label for="">设备名称</label></dt>
            	<dd><input class="required" name="name" type="text" placeholder="请输入设备名称"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">资产编号</label></dt>
            	<dd><input class="required" name="no" type="text" placeholder="请输入资产编号"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">型号</label></dt>
            	<dd><input name="type" type="text" placeholder="请输入型号"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">规格</label></dt>
            	<dd><input name="standard" type="text" placeholder="请输入规格"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">供应商</label></dt>
            	<dd><input name="provider" type="text" placeholder="请输入供应商"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">单位</label></dt>
            	<dd><input name="office" type="text" placeholder="请输入单位"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">使用单位</label></dt>
            	<dd><input name="useroffice" type="text" placeholder="请输入使用单位"></dd>
            </dl>
            <dl class="box">
            	<dt><label for="">购买日期</label></dt>
            	<dd><input name="buytime" type="date" placeholder="请选择 购买日期"></dd>
            </dl>
            <input type="submit" value="添加">
        </form>
        </div>
    </div>
</div>
</body>
<script>
$('#add_photo').click(function() {
    $(this).next().click();
}).next().change(function(e) {
var $box = $(this).prev(),
    files = e.target.files || e.dataTransfer.files, // 从事件中获取选中的所有文件
    file = files[0];
    EXIF.getData(file, function () { // 获取exif信息回调
        var orientation = EXIF.getTag(this, 'Orientation');
        var canvas = document.createElement('canvas');
        var mpImg = new MegaPixImage(this);
        var mw = 1080, mh = 0;
        if (orientation == 6 || orientation == 8) { // 进行了横纵坐标对换
            mh = 0;
            mw = 1080;
        }
        mpImg.render(canvas, {
            maxWidth: mw,
            maxHeight: mh,
            orientation: orientation
        }, function () {
            var dataUrl = canvas.toDataURL(file.type, 0.8);
            $box.addClass('haspic')
                .html('<img src="' + dataUrl + '">');
        });
    });
});
</script>
<style>
.eqadd {
    padding: 0 20px;
}
.eqadd .image>a {
    display: block;
    width: 80px;
    height: 80px;
    margin: 70px auto;
    font-family: icon;
    font-size: 30px;
    color: #fff;
    background-color: #888;
    border-radius: 50%;
    text-align: center;
    line-height: 75px;
}
.eqadd .image>a:before {
    content: "\e633";
}
.eqadd .image>a:active {
    color: #ccc;
    background-color: #444;
}
.eqadd .image>a.haspic {
    width: 100%;
    height: 100%;
    margin: 0;
}
.eqadd .image>a.haspic:before {
    content: "";
}
.eqadd .image>a.haspic>img {
    width: 100%;
    height: 100%;
}
.eqadd .image>input {
    display: none;
}
.eqadd dl.box {
    display: flex;
    margin: 15px 0;
    line-height: 2em;
    border: none;
    padding: 0;
    border-radius: 0;
    border-bottom: 1px solid #ccc;
}
.eqadd dt {
    width: 6em;
}
.eqadd dl.err dt {
    color: #e64340;
}
</style>
</html>
