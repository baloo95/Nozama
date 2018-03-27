<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<nav class="top  navbar-fixed-top">
    <div class="top_middle">
    <a href="${contextPath}">
        <span style="color:#1ab7ea;margin:0px" class=" glyphicon glyphicon-home "></span>
        Nozama首页
    </a>

    <c:if test="${!empty user}">
        <span>欢迎光临,</span>
        <a href="login.jsp">${user.name}</a>
        <a href="forelogout">退出</a>
    </c:if>


    <c:if test="${empty user}">
        <a href="loginPage">
            <span style="color:#1ab7ea;margin:0px" class=" glyphicon glyphicon-log-in" ></span>
            请登录</a>
        <a href="registerPage">
            <span style="color:#1ab7ea;margin:0px" class=" glyphicon glyphicon-user" ></span>
            免费注册</a>
    </c:if>

    <span class="pull-right" style="margin-right: 300px">
            <a href="forebought">
                <span style="color:#1ab7ea;margin:0px" class=" glyphicon glyphicon-th-list" ></span>
                我的订单</a>
            <a href="forecart">
            <span style="color:#1ab7ea;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
            购物车<strong>${cartTotalItemNumber}</strong>件</a>
    </span>
    </div>
</nav>