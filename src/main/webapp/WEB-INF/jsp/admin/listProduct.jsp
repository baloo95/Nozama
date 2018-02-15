<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<title>产品管理</title>
<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    产品管理
                </h1>
                <ol class="breadcrumb">
                    <li><a href="admin_category_list">所有分类</a></li>
                    <li><a href="admin_product_list?cid=${c.id}"><i class="fa fa-dashboard"></i>${c.name}</a></li>
                    <li class="active">产品管理</li>
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
                                        <th>ID</th>
                                        <th>图片</th>
                                        <th>产品名称</th>
                                        <th>产品小标题</th>
                                        <th>原价格</th>
                                        <th>优惠价格</th>
                                        <th>库存数量</th>
                                        <th>图片管理</th>
                                        <th>设置属性</th>
                                        <th>编辑</th>
                                        <th>删除</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ps}" var="p">
                                        <tr>
                                            <td>${p.id}</td>
                                            <td>

                                                    <%--<c:if test="${!empty p.firstProductImage}">--%>
                                                    <%--<img width="40px" src="img/productSingle/${p.firstProductImage.id}.jpg">--%>
                                                    <%--</c:if>--%>

                                            </td>
                                            <td>${p.name}</td>
                                            <td>${p.subTitle}</td>
                                            <td>${p.originalPrice}</td>
                                            <td>${p.promotePrice}</td>
                                            <td>${p.stock}</td>
                                            <td><a href="admin_productImage_list?pid=${p.id}"><span
                                                    class="glyphicon glyphicon-picture"></span></a></td>
                                            <td><a href="admin_propertyValue_edit?pid=${p.id}"><span
                                                    class="glyphicon glyphicon-th-list"></span></a></td>

                                            <td><a href="admin_product_edit?id=${p.id}"><span
                                                    class="glyphicon glyphicon-edit"></span></a></td>
                                            <td><a deleteLink="true"
                                                   href="admin_product_delete?id=${p.id}"><span
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
                                <h3 class="box-title">新增产品</h3>
                            </div>

                            <form method="post" id="addForm" action="admin_product_add"
                                  enctype="multipart/form-data" class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="name" class="col-sm-3 control-label">产品名称</label>
                                        <div class="col-xs-5">
                                            <input id="name" name="name" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-sm-3 control-label">产品小标题</label>
                                        <div class="col-xs-5">
                                            <input id="subTitle" name="subTitle" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-sm-3 control-label">原价格</label>
                                        <div class="col-xs-5">
                                            <input id="originalPrice" name="originalPrice" type="text"
                                                   class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-sm-3 control-label">优惠价格</label>
                                        <div class="col-xs-5">
                                            <input id="promotePrice" name="promotePrice" type="text"
                                                   class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-sm-3 control-label">库存</label>
                                        <div class="col-xs-5">
                                            <input id="stock" name="stock" type="text" class="form-control">
                                        </div>
                                    </div>

                                </div>
                                <!-- /.box-body -->

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
            <%----%>

        </div>
    </div>
</div>
<%@include file="../include/admin/adminFooter.jsp" %>
<script>
    $(function () {
        $("#addForm").submit(function () {
            if (!checkEmpty("name", "产品名称"))
                return false;
//          if (!checkEmpty("subTitle", "小标题"))
//              return false;
            if (!checkNumber("originalPrice", "原价格"))
                return false;
            if (!checkNumber("promotePrice", "优惠价格"))
                return false;
            if (!checkInt("stock", "库存"))
                return false;
            return true;
        });
    });
</script>
</body>
</html>