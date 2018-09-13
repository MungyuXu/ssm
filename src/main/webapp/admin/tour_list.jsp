<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'demo_list.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="admin/bootstrap-3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="admin/bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="admin/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="admin/bootstrap-3.3.7/js/bootstrap-paginator.js"></script>
    <style type="text/css">

        /** 图片动画显示和悬停放大**/
        .photo_img {
            cursor: pointer;
            transition: all 1.0s;
        }

        .photo_img:hover {
            transform: scale(2.6);
        }
    </style>
</head>

<body>
<div class="panel panel-info">
    <div class="panel-heading">商品列表</div>
    <div class="panel-body">
        <form name="frm" class="navbar-form navbar-left" action="tour/list.do" method="post">
            <div class="form-group">
                <input type="text" name="title" id="title" class="form-control" placeholder="请输入名称"/>&nbsp;
                从&nbsp;<input type="date" name="startDate" id="startDate" class="form-control">&nbsp;到&nbsp;
                <input type="date" name="endDate" id="endDate" class="form-control">
                <button class="btn btn-success">查询</button>
                <button type="button" class="btn btn-success" onclick="location.href='admin/tour_add.jsp'">新增</button>
            </div>
            <input type="hidden" id="currPage" name="currPage" />
        </form>
    </div>
</div>

<table class="table table-bordered table-striped table-hover">
    <tr class="label-success">
        <th style="width:5%">序号</th>
        <th style="width:20%">旅游信息</th>
        <th style="width:8%">特惠价</th>
        <th style="width:8%">原价</th>
        <th style="width:8%">类别</th>
        <th style="width:8%">路线</th>
        <th style="width:15%">团期</th>
        <th style="width:15%">上线日期</th>
        <th style="width:15%">操作</th>
    </tr>
    <c:forEach items="${page.data}" var="t" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>
                <c:if test="${t.photo!=null}">
                    <img src="upload/${t.photo}" class="photo_img" width="50" height="50"/>
                </c:if>
                    ${t.title }</td>
            <td>${t.newPrice }</td>
            <td>${t.oldPrice }</td>
            <td>${t.type }</td>
            <td>${t.route }</td>
            <td>${t.term }</td>
            <td><fmt:formatDate value="${t.addDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td><a href="tour/preUpdate.do?id=${t.id}" class="btn btn-success btn-sm">修改</a>
                <a href="tour/del.do?id=${t.id}" class="btn btn-success btn-sm">删除</a></td>
        </tr>
    </c:forEach>

</table>
<div>
    共${page.totalPage}页 第${page.currPage}页
    <a href="javascript:go(1)">首页</a>
    <c:if test="${page.currPage>1 }">
    <a href="javascript:go(${page.currPage-1})">
        </c:if>
        上一页
        <c:if test="${page.currPage>1 }">
    </a>
    </c:if>
    <c:if test="${page.currPage<page.totalPage }">
    <a href="javascript:go(${page.currPage+1})">
        </c:if>
        下一页
        <c:if test="${page.currPage>=page.totalPage }">
    </a>
    </c:if>
    <a href="javascript:go(${page.totalPage})">末页</a>
</div>

</body>

<script>
    function go(currPage) {
        alert(currPage)
        $('#currPage').val(currPage)
        document.frm.submit();
    }
</script>

</html>
