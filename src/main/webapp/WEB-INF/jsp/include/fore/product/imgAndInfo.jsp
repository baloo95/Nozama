<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<script>

    $(function () {
        var stock = ${p.stock};
        $(".productNumberSetting").keyup(function () {
            var num = $(".productNumberSetting").val();
            num = parseInt(num);
            if (isNaN(num))
                num = 1;
            if (num <= 0)
                num = 1;
            if (num > stock)
                num = stock;
            $(".productNumberSetting").val(num);
        });

        $(".increaseNumber").click(function () {
            var num = $(".productNumberSetting").val();
            num++;
            if (num > stock)
                num = stock;
            $(".productNumberSetting").val(num);
        });
        $(".decreaseNumber").click(function () {
            var num = $(".productNumberSetting").val();
            --num;
            if (num <= 0)
                num = 1;
            $(".productNumberSetting").val(num);
        });

        $(".addCartLink").click(function () {
            var page = "forecheckLogin";
            $.get(
                page,
                function (result) {
                    if ("success" == result) {
                        var pid = ${p.id};
                        var num = $(".productNumberSetting").val();
                        var addCartpage = "foreaddCart";
                        $.get(
                            addCartpage,
                            {"pid": pid, "num": num},
                            function (result) {
                                if ("success" == result) {
                                    $(".addCartButton").html("已加入购物车");
                                    $(".addCartButton").attr("disabled", "disabled");
                                    $(".addCartButton").css("background-color", "lightgray")
                                    $(".addCartButton").css("border-color", "lightgray")
                                    $(".addCartButton").css("color", "black")

                                }
                                else {

                                }
                            }
                        );
                    }
                    else {
                        $("#loginModal").modal('show');
                    }
                }
            );
            return false;
        });
        $(".buyLink").click(function () {
            var page = "forecheckLogin";
            $.get(
                page,
                function (result) {
                    if ("success" == result) {
                        var num = $(".productNumberSetting").val();
                        location.href = $(".buyLink").attr("href") + "&num=" + num;
                    }
                    else {
                        $("#loginModal").modal('show');
                    }
                }
            );
            return false;
        });

        $("button.loginSubmitButton").click(function () {
            var name = $("#name").val();
            var password = $("#password").val();

            if (0 == name.length || 0 == password.length) {
                $("span.errorMessage").html("请输入账号密码");
                $("div.loginErrorMessageDiv").show();
                return false;
            }

            var page = "foreloginAjax";
            $.get(
                page,
                {"name": name, "password": password},
                function (result) {
                    if ("success" == result) {
                        location.reload();
                    }
                    else {
                        $("span.errorMessage").html("账号密码错误");
                        $("div.loginErrorMessageDiv").show();
                    }
                }
            );

            return true;
        });

        $("img.smallImage").mouseenter(function () {
            var bigImageURL = $(this).attr("bigImageURL");
            $("img.bigImg").attr("src", bigImageURL);
        });

        $("img.bigImg").load(
            function () {
                $("img.smallImage").each(function () {
                    var bigImageURL = $(this).attr("bigImageURL");
                    img = new Image();
                    img.src = bigImageURL;

                    img.onload = function () {
                        console.log(bigImageURL);
                        $("div.img4load").append($(img));
                    };
                });
            }
        );
    });

</script>

<div class="imgAndInfo">

    <div class="imgInimgAndInfo">
        <img src="img/productSingle/${p.firstProductImage.id}.jpg" class="bigImg">
        <div class="smallImageDiv">
            <c:forEach items="${p.productSingleImages}" var="pi">
                <img src="img/productSingle_small/${pi.id}.jpg" bigImageURL="img/productSingle/${pi.id}.jpg"
                     class="smallImage">
            </c:forEach>
        </div>
        <div class="img4load hidden"></div>
    </div>

    <div class="infoInimgAndInfo">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3>${p.name}
                    <small>${p.subTitle}</small>
                </h3>
            </div>

            <div class="panel-body">
                <div class="productPrice">

                    <div class="productPriceDiv">
                        <div class="gouwujuanDiv"><img height="16px" src="img/site/gouwujuan.png">

                        </div>
                        <div class="originalDiv">
                            <span class="originalPriceDesc">价格</span>
                            <span class="originalPriceYuan">¥</span>
                            <span class="originalPrice">

                        <fmt:formatNumber type="number" value="${p.originalPrice}" minFractionDigits="2"/>
                    </span>
                        </div>
                        <div class="promotionDiv">
                            <span class="promotionPriceDesc">促销价 </span>
                            <span class="promotionPriceYuan">¥</span>
                            <span class="promotionPrice">
                        <fmt:formatNumber type="number" value="${p.promotePrice}" minFractionDigits="2"/>
                    </span>
                        </div>
                    </div>
                </div>


            </div>

            <ul class="list-group">
                <li class="list-group-item">
                    <div class="serviceCommitment">
                        <span class="serviceCommitmentDesc">服务承诺</span>
                        <span class="serviceCommitmentLink">
                <a href="#nowhere">正品保证</a>
                <a href="#nowhere">极速退款</a>
                <a href="#nowhere">赠运费险</a>
                <a href="#nowhere">七天无理由退换</a></span>
                    </div>
                </li>
                <li class="list-group-item">
                    销量: ${p.saleCount }
                </li>
                <li class="list-group-item">
                    累计评价: ${p.reviewCount}
        </div>
        </li>
        <li class="list-group-item">
            <div class="productNumber">
                <span>数量</span>
                <span>
                <span class="productNumberSettingSpan">
                <input class="productNumberSetting form-control" type="text" value="1">
                </span>
                <span class="arrow">
                    <a href="#nowhere" class="increaseNumber">
                    <span class="updown">
                            <img src="img/site/increase.png">
                    </span>
                    </a>

                    <span class="updownMiddle"> </span>
                    <a href="#nowhere" class="decreaseNumber">
                    <span class="updown">
                            <img src="img/site/decrease.png">
                    </span>
                    </a>

                </span>

            件</span>
                <span>库存${p.stock}件</span>
            </div>
        </li>

        <li class="list-group-item">
            <div class="buyDiv" style="margin-left: 50px">
                <a class="buyLink" href="forebuyone?pid=${p.id}">
                    <button class="btn btn-danger" style="width: 200px;height: 60px; font-size: 24px">立即购买
                    </button>
                </a>
                <a href="#nowhere" class="addCartLink">
                    <button class="btn btn-success add addCartButton" style="width: 200px;height: 60px; font-size: 24px"><span
                            class="glyphicon glyphicon-shopping-cart"></span>加入购物车
                    </button>
                </a>
            </div>
        </li>
        </ul>

    </div>
</div>

<div style="clear:both"></div>

</div>