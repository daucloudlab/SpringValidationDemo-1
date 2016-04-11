<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>

  <style>
    .error {
      color: red; font-weight: bold;
    }
  </style>
</head>
<body>

<div align="center">
  <h2>Spring MVC Form Validation Demo - Login Form</h2>
  <table border="0" width="90%">
    <form:form action="login" commandName="userForm">
      <tr>
        <td align="left" width="20%">Email: </td>
        <td align="left" width="40%"><form:input path="email" size="30"/></td>
        <td align="left"><form:errors path="email" cssClass="error"/></td>
      </tr>
      <tr>
        <td>Password: </td>
        <td><form:password path="password" size="30"/></td>
        <td><form:errors path="password" cssClass="error"/></td>
      </tr>
      <tr>
        <td></td>
        <td align="center"><input type="submit" value="Login"/></td>
        <td></td>
      </tr>
    </form:form>
  </table>
</div>

</body>
</html>
