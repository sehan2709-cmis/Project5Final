<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
  </head>

  <body>
  <h1>Edit Form</h1>
  <form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
      <tr><td>Name:</td><td><form:input path="name"/></td></tr>
      <tr><td>Gender:</td><td><form:input path="gender"/></td></tr>
      <tr><td>Student Number:</td><td><form:input path="studentNum"/></td></tr>
      <tr><td>Phone Number:</td><td><form:input path="phoneNum"/></td></tr>
      <tr><td>Residential College:</td><td><form:input path="residentialCol"/></td></tr>
      <tr><td>Building & Room Number:</td><td><form:input path="dorm"/></td></tr>
      <tr><td>Major:</td><td><form:input path="major"/></td></tr>
      <tr><td>Penalty:</td><td><form:input path="penalty"/></td></tr></td></tr>

      <tr><td colspan="2">
        <input type="submit" value="edit"/>
        <input type="button" value="cancel" onclick="history.back()"/></td></tr>
    </table>
  </form:form>

  </body>
</html>