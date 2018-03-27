<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="panel panel-default" style="margin-left: 340px;margin-right: 300px;margin-top: 20px;">
    <div class="panel-heading">
        <img src="img/site/paySuccess.png">
        <span>您已成功付款</span>

    </div>
    <div class="panel-body">
        <ul class="list-group">
            <li class="list-group-item">收货地址：${o.address} ${o.receiver} ${o.mobile }</li>
            <li class="list-group-item">实付款：<span class="payedInfoPrice">
            ￥<fmt:formatNumber type="number" value="${param.total}" minFractionDigits="2"/>
            </li>
            <li class="list-group-item">预计08月08日送达</li>
            <li class="list-group-item">
                <div class="paedCheckLinkDiv">
                    您可以
                    <a class="payedCheckLink" href="forebought">查看已买到的宝贝</a>
                    <a class="payedCheckLink" href="forebought">查看交易详情 </a>
                </div>
            </li>
        </ul>
    </div>

    <div class="payedSeperateLine">
    </div>

    <div class="panel-footer">
        <img src="img/site/warning.png">
        <b>安全提醒：</b>下单后，<span class="redColor boldWord">用QQ给您发送链接办理退款的都是骗子！</span>天猫不存在系统升级，订单异常等问题，谨防假冒客服电话诈骗！
    </div>

</div>