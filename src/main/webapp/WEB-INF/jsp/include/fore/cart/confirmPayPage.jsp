<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="confirmPayPageDiv" style="margin-left: 340px;margin-right: 300px;margin-top: 20px">


    <div class="confirmPayOrderItemDiv">

        <div class="panel panel-default">
            <div class="panel-heading">订单信息</div>
        <table class="confirmPayOrderItemTable table table-bordered">
            <thead>
            <th colspan="2">宝贝</th>
            <th width="120px">单价</th>
            <th width="120px">数量</th>
            <th width="120px">商品总价 </th>
            <th width="120px">运费</th>
            </thead>
            <c:forEach items="${o.orderItems}" var="oi">
                <tr>
                    <td><img width="50px" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
                    <td class="confirmPayOrderItemProductLink">
                        <a href="#nowhere">${oi.product.name}</a>
                    </td>
                    <td>￥<fmt:formatNumber type="number" value="${oi.product.originalPrice}" minFractionDigits="2"/></td>
                    <td>1</td>
                    <td><span class="conformPayProductPrice">￥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span></td>
                    <td><span>快递 ： 0.00 </span></td>
                </tr>
            </c:forEach>
        </table>
        </div>

        <div class="confirmPayOrderItemText pull-right">
            实付款： <span class="confirmPayOrderItemSumPrice">￥<fmt:formatNumber type="number" value="${o.total}" minFractionDigits="2"/></span>
        </div>

    </div>
    <div class="confirmPayOrderDetailDiv">
        <ul class="list-group">
            <li class="list-group-item">订单编号： ${o.orderCode}</li>
            <li class="list-group-item">卖家昵称： Nozama</li>
            <li class="list-group-item">收货信息： ${o.address}，${o.receiver}， ${o.mobile}，${o.post}</li>
            <li class="list-group-item">成交时间： <fmt:formatDate value="${o.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
            <li class="list-group-item">
                <div class="confirmPayWarning">请收到货后，再确认收货！否则您可能钱货两空！</div>
            </li>
            <li class="list-group-item">
                <a href="foreorderConfirmed?oid=${o.id}">
                <button class="confirmPayButton btn btn-info">确认支付</button>
                </a>
            </li>
        </ul>
    </div>
</div>