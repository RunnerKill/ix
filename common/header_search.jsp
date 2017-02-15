<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="ui-header" id="searchBar">
    <div class="search-bar">
        <i></i>
        <input class="keywords" type="text" placeholder="搜索">
        <a class="clear" href="javascript:;"></a>
        <label><i></i>搜索</label>
    </div>
    <a class="cancel" href="javascript:;">取消</a>
</div>
<script>
$(function(){
    var $searchBar = $('#searchBar'),
        $searchText = $searchBar.find('label'),
        $searchInput = $searchBar.find('input'),
        $searchClear = $searchBar.find('.clear'),
        $searchCancel = $searchBar.find('.cancel');

    function cancelSearch(){
        $searchInput.val('');
        $searchBar.removeClass('writing');
        $searchText.show();
    }
    $searchText.on('click', function(){
        $searchBar.addClass('writing');
        $searchInput.focus();
    });
    $searchInput
        .on('blur', function () {
            if(!this.value.length) cancelSearch();
        })
        .on('input', function(){
            if(this.value.length) {
                $searchClear.show();
            } else {
                $searchClear.hide();
            }
        })
    ;
    $searchClear.on('click', function(){
        $searchInput.val('');
        $searchInput.focus();
        $searchClear.hide();
    });
    $searchCancel.on('click', function(){
        cancelSearch();
        $searchInput.blur();
    });
});
</script>
<style>
.ui-body{top:51px}
.ui-header{display:flex;padding:8px 15px;background-color:#ecefee;border-bottom:1px solid #efefef;box-shadow:0 1px 8px 0 #ccc}
.cancel{display:none;margin-left:10px;white-space:nowrap;line-height:34px}
.search-bar{position:relative;background-color:#fff;border-radius:5px;border:1px solid #ddd;line-height:32px;padding:0 30px;font-size:14px;-webkit-box-flex:1;-webkit-flex:auto;flex:auto}
.search-bar label{position:absolute;left:0;top:0;right:0;bottom:0;color:#aaa;background-color:#fff;text-align:center;border-radius:5px}
.search-bar i:before{color:#aaa;font-style:normal;font-family:icon;content:"\e63f"}
.search-bar>i{position:absolute;top:0;left:0;width:30px;text-align:center;line-height:30px}
.search-bar label>i{margin-right:1em}
.search-bar .clear{display:none;position:absolute;top:0;right:0;width:30px;text-align:center;color:#b2b2b2;font-size:14px;font-family:icon;line-height:32px}
.search-bar .clear:before{content:"\e60d"}
.ui-header.writing .cancel{display:block}
.ui-header.writing label{display:none}
</style>