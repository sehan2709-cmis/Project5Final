<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO,java.util.*"%>
<%@ page import="com.spring.board.BoardDAO" %>
<%@ page import="com.spring.board.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>BOARD</title>

        <style>
            #list {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            #list td, #list th {
                border: 1px solid #ddd;
                padding: 8px;
                text-align:center;
            }
            #list tr:nth-child(even){background-color: #f2f2f2;}
            #list tr:hover {background-color: #ddd;}
            #list th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #006bb3;
                color: white;
            }
        </style>

        <script>
            function delete_ok(id){
                var a = confirm("delete for real?");
                if(a) location.href='deleteok/' + id;
            }
        </script>
    </head>

    <body>
        <h1>list</h1>
        <br/><button type="button" onclick="location.href='../login/logout'">logout</button>

        <table id="list" width="90%" border="1">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>gender</th>>
                <th>student #</th>
                <th>phone #</th>
                <th>R.C.</th>
                <th>dorm</th>
                <th>major</th>
                <th>penalty</th>
                <th>edit</th>
                <th>delete</th>
            </tr>

        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.name}</td>
                <td>${u.gender}</td>
                <td>${u.studentNum}</td>
                <td>${u.phoneNum}</td>
                <td>${u.residentialCol}</td>
                <td>${u.dorm}</td>
                <td>${u.major}</td>
                <td>${u.penalty}</td>
                <td><a href="editform/${u.seq}">edit</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
            </tr>
        </c:forEach>
        </table><br/>

        <button type="button" onclick="location.href='add'">new post</button>
    </body>
</html>
