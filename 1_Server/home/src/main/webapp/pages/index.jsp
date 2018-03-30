<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>ViVi的传送门</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <style>
            .searchbar{
                width:500px;
                margin:20px auto;
                background-color: rgba(255,255,255,0.75);
                width:60%;
            }
            .tabnav{
                width:500px;
                min-height:500px; height:auto!important; height:500px;
                margin:20px auto;
                background-color: rgba(255,255,255,0.75);
                width:80%;
                position: relative;
                top: 20px;
            }
            .webisite{
                background-color: rgba(255,255,255,0.55);
                padding: 5px;
                border-radius:5px;
            }
        </style>
    </head>
    <body style="background-image: url(https://pic4.zhimg.com/3d21604af4ece8292ae728500ce2c4f7_r.jpg); background-size:cover;">
        <div class="searchbar">
            <div class="row">
                <div class="input-field col s12" >
                    <input type="text" class="validate">
                </div>
                <div class="row">
                    <% int i = 0;%>
                    <c:forEach items="${searchList}" var="search">
                        <% if (i == 0) { %>
                        <div class="col s3">
                            <input class="with-gap" name="group1" type="radio" id="search${search.id}" checked/>
                            <label for="search${search.id}">${search.name}</label>
                        </div>
                        <% } else { %>
                        <div class="col s3">
                            <input class="with-gap" name="group1" type="radio" id="search${search.id}"/>
                            <label for="search${search.id}">${search.name}</label>
                        </div>
                        <% } %>
                        <% i++;%>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
            <a class="btn-floating btn-large red">
                <i class="material-icons">mode_edit</i>
            </a>
            <ul>
                <li><a class="btn-floating red" style="transform: scaleY(0.4) scaleX(0.4) translateY(40px) translateX(0px); opacity: 0;"><i class="material-icons">insert_chart</i></a></li>
                <li><a class="btn-floating yellow darken-1" style="transform: scaleY(0.4) scaleX(0.4) translateY(40px) translateX(0px); opacity: 0;"><i class="material-icons">format_quote</i></a></li>
                <li><a class="btn-floating green" style="transform: scaleY(0.4) scaleX(0.4) translateY(40px) translateX(0px); opacity: 0;"><i class="material-icons">publish</i></a></li>
                <li><a class="btn-floating blue" style="transform: scaleY(0.4) scaleX(0.4) translateY(40px) translateX(0px); opacity: 0;"><i class="material-icons">attach_file</i></a></li>
            </ul>
        </div>
        <div class="tabnav">
            <nav class="nav-extended transparent">
                <div class="nav-content">
                    <ul class="tabs pink transparent">
                        <c:forEach items="${typeList}" var="type">
                            <li class="tab"><a href="#${type.id}"  class="teal-text">${type.name}</a></li>
                        </c:forEach>
                        <li class="indicator teal" style="right: 186px; left: 68px;"></li>
                    </ul>
                </div>
            </nav>
            <c:forEach items="${typeList}" var="type">
                <div id="${type.id}" class="row" style="margin-top: 20px; display: block;">
                    <c:forEach items="${siteList}" var="site">
                        <c:if test="${site.typeId.equals(type.id)}">
                            <div class="col s2">
                                <a href="${site.url}" target="_blank">
                                    <div class="webisite" style="position:relative;">
                                        <img class="circle" src="http://www.google.com/s2/favicons?domain=${site.url}" width="30px" style="position: absolute;top: 50%;transform: translateY(-50%);">
                                        <p class="teal-text center">${site.name}</p>
                                    </div>
                                </a>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
