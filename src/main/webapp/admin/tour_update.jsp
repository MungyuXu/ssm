<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="css/about.css">
</head>
<body>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">修改</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" action="tour/update.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${tour.id}"/>
            <!--<legend>旅游资讯</legend>-->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">标题</label>
                <div class="col-sm-4">
                    <input class="form-control" name="title" id="title" type="text" placeholder="请输入标题" value="${tour.title}"/>
                </div>
                <label class="col-sm-2 control-label" for="new_price">赞助</label>
                <div class="col-sm-4">
                    <input class="form-control" name="provider" id="provider"  placeholder="请输入赞助提供商" value="${tour.provider}"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">原价</label>
                <div class="col-sm-4">
                    <input class="form-control" name="oldPrice" id="oldPrice" type="number" placeholder="请输入原价" value="${tour.oldPrice}" />
                </div>
                <label class="col-sm-2 control-label" for="new_price">特惠价</label>
                <div class="col-sm-4">
                    <input class="form-control" name="newPrice" id="newPrice" type="number" placeholder="请输入特惠价" value="${tour.newPrice}"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="traffic">交通</label>
                <div class="col-sm-4">
                    <input class="form-control" name="traffic" id="traffic" type="text" placeholder="请输入交通" value="${tour.traffic}"/>
                </div>
                <label class="col-sm-2 control-label" for="term">团期</label>
                <div class="col-sm-4">
                    <input class="form-control" name="term" id="term"  placeholder="请输入团期" value="${tour.term}"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="type">类别</label>
                <div class="col-sm-4">
                    <select name="type" id = "type" class = "form-control">
                        <option value="限时特价" <c:if test="${tour.type=='限时特价' }">selected</c:if>  >限时特价</option>
                        <option value="热门旅游" <c:if test="${tour.type=='热门旅游' }">selected</c:if> >热门旅游</option>
                    </select>
                </div>
                <label class="col-sm-2 control-label" for="route">路线</label>
                <div class="col-sm-4">
                    <select name="route" id = "route" class = "form-control">
                        <option value="国内长线" <c:if test="${tour.route=='国内长线' }">selected</c:if> >国内长线</option>
                        <option value="出境长线" <c:if test="${tour.route=='出境长线' }">selected</c:if>>出境长线</option>
                        <option value="自助旅游" <c:if test="${tour.route=='自助旅游' }">selected</c:if>>自助旅游</option>
                        <option value="游轮观光" <c:if test="${tour.route=='游轮观光' }">selected</c:if>>游轮观光</option>
                    </select>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 control-label" for="description">简介</label>
                <div class="col-sm-10">
                   <textarea name="description" id="description" rows="3" cols="120">${tour.description}</textarea>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 control-label" for="description">照片</label>
                <div class="col-sm-10">
                  <img alt="" src="upload/${tour.photo}">
                </div>
            </div>
 			<div class="form-group" style="text-align: center">
            	<button  class="btn-info btn-lg">提交</button>        	
        	</div>
    </form>
    </div>
</div>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
</html>