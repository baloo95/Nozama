<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="container-fluid">
    <div class="col-sm-6">
        <div class="logo" style="margin-left: 300px">
            <h1>
                <a href="/forehome">
                    <span style="color: #1ab7ea;">N</span>ozama
                </a>
            </h1>
        </div>
    </div>

    <div class="searchDiv pull-right">
        <div class="container-fluid" style="margin-top: 14px; margin-right: 300px">
        <form class="navbar-form navbar-left" role="search" action="foresearch" method="post">
            <div class="form-group">
                <input name="keyword" type="text" class="form-control" placeholder="大家都在买...">
            </div>

            <div class="btn-group">
                <button type="submit" class="btn btn-default">搜索</button>
                <button type="button" class="btn btn-default dropdown-toggle"
                        data-toggle="dropdown">
                    <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu">
                    <c:forEach items="${cs}" var="c" varStatus="st">
                        <c:if test="${st.count>=5 and st.count<=8}">
                        <li>
                            <a href="forecategory?cid=${c.id}">${c.name}</a>
                        </li>
                            <c:if test="${st.count!=8}">
                                <li class="divider"></li>
                            </c:if>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </form>
        </div>
    </div>
</div>
