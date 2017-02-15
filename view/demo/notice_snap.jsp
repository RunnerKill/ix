<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<div class="ui-page ntcsnap">
    <div class="ui-body gray">
        <div class="ui-content">
            <div class="datetime"><span>2016年11月23日 23:12</span></div>
            <div class="box">
                <img class="head" src="http://usr.im/50x50?text=头像">
                <p class="text">消息内容消息内容消息内容消息内容消</p>
            </div>
        </div>
    </div>
    <a class="close" href="javascript:ix.close();"></a>
</div>
<style>
.ntcsnap{display:table-cell;vertical-align:middle;text-align:center;background-color:transparent}
.ntcsnap .ui-body{position:relative;display:inline-block;text-align:left;top:50px;width:80%;height:70%;border-radius:5px;box-shadow:0 0 5px 1px #444}
.ntcsnap .ui-content{padding: 0 25px 0 15px;}
.ntcsnap .datetime {
    font-size: 12px;
    line-height: 20px;
    text-align: center;
    margin: 20px 0;
}
.ntcsnap .datetime span {
    border-radius: 5px;
    color: #fff;
    padding: 3px 10px;
    background-color: #ccc;
}
.ntcsnap .box {
    margin: 20px 0;
    padding-left: 60px;
    position: relative;
}
.ntcsnap .box .head {
    position: absolute;
    top: 0;
    left: 0;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: #fff;
    padding: 2px;
    box-shadow: 1px 2px 3px 1px #ccc;
}
.ntcsnap .box .text {
    display: inline-block;
    position: relative;
    border-radius: 5px;
    background-color: #fff;
    line-height: 1.5em;
    padding: 10px 15px;
    box-shadow: 1px 2px 5px 1px #ccc;
}
.ntcsnap .box .text:before {
    display: block;
    content: " ";
    position: absolute;
    top: 15px;
    left: -8px;
    width: 0;
    height: 0;
    border-top: 8px solid transparent;
    border-right: 12px solid #fff;
    border-bottom: 8px solid transparent;
}
.ntcsnap .close{display:block;width:54px;height:54px;border-radius:50%;position:relative;margin:60px auto;font-family:icon;background-color:#fff;font-size:50px;text-align:center;line-height:58px}
.ntcsnap .close:before{content:"\e60d"}
.ntcsnap .close:active{color:#444;background-color:#ccc}
</style>