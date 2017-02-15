v1.0-beta 2016/11/22
ix框架（h5/css3/js2.0）初版

v1.5-beta 2016/12/2
1. 优化了layer弹层的性能，减少不必要的请求遮罩层
2. 修改了列表页初始化方法，具体内容如下，详情请继续参照静态页面equipment_list.jsp系列。
    1> 方法名由pull改为ix.list
    2> 调用形式由$(selector).pull(options)改为ix.list(id, options)
    3> 绑定了页面刷新按钮的click事件，和页面头部搜索框的enter事件
    4> 额外提供了两个方法，ix.refresh(id, callback)和ix.search(id, datas, callback)，分别用于自定义刷新和搜索功能的实现

此次更新需修改以下地方：
1. 所有body标签必须加上class="ui-page"；
2. 所有用到页面底部圆形悬浮按钮的地方，必须用class="ui-cells"的div包含，且加上class="btn-cell"样式的a标签，如<div class="ui-cells"><a class="btn-cell add" href="view/equipment_add.jsp"></a></div>；
3. 所有用到ix.list方法初始化的列表页，必须是ul标签容器，且不需要初始化内容；
4. 列表页的二级类别样式待完善，涉及功能请先自己调用ix.search方法实现。

v1.6-beta 2016/12/6
1. 增加表单回调confirm确认，调用方法：<form action="xxx" onsubmit="return callbackForm(this, confirmMsg)">...</form>
2. 增加表单回调防重复提交机制
3. 更新ix.confirm方法，由单一回调ix.confirm(text, cb)改为双回调ix.confirm(text, cbyes, cbno)