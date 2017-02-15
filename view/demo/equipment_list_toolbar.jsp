<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="ui-footer">
    <ul class="tool-bar">
    	<li><a class="close" href="javascript:ix.close();">关闭</a></li>
    	<li class="main"><a class="btn scan" href="javascript:;">扫一扫</a></li>
    	<li><a class="refresh" href="javascript:ix.refresh('xxj');">刷新</a></li>
    </ul>
</div>
<style>
.ui-body{bottom:61px}
.ui-footer{height:60px}
a.btn-cell{bottom: 80px;}
.tool-bar{width:100%;display:table;border-top:1px solid #efefef;box-shadow:0 -1px 8px 0 #ccc;position:absolute;bottom:0;left:0;overflow:visible;background-color:#fff}
.tool-bar li{display:table-cell;width:40%}
.tool-bar li.main,.ui-footer:before{border-radius:50%;width:80px;height:80px;position:absolute;top:-20px;left:50%;margin-left:-40px}
.ui-footer:before{content:" ";display:block;border:1px solid #efefef;box-shadow:0 -1px 8px 0 #ccc}
.tool-bar li.main{background-color:#fff}
.tool-bar li.main a.btn{border-radius:50%;width:70px;margin:5px auto;height:60px;color:#fff;letter-spacing:0}
.tool-bar a{display:block;height:50px;padding-top:10px;text-align:center;font-size:12px;color:#888;line-height:26px}
.tool-bar a:before{display:block;font-family:icon;font-size:28px}
.tool-bar a:not(.btn):active{background-color:#efefef}
.tool-bar a.close:before{content:"\e618"}
.tool-bar a.scan:before{content:"\e673"}
.tool-bar a.refresh:before{content:"\e665"}
</style>