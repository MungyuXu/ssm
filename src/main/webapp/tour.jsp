<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="#" class="navbar-brand" id="logo"><img src="image/if_Travel_-_Baloon_82288.png" height="50"></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li><a href="tour.html"><span class="glyphicon glyphicon-th-list"></span> 旅游</a></li>
            <li><a href="strategy.html"><span class="glyphicon glyphicon-fire"></span> 攻略</a></li>
            <li><a href="about.html"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
            <li><a href="#" onclick="showModal()"><span class="glyphicon glyphicon-question-sign"></span> 登录</a></li>
        </ul>
    </div>
</nav>
<div id="myCarousel" class="carousel slide wrap">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active"  >
            <img src="image/tour1.jpg" >
        </div>
        <div class="item"  >
            <img src="image/tour2.jpg" >
        </div>
        <div class="item"  >
            <img src="image/tour3.jpg" >
        </div>
    </div>
</div>
<div class="container content">
    <div class="row">
        <div class="col-md-8">
            <div class="well">
                <span class="label label-primary title">限时特价</span>
            </div>
        </div>
        <div class="col-md-4">
            <div class="well">
                <span class="label label-danger title">热门旅游</span>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-md-8">
            <c:forEach items="${list}" var="t" varStatus="status">

                <%--<c:if test="${status.index%2 == 0}">整除</c:if>--%>
                <div class="media tour">
                    <div class="media-left">
                        <a href="#">
                            <c:if test="${t.photo==null || t.photo=='' }">
                                <img class="media-object" src="image/tour7.jpg" width="380" height="230" alt="...">
                            </c:if>
                            <c:if test="${t.photo!=null && t.photo!='' }">
                                <img class="media-object" src="image/${t.photo }" width="380" height="230" alt="...">
                            </c:if>
                        </a>
                    </div>
                    <div class="media-body">
                        <h2 class="media-heading">${t.title}</h2>
                        <p class="text-muted">${t.description }.</p>
                        <ol>
                            <li><mark>交通</mark> ：${t.traffic }</li>
                            <li><mark>团期</mark> ：${t.term }</li>
                        </ol>
                        <div class="buy">
                            <h2><span class="label label-danger">￥<strong>${t.newPrice }</strong><s>¥${t.oldPrice }</s></span></h2>
                            <div class="reserve"><a href="#" class="btn btn-info btn-lg" role="button">立即抢购</a></div>
                        </div>
                        <div class="tourfooter">
                                ${t.provider }
                        </div>
                    </div>
                    <span>${t.route }</span>
                </div>
            </c:forEach>



        </div>


        <div class="col-md-4">
            <div class="row">

                <c:forEach items="${list2}" var="a" varStatus="status">
                    <%--<div class="col-md-2">--%>
                    <div class="col-lg-6" style="width:50%">
                        <div class="thumbnail" >
                            <%--<img src="image/${a.photo}">--%>
                            <c:if test="${a.photo==null || a.photo=='' }">
                                <img  src="image/hot1.jpg">
                            </c:if>
                            <c:if test="${a.photo!=null && a.photo!='' }">
                                <img src="image/${a.photo }" >
                            </c:if>
                            <div class="caption">
                                <p>${a.title}</p>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>



            <div class="well">
                <span class="label label-danger title">旅游百宝箱</span>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <p class="bg-info bg"><span><img src="image/trea1.png"></span>
                        <a href="#">天气预报</a></p>
                </div>
                <div class="col-lg-6">
                    <p class="bg-info bg"><span><img src="image/trea1.png"></span>
                        <a href="#">火车票查询</a></p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <p class="bg-info bg"><span><img src="image/trea1.png"></span>
                        <a href="#">航空查询</a></p>
                </div>
                <div class="col-lg-6">
                    <p class="bg-info bg"><span><img src="image/trea1.png"></span>
                        <a href="#">地铁线路查询</a></p>
                </div>
            </div>
        </div>

    </div>
    <div id="modal" class="modal " tabindex="-1">
        <!-- 窗口声明 -->
        <div class="modal-dialog">
            <!-- 内容声明 -->
            <div class="modal-content">
                <div class="modal-header">
                    <button id="close" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                    <h4 class="modal-title">会员登陆</h4>
                </div>
                <div class="modal-body">
                    <p><form  method="post">
                        <div class="form-group">
                            <label> Username</label>
                            <input type="text" class="form-control" id="username1" placeholder="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for=>Password</label>
                            <input type="password" class="form-control" id="password1" placeholder="Password" name="password">
                        </div>
                <button type="submit" id="btn1" class="btn btn-default">登录</button>
                    <span id="show"></span>
                </form></p>
            </div>

        </div>
    </div>
</div>

</div>
<footer class="footer">
    <div class="container">
        <p>预订帮助 | 安全指南 | 合作事宜</p>
        <p>苏公网备32010502000018号</p>
    </div>
</footer>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>

<script type="text/javascript">

    $(function(){
        $('#close').click(function(){
            $('#modal').removeClass('show')
        })

        //设置4秒轮播一次
        $("#myCarousel").carousel(
            {interval:4000}
        );
    })

    //显示模态框
    function showModal(){
        $('#modal').addClass('show')
    }
</script>

<script>
    $(function(){
        $('#btn1').click(function(){
            var username = $('#username1').val()
            var password = $('#password1').val()
            $.getJSON('login/index.do',{'username':username,'password':password},function(data){
                if(data === 0){ //成功
                    location.href = 'index.jsp'
                }else{
                    var show = '';
                    if(data === 1) show = '用户名错误'
                    else show = '密码错误'
                    $('#show').html(show)
                }
            })
        })
    })

</script>
</html>