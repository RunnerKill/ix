<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>设备详情</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<div class="ui-body">
    <div class="ui-content eqdetail">
        <div class="image"><img src="http://usr.im/200x120?text=设备照片"></div>
        <h4>设备详情</h4>
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
        <dl class="divider"></dl>
        <h4>单位信息</h4>
        <dl>
            <dt>购买时间：</dt>
            <dd>2016年11月17日</dd>
        </dl>
        <dl>
            <dt>管理人：</dt>
            <dd>张三</dd>
        </dl>
        <dl>
            <dt>保修周期：</dt>
            <dd>1年</dd>
        </dl>
        <dl>
            <dt>单位：</dt>
            <dd>新华医院</dd>
        </dl>
        <dl class="divider"></dl>
        <h4>厂商信息</h4>
        <dl>
            <dt>维修厂商：</dt>
            <dd>XXX工厂</dd>
        </dl>
        <dl>
            <dt>直接服务商：</dt>
            <dd>XXX技术有限公司</dd>
        </dl>
        <dl class="divider"></dl>
        <h4>其它信息</h4>
        <dl>
            <dt>相关网址：</dt>
            <dd>http://www.abc.com.cn</dd>
        </dl>
        <dl>
            <dt>版权信息：</dt>
            <dd>CopyRight&copy;XXX技术有限公司</dd>
        </dl>
        <dl class="divider"></dl>
    </div>
</div>
</body>
<style>
.eqdetail .image>img{width: 100%}
.eqdetail h4{font-weight:400;color:#f2c53d;line-height:2em}
.eqdetail h4:before{font-family:icon;content:"\e6e9"}
.eqdetail dl.divider{height:15px;margin:10px -10px;background-color:#f0efef}
.eqdetail dl{padding:0 1em 0 2em;line-height:1.8em}
.eqdetail dt{width:6em}
</style>
</html>
