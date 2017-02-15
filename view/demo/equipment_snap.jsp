<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!-- 设备快照 -->
<div class="ui-page eqsnap">
    <div class="ui-body card">
        <div class="ui-content">
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
        </div>
    </div>
    <a class="close" href="javascript:ix.close();"></a>
</div>
<style>
.eqsnap{display:table-cell;vertical-align:middle;text-align:center;background-color:transparent}
.eqsnap .card{position:relative;display:inline-block;text-align:left;top:50px;width:80%;height:70%;border-radius:5px;box-shadow:0 0 5px 1px #444}
.eqsnap .ui-content{padding:10px}
.eqsnap .card h4{font-weight:400;color:#f2c53d;line-height:2em}
.eqsnap .card h4:before{font-family:icon;content:"\e6e9"}
.eqsnap .card dl.divider{height:15px;margin:10px -10px;background-color:#f0efef}
.eqsnap .card dl{padding:0 1em 0 2em;line-height:1.8em}
.eqsnap .card dt{width:6em}
.eqsnap .close{display:block;width:54px;height:54px;border-radius:50%;position:relative;margin:60px auto;font-family:icon;background-color:#fff;font-size:50px;text-align:center;line-height:60px}
.eqsnap .close:before{content:"\e60d"}
.eqsnap .close:active{color:#444;background-color:#ccc}
</style>
