<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<style>
    p{

        margin-left:10px;
        margin-top:10px;
    }
</style>
<div style="margin-left: 340px;margin-right: 340px; margin-top: 50px">
<ul id="myTab" class="nav nav-tabs">
    <li class="active">
        <a href="#detail" data-toggle="tab">商品详情</a>
    </li>
    <li>
        <a href="#review" data-toggle="tab">累计评价</a>
    </li>
</ul>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="detail">
        <div class="productParamterPart">
            <div class="productParamter">产品参数：</div>

            <div class="productParamterList">
                <c:forEach items="${pvs}" var="pv">
                    <span>${pv.property.name}:  ${fn:substring(pv.value, 0, 10)} </span>
                </c:forEach>
            </div>
            <div style="clear:both"></div>
        </div>

        <div class="productDetailImagesPart">
            <c:forEach items="${p.productDetailImages}" var="pi">
                <img src="img/productDetail/${pi.id}.jpg">
            </c:forEach>
        </div>
    </div>
    <div class="tab-pane fade" id="review">
        <div class="productReviewContentPart">
            <c:forEach items="${reviews}" var="r">
                <div class="productReviewItem">

                    <div class="productReviewItemDesc">
                        <div class="productReviewItemContent">
                                ${r.content }
                        </div>
                        <div class="productReviewItemDate"><fmt:formatDate value="${r.createDate}" pattern="yyyy-MM-dd"/></div>
                    </div>
                    <div class="productReviewItemUserInfo">

                            ${r.user.anonymousName}<span class="userInfoGrayPart">（匿名）</span>
                    </div>

                    <div style="clear:both"></div>

                </div>
            </c:forEach>
        </div>
    </div>
</div>

<div style="height:200px"></div>
</div>