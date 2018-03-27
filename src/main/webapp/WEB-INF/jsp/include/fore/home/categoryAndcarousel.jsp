<%--
    分类与轮播
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<script>
    function showProductsAsideCategorys(cid) {
        $("div.eachCategory[cid=" + cid + "]").css("background", "white");
        $("div.eachCategory[cid=" + cid + "] a").css("color", "#87CEFA");
        $("div.productsAsideCategorys[cid=" + cid + "]").show();
    }

    function hideProductsAsideCategorys(cid) {
        $("div.eachCategory[cid=" + cid + "]").css("background-color", "#e2e2e3");
        $("div.eachCategory[cid=" + cid + "] a").css("color", "#000");
        $("div.productsAsideCategorys[cid=" + cid + "]").hide();
    }

    $(function () {
        $("div.eachCategory").mouseenter(function () {
            var cid = $(this).attr("cid");
            showProductsAsideCategorys(cid);
        });
        $("div.eachCategory").mouseleave(function () {
            var cid = $(this).attr("cid");
            hideProductsAsideCategorys(cid);
        });
        $("div.productsAsideCategorys").mouseenter(function () {
            var cid = $(this).attr("cid");
            showProductsAsideCategorys(cid);
        });
        $("div.productsAsideCategorys").mouseleave(function () {
            var cid = $(this).attr("cid");
            hideProductsAsideCategorys(cid);
        });
        $("div.rightMenu span").mouseenter(function () {
            var left = $(this).position().left;
            var top = $(this).position().top;
            var width = $(this).css("width");
            var destLeft = parseInt(left) + parseInt(width) / 2;
            $("img#catear").css("left", destLeft);
            $("img#catear").css("top", top - 20);
            $("img#catear").fadeIn(500);
        });
        $("div.rightMenu span").mouseleave(function () {
            $("img#catear").hide();
        });
        var left = $("div#carousel-of-product").offset().left;
        $("div.categoryMenu").css("left", left - 20);
        $("div.categoryWithCarousel div.head").css("margin-left", left);
        $("div.productsAsideCategorys").css("left", left - 20);
    });
</script>


<div class="categoryWithCarousel">

    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid" style="margin-left: 300px">
            <div class="navbar-header">
                <li class="dropdown">
                <a class="navbar-brand" href="#" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-th-list"></span>
                    商品分类
                </a>
                    <ul class="dropdown-menu" style="margin-top: 40px">
                        <c:forEach items="${cs}" var="c" varStatus="st">
                            <li cid="${c.id}">
                                <a href="forecategory?cid=${c.id}">
                                    <span class="glyphicon glyphicon-link"></span>
                                        ${c.name}
                                </a>
                            <c:if test="${st.count!=cs.size()}">
                                <li class="divider"></li>
                            </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                <c:forEach items="${cs}" var="c" varStatus="st">
                    <c:if test="${st.count<=4}">
                <li><a href="forecategory?cid=${c.id}">
                    <span class="glyphicon glyphicon-tag"></span>
                        ${c.name}
                </a></li>
                    </c:if>
                </c:forEach>
                </ul>
            </div>

        </div>
    </nav>

    <%--<div style="position: relative">--%>
        <%--<%@include file="categoryMenu.jsp" %>--%>
    <%--</div>--%>

    <%--<div style="position: relative;left: 0;top: 0;">--%>
        <%--<%@include file="productsAsideCategorys.jsp" %>--%>
    <%--</div>--%>

    <%@include file="carousel.jsp" %>

    <div class="carouselBackgroundDiv">
    </div>

</div>


<%--<div class="headbar show1">--%>
<%--<div class="head ">--%>

<%--<span style="margin-left:10px" class="glyphicon glyphicon-th-list"></span>--%>
<%--<span style="margin-left:10px" >商品分类</span>--%>

<%--</div>--%>

<%--<div class="rightMenu">--%>
<%--<c:forEach items="${cs}" var="c" varStatus="st">--%>
<%--<c:if test="${st.count<=4}">--%>
<%--<span>--%>
<%--<a href="forecategory?cid=${c.id}">--%>
<%--${c.name}--%>
<%--</a></span>--%>
<%--</c:if>--%>
<%--</c:forEach>--%>
<%--</div>--%>

<%--</div>--%>