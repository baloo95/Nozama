<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<script src="http://how2j.cn/study/jquery.min.js"></script>

<script>
    $(function () {
        $("#b1").click(function () {
            $("#h").attr("align", "right");
        });

    });

</script>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    <br>
                    <br>

                    <h1 id="h" align="center">居中标题</h1>
                    <div>
                    <button id="b1" class="pull-right">修改align属性为right</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<%@include file="../include/admin/adminFooter.jsp" %>

</body>
</html>


