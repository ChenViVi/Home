<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>ViVi的杂货铺</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript">
            $(document).ready(function() {
                $(".button-collapse").sideNav();
            });
        </script>
    </head>
    <body>
        <nav class="nav-extended pink accent-1">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo center">&nbsp;&nbsp;ViVi的杂货铺</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
            <div class="nav-content">
                <ul class="tabs pink accent-1">
                    <c:forEach items="${typeList}" var="type">
                        <li class="tab"><a href="#${type.id}"  class="white-text">${type.name}</a></li>
                    </c:forEach>
                    <li class="indicator white" style="right: 186px; left: 68px;"></li>
                </ul>
            </div>
        </nav>
        <c:forEach items="${typeList}" var="type">
            <div id="${type.id}" class="row" style="margin-top: 20px; display: block;">
                <c:forEach items="${siteList}" var="site">
                    <c:if test="${site.typeId.equals(type.id)}">
                        <a href="${site.url}" target="_blank">
                            <div class="col s6 m3 l2">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="http://omqwegju8.bkt.clouddn.com/adam-whitlock-270561-unsplash.jpg">
                                        <span class="card-title">Card Title</span>
                                    </div>
                                    <div class="card-content">
                                        <p class="pink-text text-accent-1">${site.name}</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </c:forEach>
    </body>
</html>
