<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<script>
</script>

<title>用户管理</title>
<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <section class="content-header">
                <h1>用户管理</h1>
            </section>
            <br>

            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-body">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>用户名称</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${us}" var="u">
                                        <tr>
                                            <td>${u.id}</td>
                                            <td>${u.name}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="pageDiv dataTables_paginate paging_simple_numbers pull-right">
                <%@include file="../include/admin/adminPage.jsp" %>
            </div>

        </div>
    </div>
</div>
<%@include file="../include/admin/adminFooter.jsp" %>
</body>
</html>