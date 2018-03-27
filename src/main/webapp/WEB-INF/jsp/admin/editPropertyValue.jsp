<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<script src="js/jquery/2.0.0/jquery.min.js"></script>

<title>编辑产品属性值</title>

<script>
    $(function() {
        $("input.pvValue").keyup(function(){
            var value = $(this).val();
            var url = "admin_propertyValue_update";
            var pvid = $(this).attr("pvid");
            var parentSpan = $(this).parent("span");
            var input = $(this);
            parentSpan.css("border","1px solid yellow");
            $.post(
                url,
                {"value":value,"id":pvid},
                function(result){
                    if("success"==result)
                        input.css("background-color","green");
                    else
                        parentSpan.css("background-color","red");
                }
            );
        });
    });
</script>
<div class="wrapper">
    <div class="content-wrapper">
        <div class="workingArea">
            <section class="content-header">
                <h1>编辑属性</h1>
                <ol class="breadcrumb">
                    <li><a href="admin_category_list">所有分类</a></li>
                    <li><a href="admin_product_list?cid=${p.category.id}">${p.category.name}</a></li>
                    <li class="active">${p.name}</li>
                    <li class="active">编辑产品属性</li>
                </ol>
            </section>

            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-body">
                                <div class="editPVDiv">
                                    <ul class="list-group">
                                    <c:forEach items="${pvs}" var="pv">
                                        <li class="list-group-item">
                                        <div class="eachPV">
                                            <span class="pvName">${pv.property.name}</span>
                                            <span class="pvValue">
                                                <input class="pvValue" pvid="${pv.id}" type="text" value="${pv.value}">
                                            </span>
                                        </div>
                                        </li>
                                    </c:forEach>
                                    </ul>
                                    <div style="clear:both"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>