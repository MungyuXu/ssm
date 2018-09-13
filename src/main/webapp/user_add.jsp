<%@ page language="java" pageEncoding="utf-8"%>
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
        <h3 class="panel-title">新增</h3>
    </div>
    <div class="panel-body">
        <%--action="user/add.do"--%>
        <form class="form-horizontal"  method="post" enctype="multipart/form-data">

            <!--<legend>旅游资讯</legend>-->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="username">标题</label>
                <div class="col-sm-4">
                    <input class="form-control" name="username" id="username" type="text" placeholder="用户名"/>
                </div>
                <label class="col-sm-2 control-label" for="password">赞助</label>
                <div class="col-sm-4">
                    <input class="form-control" name="password" id="password"  placeholder="密码"/>
                </div>
            </div>

            <div class="form-group" style="text-align: center">
                <button type="button" id="btn_add"  class="btn-info btn-lg">提交</button>
            </div>
        </form>
    </div>
</div>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
<script>
    $(function(){
        $('#btn_add').click(function(){
            var username = $('#username').val()
            var password = $('#password').val()
            $.getJSON('user/add.do',{'username':username,'password':password},function(data){
                console.log(data)
                console.log(111111111111)
                if(data === 1){ //成功
                    alert("添加成功")
                    // location.href = '.jsp'
                }else{
                        alert("用户名已存在")
                }
            })
        })
    })

</script>
</html>