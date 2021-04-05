<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/3/14
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp"%>
This is my JSP page.<br>
<h1>New User Registration</h1>

    <form method="post" action="/2019211001000704DongShiqi_war_exploded/register"><!-- within doPost() in servlet-->
        username : <input type="text" name="username" required><br/>
        password : <input type="password" name="password" required><br/>
        email : <input type="email" name="email" required><br/>
        birthday : <input type="date" name="date"required><br/>
        <input name="sex" type="radio" value="Male"/>Male
        <input name="sex" type="radio" value="Female"/>Female<br/>
        <input name="b1" type="submit" id="b1" value="Register" required><br/>
    </form>
<%@include file="footer.jsp"%>
