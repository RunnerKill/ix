<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<div class="ui-page">
<%@ include file="/iportal/common/header_search.jsp" %>
<%@ include file="equipment_list_menu.jsp" %>
<div class="ui-body">
    <div class="ui-content eqlist">
        <ul>
            <%for(int i = 0; i < 20; i ++) { %>
        	<li>
                <a class="box" href="javascript:;">
                    <img src="http://usr.im/80x60?text=设备图片">
                    <span>设备名称</span>
                    <p>品牌</p>
                </a>
                <a class="btn" href="javascript:;">添加</a>
            </li>
            <%} %>
        </ul>
    </div>
</div>
<%@ include file="equipment_list_toolbar.jsp" %>
</div>
<script>
$('.eqlist .box').click(function() {
    ix.pop('view/demo/equipment_snap.jsp');
});
</script>
<style>
.eqlist{padding: 0}
.eqlist li{position:relative;border-top:1px solid #eee}
.eqlist li:first-child{border:none}
.eqlist .box{display:block;padding:15px 105px 15px 20px}
.eqlist .box:active{background-color:#efefef}
.eqlist img{width:80px;height:60px;float:left;margin-right:10px}
.eqlist span{display:block;color:#444;height:24px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.eqlist p{font-size:14px;line-height:21px;height:42px;overflow:hidden；text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical}
.eqlist .btn{position:absolute;right:15px;top:50%;font-size:16px;padding:0 .5em 0 1em;line-height:30px;margin-top:-15px;text-align:center;border-radius:5px}
</style>
