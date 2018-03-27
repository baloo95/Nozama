<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>


<div class="panel panel-default" style="margin-left: 340px;margin-right: 300px">

    <div class="panel-heading">
        <span class="confirmMoneyText">扫一扫付款（元）</span>
        <span class="confirmMoney">
        ￥<fmt:formatNumber type="number" value="${param.total}" minFractionDigits="2"/></span>

    </div>
    <div style="margin-left: 270px;">
        <img class="aliPayImg" src="img/site/alipay2wei.png">
    </div>

    <div style="margin-left: 325px;">
        <a href="forepayed?oid=${param.oid}&total=${param.total}"><button class="btn btn-info">确认支付</button></a>
    </div>

</div>