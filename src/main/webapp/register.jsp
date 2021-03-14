<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/3/14
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form>
        username : <input type="text" name="username" required><br/>
        password : <input type="password" name="password" required><br/>
        email : <input type="email" name="email" required><br/>
        birthday : <input type="datetime-local" name="yyyy-mm-dd"required><br/>
        <input name="sex" type="radio" value="Male"/>Male
        <input name="sex" type="radio" value="Female"/>Female<br/>
        <input name="b1" type="submit" id="b1" value="Register" required><br/>
    </form>
</body>
</html>
