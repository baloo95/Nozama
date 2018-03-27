<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<div class="buyPageDiv">
    <form action="forecreateOrder" method="post">
        <div class="address panel panel-default" style="margin-left: 300px;margin-right: 300px">
            <div class="panel-heading">输入收货地址</div>
            <div class="panel-body">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="firstColumn">详细地址<span class="redStar">*</span></td>

                        <td><textarea class="form-control" name="address"
                                      placeholder="建议您如实填写详细收货地址，例如接到名称，门牌号，楼层和房间号等信息"></textarea></td>
                    </tr>
                    <tr>
                        <td>邮政编码</td>
                        <td><input class="form-control" name="post" placeholder="如果您不清楚邮递区号，请填写000000" type="text"></td>
                    </tr>
                    <tr>
                        <td>收货人姓名<span class="redStar">*</span></td>
                        <td><input class="form-control" name="receiver" placeholder="长度不超过25个字符" type="text"></td>
                    </tr>
                    <tr>
                        <td>手机号码 <span class="redStar">*</span></td>
                        <td><input class="form-control" name="mobile" placeholder="请输入11位手机号码" type="text"></td>
                    </tr>
                </table>
            </div>
            <div class="panel-footer"></div>
        </div>

        <div class="panel panel-default" style="margin-left: 300px;margin-right: 300px">
            <div class="panel-heading">确认订单信息</div>
            <div class="panel-body">
                <div class="productList">
                    <table class="table">
                        <thead>
                        <tr>
                            <th colspan="2" class="productListTableFirstColumn">
                                <a class="marketLink" href="#nowhere">Nozama</a>
                            </th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>小计</th>
                            <th>配送方式</th>
                        </tr>
                        <tr class="rowborder">
                            <td colspan="2"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody class="productListTableTbody">
                        <c:forEach items="${ois}" var="oi" varStatus="st">
                            <tr class="orderItemTR">
                                <td class="orderItemFirstTD">
                                    <img class="orderItemImg"
                                         src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg">
                                </td>
                                <td class="orderItemProductInfo">
                                    <a href="foreproduct?pid=${oi.product.id}" class="orderItemProductLink">
                                            ${oi.product.name}
                                    </a>
                                </td>
                                <td>

                                <span class="orderItemProductPrice">￥<fmt:formatNumber type="number"
                                                                                       value="${oi.product.promotePrice}"
                                                                                       minFractionDigits="2"/></span>
                                </td>
                                <td>
                                    <span class="orderItemProductNumber">${oi.number}</span>
                                </td>
                                <td><span class="orderItemUnitSum">
						￥<fmt:formatNumber type="number" value="${oi.number*oi.product.promotePrice}"
                                           minFractionDigits="2"/>
						</span></td>
                                <c:if test="${st.count==1}">
                                    <td rowspan="5" class="orderItemLastTD">
                                        <div class="form-inline">
                                            <label class="orderItemDeliveryLabel">
                                                <input class="form-control" type="radio" value="" checked="checked">
                                                普通配送
                                            </label>

                                            <select class="orderItemDeliverySelect form-control">
                                                <option>快递 免邮费</option>
                                            </select>
                                        </div>
                                    </td>
                                </c:if>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <div class="orderItemSumDiv">
                        <div class="pull-left">
                            <div class="form-inline">
                                <span class="leaveMessageText">给卖家留言:</span>
                                <%--<textarea name="userMessage" class="leaveMessageTextarea form-control"></textarea>--%>
                                <input name="userMessage" type="text" class="form-control" placeholder="请输入留言">
                            </div>
                        </div>

                        <span class="pull-right">店铺合计(含运费): ￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
                    </div>
                </div>

                <div class="orderItemTotalSumDiv">
                    <div class="pull-right">
                        <span>实付款：</span>
                        <span class="orderItemTotalSumSpan">￥<fmt:formatNumber type="number" value="${total}"
                                                                               minFractionDigits="2"/></span>
                    </div>
                </div>

                <div class="submitOrderDiv" style="margin-top: 10px">
                    <button type="submit" class="btn btn-info">提交订单</button>
                </div>
            </div>
        </div>
        <%--end--%>
    </form>
</div>