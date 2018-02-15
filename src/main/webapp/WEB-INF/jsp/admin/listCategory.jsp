<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<title>分类管理</title>
<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    分类管理
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                    <li class="active">Here</li>
                </ol>
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
                                        <%--class="success"--%>
                                        <th>ID</th>
                                        <th>图片</th>
                                        <th>分类名称</th>
                                        <th>属性管理</th>
                                        <th>产品管理</th>
                                        <th>编辑</th>
                                        <th>删除</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${cs}" var="c">

                                        <tr>
                                            <td>${c.id}</td>
                                            <td><img height="40px" src="img/category/${c.id}.jpg"></td>
                                            <td>${c.name}</td>

                                            <td><a href="admin_property_list?cid=${c.id}"><span
                                                    class="glyphicon glyphicon-th-list"></span></a></td>
                                            <td><a href="admin_product_list?cid=${c.id}"><span
                                                    class="glyphicon glyphicon-shopping-cart"></span></a></td>
                                            <td><a href="admin_category_edit?id=${c.id}"><span
                                                    class="glyphicon glyphicon-edit"></span></a></td>
                                            <td><a deleteLink="true" href="admin_category_delete?id=${c.id}"><span
                                                    class="   glyphicon glyphicon-trash"></span></a></td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pageDiv dataTables_paginate paging_simple_numbers pull-right">
                    <%@include file="../include/admin/adminPage.jsp" %>
                </div>
            </section>
        </div>
        <section class="content">
            <div class="row" align="c">
                <!-- left column -->
                <div class="col-md-4">
                    <!-- general form elements -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">新增分类</h3>
                        </div>
                        <form method="post" id="addForm" action="admin_category_add"
                              enctype="multipart/form-data" class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">分类名称</label>
                                    <div class="col-xs-5">
                                        <input id="name" name="name" type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="categoryPic" class="col-sm-2 control-label">分类图片</label>
                                    <div class="col-xs-5">
                                        <input id="categoryPic" accept="image/*" type="file" name="image">
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <input type="reset" class="btn btn-default" placeholder="重 置" value="重置"/>
                                <input type="submit" class="btn btn-info pull-right" placeholder="提 交" value="提交"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

    <%@include file="../include/admin/adminFooter.jsp" %>
<script>
    $(function () {
        $("#addForm").submit(function () {
            if (!checkEmpty("name", "分类名称"))
                return false;
            if (!checkEmpty("categoryPic", "分类图片"))
                return false;
            return true;
        });
    });
</script>
</body>
</html>


