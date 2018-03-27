<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
    $(function () {
        $("input.sortBarPrice").keyup(function () {
            var num = $(this).val();
            if (num.length == 0) {
                $("div.productUnit").show();
                return;
            }

            num = parseInt(num);
            if (isNaN(num))
                num = 1;
            if (num <= 0)
                num = 1;
            $(this).val(num);

            var begin = $("input.beginPrice").val();
            var end = $("input.endPrice").val();
            if (!isNaN(begin) && !isNaN(end)) {
                console.log(begin);
                console.log(end);
                $("div.productUnit").hide();
                $("div.productUnit").each(function () {
                    var price = $(this).attr("price");
                    price = new Number(price);

                    if (price <= end && price >= begin)
                        $(this).show();
                });
            }

        });
    });
</script>
<div class="categorySortBar">
    <ul class="nav nav-pills">
        <li role="presentation" <c:if test="${'all'==param.sort||empty param.sort}">class="active"</c:if>>
            <a href="?cid=${c.id}&sort=all">
                综合<span class="glyphicon glyphicon-arrow-down"></span>
            </a>
        </li>
        <li role="presentation" <c:if test="${'review'==param.sort}">class="active"</c:if>>
            <a href="?cid=${c.id}&sort=review">
                人气<span class="glyphicon glyphicon-arrow-down"></span>
            </a>
        </li>
        <li role="presentation" <c:if test="${'date'==param.sort}">class="active"</c:if>>
            <a href="?cid=${c.id}&sort=date">
                新品<span class="glyphicon glyphicon-arrow-down"></span>
            </a>
        </li>
        <li role="presentation" <c:if test="${'saleCount'==param.sort}">class="active"</c:if>>
            <a href="?cid=${c.id}&sort=saleCount">
                销量<span class="glyphicon glyphicon-arrow-down"></span>
            </a>
        </li>
        <li role="presentation" <c:if test="${'price'==param.sort}">class="active"</c:if>>
            <a href="?cid=${c.id}&sort=price">
                价格<span class="glyphicon glyphicon-resize-vertical"></span>
            </a>
        </li>
        <li role="presentation" style="margin-top: 4px">
            <div class="form-inline">
                <input class="sortBarPrice beginPrice form-control" type="text" placeholder="请输入最低价格">
                <span class="glyphicon glyphicon-minus"></span>
                <input class="sortBarPrice endPrice form-control" type="text" placeholder="请输入最高价格">
            </div>
        </li>
    </ul>
</div>