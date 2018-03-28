<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<script>
    $(function(){

        <c:if test="${!empty msg}">
        $("span.errorMessage").html("${msg}");
        $("div.loginErrorMessageDiv").show();
        </c:if>

        $("form.loginForm").submit(function(){
            if(0==$("#name").val().length||0==$("#password").val().length){
                $("span.errorMessage").html("请输入账号密码");
                $("div.loginErrorMessageDiv").show();
                return false;
            }
            return true;
        });

        $("form.loginForm input").keyup(function(){
            $("div.loginErrorMessageDiv").hide();
        });

        var left = window.innerWidth/2+162;
        $("div.loginSmallDiv").css("left",left);
    })
</script>

<div id="loginDiv" style="position: relative;margin-left: 340px;margin-right: 300px">

    <form class="loginForm" action="forelogin" method="post">
        <div id="loginSmallDiv" class="loginSmallDiv">
            <table class="table table-bordered" align="center">
                <tr>
                    <td><span class=" glyphicon glyphicon-user"></span></td>
                    <td><input class="form-control" id="name" name="name" placeholder="手机/会员名/邮箱" type="text"></td>
                </tr>
                <tr>
                    <td><span class=" glyphicon glyphicon-lock"></span></td>
                    <td><input class="form-control" id="password" name="password" type="password" placeholder="密码" type="text"></td>
                </tr>
                <tr>
                    <td><a class="notImplementLink" href="#nowhere">忘记登录密码</a></td>
                    <td><a href="registerPage">免费注册</a></td>
                </tr>
                <tr>
                    <td>
                        <div style="margin-top:20px">
                            <button class="btn btn-block redButton" type="submit">登录</button>
                        </div>
                    </td>
                    <td>
                        <div class="loginErrorMessageDiv">
                            <div class="alert alert-danger" >
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                                <span class="errorMessage"></span>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <br><br>
        </div>
    </form>

</div>