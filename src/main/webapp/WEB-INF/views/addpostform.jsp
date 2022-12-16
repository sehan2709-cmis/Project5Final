<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> create post </title>
  </head>

  <body>
    <h1>new post</h1>

    <form action="addok" method="post" >
      <table id="edit">
        <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
        <tr><td>Gender:</td><td><input type="radio" name="gender" value="M" checked/><input type="radio" name="gender" value="W"/></td></tr>
        <tr><td>Student Number:</td><td><input type="text" name="studentNum"/></td></tr>
        <tr><td>Phone Number:</td><td><input type="text" name="phoneNum"/></td></tr>
        <tr><td>Residential College:</td><td><input type="text" name="residentialCol"/></td></tr>
        <tr><td>Building & Room Number:</td><td><input type="text" name="dorm"/></td></tr>
        <tr><td>Major:</td><td>
          <select name="major"/>
          <option value="CS">Computer Science</option>
          <option value="Com">Communication</option>
          <option value="Law">Law</option>
          <option value="Life">Life Sciences</option>
          <option value="ICT">Global Entrepreneurship and ICT</option>
        </td></tr>
        <tr><td>Penalty:</td><td><input type="text" name="penalty"/></td></tr>
      </table>

      <button type="submit">add</button>
    </form>
  </body>
</html>