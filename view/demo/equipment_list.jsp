<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>设备列表</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
</head>
<body class="ui-page">
<%@ include file="/iportal/common/header_search.jsp" %>
<%@ include file="equipment_list_menu.jsp" %>
<div class="ui-body">
    <div class="ui-content eqlist">
        <ul id="equipment_list">
            <!-- 此处无需内容，直接由首次请求填充 -->
        </ul>
    </div>
</div>
<div class="ui-cells">
    <a class="btn-cell refresh" target="equipment_list" href="javascript:;"></a>
    <a class="btn-cell add" href="view/demo/equipment_add.jsp"></a>
</div>
</body>
<script>
ix.list('equipment_list', {
    url : 'view/demo/equipment_data.jsp',
    data : {
        // 自定义参数
    },
    page : 'page',  // 当前页码的key
    keywords : 'kw',  // 当前搜索框的key
    callback : function(boxs) {
        // 回调 this是当前容器，boxs是加载的数据项
    }
});
$('.top-menu>li>ul>li').click(function() {
    var type = $(this).attr('data-value');
    ix.search('equipment_list', {
        type : type
    }, function() {
        console.log('search completed!~');
    });
});
</script>
<style>
.eqlist{padding: 0}
.eqlist li{border-top:1px solid #eee}
.eqlist li:first-child{border:none}
.eqlist .box{position:relative;display:block;padding:15px 105px 15px 20px}
.eqlist .box:after,.eqlist .box:before{position:absolute;top:0;font-size:14px}
.eqlist .box:before{content:"更多信息";right:35px;line-height:95px}
.eqlist .box:after{font-family:icon;content:"\e608";right:15px;line-height:100px}
.eqlist .box:active{background-color:#efefef}
.eqlist img{width:80px;height:60px;float:left;margin-right:10px}
.eqlist span{display:block;color:#444;height:24px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.eqlist p{font-size:14px;line-height:21px;height:42px;overflow:hidden；text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical}
</style>
</html>
