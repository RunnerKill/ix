<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>消息选择</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body gray">
    <div class="ui-content ntcselect">
        <%for(int i = 0; i < 9; i ++) { %>
        <div class="box">
            <a class="main" href="javascript:;">
                <span class="receiver">张某某</span>
                <p class="content">消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字消息内容文字</p>
            </a>
            <a class="add" href="javascript:;">添加</a>
            <label class="select" for="ntcselect_<%=i %>">
            </label>
                <input id="ntcselect_<%=i %>" name="selected" type="checkbox" value="<%=i %>" />
        </div>
        <%} %>
        <a href="javascript:;" class="btn">发送</a>
    </div>
</div>
</body>
<script>
$('.ntcselect .select').click(function() {
    $(this).toggleClass('selected');
});
$('.ntcselect .main').click(function() {
    ix.open('view/demo/notice_snap.jsp');
});
</script>
<style>
.ntcselect .box {
    position: relative;
    margin: 20px 0;
    border-left-width: 7px;
    border-left-style: solid;
}
.ntcselect .box:nth-child(n) {
    border-color: #f2c53d;
    color: #f2c53d;
    background-color: #f2c53d;
}
.ntcselect .box:nth-child(2n) {
    border-color: #197b30;
    color: #197b30;
    background-color: #197b30;
}
.ntcselect .box:nth-child(3n) {
    border-color: #458ccc;
    color: #458ccc;
    background-color: #458ccc;
}
.ntcselect .box:nth-child(4n) {
    border-color: #cb4f43;
    color: #cb4f43;
    background-color: #cb4f43;
}
.ntcselect .main {
    display: block;
    padding: 15px 80px 15px 10px;
    background-color: #fff;
}
.ntcselect .main:active {
    background-color: #eee;
}
.ntcselect .receiver {
    display: block;
    line-height: 30px;
    color: #888;
}
.ntcselect .receiver:before {
    content: "收件人：";
    color: #444;
}
.ntcselect .content {
    color: #444;
    text-indent: 2em;
    line-height: 25px;
    height: 100px;
    margin-top: 5px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
}
.ntcselect .add {
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    width: 70px;
    line-height: 50px;
    text-align: center;
    color: #fff;
    background-color: inherit;
}
.ntcselect .select {
    display: block;
    position: absolute;
    top: 51px;
    right: 0;
    bottom: 0;
    width: 70px;
    background-color: inherit;
}
.ntcselect input {display: none;}
.ntcselect .select:after {
    position: absolute;
    display: block;
    content: " ";
    top: 50%;
    left: 50%;
    content: "点击选择";
    margin-top: -24px;
    margin-left: -16px;
    font-size: 16px;
    right: 13px;
    color: #fff;
}
.ntcselect .select.selected:after {
    font-family: icon;
    content: "\e648";
    margin-top: -17px;
    margin-left: -10px;
    font-size: 28px;
    right: 13px;
}
.ntcselect a.btn {
    margin: 30px 20px;
}
</style>
</html>
