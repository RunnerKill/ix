<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
Thread.sleep(3000); // 模拟后台耗时
int p = Integer.parseInt(request.getParameter("page")); // 模拟数据页数
if(p < 3) {
    for(int i = 0; i < 8; i ++) {
%>
<li>
    <a class="box" href="view/demo/equipment_detail.jsp">
        <img src="http://usr.im/80x60?text=设备图片">
        <span>第<%=p%>页 - 设备<%=i %></span>
        <p>品牌</p>
    </a>
</li>
<%
    }
}
%>