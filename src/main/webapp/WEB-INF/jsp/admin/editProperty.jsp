<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<title>编辑属性</title>
<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <section class="content-header">
                <h1>编辑属性</h1>
                <ol class="breadcrumb">
                    <li><a href="admin_category_list">所有分类</a></li>
                    <li><a href="admin_property_list?cid=${p.category.id}">${p.category.name}</a></li>
                    <li class="active">编辑属性</li>
                </ol>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-body">
                                <form method="post" id="editForm" action="admin_property_update">
                                    <table class="table table-bordered table-hover">
                                        <tr>
                                            <td>属性名称</td>
                                            <td><input id="name" name="name" value="${p.name}"
                                                       type="text" class="form-control"></td>
                                        </tr>
                                        <tr class="submitTR">
                                            <td colspan="2" align="center">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <input type="hidden" name="cid" value="${p.category.id}">
                                                <button type="submit" class="btn btn-success">提 交</button>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<%@include file="../include/admin/adminFooter.jsp" %>

</body>
</html>