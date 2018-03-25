<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>


<title>属性管理</title>

<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <section class="content-header">
                <h1>属性管理</h1>
                <ol class="breadcrumb">
                    <li><a href="admin_category_list"><i class="fa fa-dashboard"></i> 所有分类</a></li>
                    <li><a href="admin_property_list?cid=${c.id}">${c.name}</a></li>
                    <li class="active">属性管理</li>
                </ol>
            </section>

            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-body">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>属性名称</th>
                                        <th>编辑</th>
                                        <th>删除</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ps}" var="p">

                                        <tr>
                                            <td>${p.id}</td>
                                            <td>${p.name}</td>
                                            <td><a href="admin_property_edit?id=${p.id}"><span
                                                    class="glyphicon glyphicon-edit"></span></a></td>
                                            <td><a deleteLink="true"
                                                   href="admin_property_delete?id=${p.id}"><span
                                                    class="     glyphicon glyphicon-trash"></span></a></td>

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

            <section class="content">
                <div class="row" align="c">
                    <!-- left column -->
                    <div class="col-md-4">
                        <!-- general form elements -->
                        <div class="box box-info">
                            <div class="box-header with-border">
                                <h3 class="box-title">新增属性</h3>
                            </div>
                            <form method="post" id="addForm" action="admin_property_add" class="form-horizontal">

                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="name" class="col-sm-2 control-label">属性名称</label>
                                        <div class="col-xs-5">
                                            <input id="name" name="name" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="box-footer">
                                    <input type="hidden" name="cid" value="${c.id}">
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
</div>

<%@include file="../include/admin/adminFooter.jsp" %>

<script>
    $(function () {

        $("#addForm").submit(function () {
            if (checkEmpty("name", "属性名称"))
                return true;
            return false;
        });
    });
</script>
</body>
</html>