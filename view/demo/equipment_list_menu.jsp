<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<ul class="top-menu">
    <li>
        <span>品牌</span>
        <ul class="c-menu">
        <%for(int i = 0; i < 20; i ++) { %>
            <li class="<%=i==0?"active":""%>">类别<%=i%></li>
        <%} %>
        </ul>
        <%for(int i = 0; i < 20; i ++) { %>
        <ul class="i-menu <%=i==0?"active":""%>">
        <%for(int j = 0; j < 50; j ++) { %>
            <li data-value="<%=i %>-品牌<%=j%>" class="<%=j==0?"active":""%>"><%=i %>-品牌<%=j%></li>
        <%} %>
        </ul>
        <%} %>
    </li>
    <li>
        <span>厂家</span>
        <ul>
        <%for(int i = 0; i < 10; i ++) { %>
            <li data-value="厂家<%=i%>" class="<%=i==0?"active":""%>">厂家<%=i %></li>
        <%} %>
        </ul>
    </li>
    <li>
        <span>供应商</span>
        <ul>
        <%for(int i = 0; i < 10; i ++) { %>
            <li data-value="供应商<%=i%>" class="<%=i==0?"active":""%>">供应商<%=i %></li>
        <%} %>
        </ul>
    </li>
</ul>
<div class="ui-cover hidden"></div>
<script>
$('.top-menu>li').click(function() {
    if(!$(this).is('.expand')) {
        $('.ui-cover').show();
        $(this).siblings('li').removeClass('expand').end().addClass('expand');
        ix.scroll($(this).find('>ul')[0]);
        $(this).find('ul.i-menu.active').each(function() {
            ix.scroll(this);
        });
    } else {
        $('.ui-cover').hide();
        $(this).removeClass('expand');
    }
});
$('.ui-cover').click(function() {
    $('.top-menu>li').removeClass('expand');
    $(this).hide();
});
$('.top-menu .c-menu>li').click(function() {
    var $menu = $(this).siblings('.active')
        .removeClass('active')
        .end().addClass('active')
        .parent().siblings('ul.i-menu')
        .filter('.active')
        .removeClass('active')
        .end().eq($(this).index())
        .addClass('active');
    ix.scroll($menu[0]);
    return false;
});
</script>
<style>
.ui-body{top:95px}
.top-menu{font-family:微软雅黑;position:absolute;overflow:visible;z-index:2;top:50px;left:0;width:100%;display:table;color:#888;background-color:#f7f9f7;border-bottom:1px solid #efefef}
.top-menu>li{display:table-cell;width:33.3%;text-align:center;line-height:44px;font-size:14px}
.top-menu>li:active{background-color:#eee;}
.top-menu>li:active>span{color:#666;}
.top-menu>li:not(:last-child):after{content:" ";display:block;border-left:1px solid #efefef;position:absolute;right:0;top:50%;width:0;height:30px;margin-top:-15px}
.top-menu>li>span:after{font-family:icon;font-size:12px;margin-left:5px;content:"\e64b"}
.top-menu>li>ul{position:absolute;top:44px;left:0;display:none;overflow-y:auto;width:100%;height:350px;border-bottom:1px solid #efefef;background-color:#fff;text-align:left}
.top-menu>li>ul>li{position:relative;padding:0 50px 0 30px;border-bottom:1px solid #efefef}
.top-menu>li>ul>li.active{color:#eb5932}
.top-menu>li>ul>li.active:after{position:absolute;right:30px;content:"\e66f";font-size:1pc;font-family:icon}
.top-menu>li>ul>li:active{background-color:#efefef;color:#666}
@keyframes menuexpand{from{height:0}to{height:350px}}
@-webkit-keyframes menuexpand{from{height:0}to{height:350px}}
.top-menu>li.expand{overflow:inherit;background-color:#fff}
.top-menu>li.expand>span:after{content:"\e61f"}
.top-menu>li.expand>span{color:#eb5932}
.top-menu>li.expand>ul{display:block;-webkit-overflow-scrolling:touch;overflow-scrolling:touch;animation:menuexpand .2s;-webkit-animation:menuexpand .2s}
.top-menu>li>ul.c-menu {
    background-color: #f7f9f7;
}
.top-menu>li>ul.c-menu>li {
    width: 8em;
    padding: 0 1em;
    text-align: center;
    border: none;
}
.top-menu>li>ul.c-menu>li.active {
    background-color: #fff;
}
.top-menu>li>ul.c-menu>li.active:after {content: '';}
.top-menu>li>ul.i-menu {
    left: 10em;
    right: 0;
    width: auto;
    padding-right: 10px;
}
.top-menu>li>ul.i-menu:not(.active) {display:none;}
.top-menu>li>ul.i-menu>li {
    border: 0;
    float: left;
    padding: 0 12px;
    margin: 12px 0 0 12px;
    line-height: 30px;
}
.top-menu>li>ul.i-menu>li.active {
    color: #fff;
    background-color: #eb5932;
}
.top-menu>li>ul.i-menu>li.active:after {content: '';}

</style>