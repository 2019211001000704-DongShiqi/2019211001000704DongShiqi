<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/4/5
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<h1>Login</h1>
<%
    if(request.getAttribute("message")!=null){
        out.println(request.getAttribute("message"));
    }
%>
<%
//read cookies
    Cookie[] allCookies=request.getCookies();
    String username="",password="",rememberMeVal="";
    if(allCookies!=null){
        for (Cookie c:allCookies) {
            if(c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")){
                password=c.getValue();
            }
            if(c.getName().equals("cRememberMe")){
                rememberMeVal=c.getValue();
            }
        }
    }
%>

<form method="post" action="/2019211001000704DongShiqi_war_exploded/login">
    <table>
        <tr> <td>Username:</td> <td><input type="text" name="Username" value="<%=username%>"><br/></td></tr>
        <tr> <td>password:</td> <td><input type="password" name="password" value="<%=password%>"><br/></td></tr>
        <input type="checkbox" name="rememberMe" value="1"<%=rememberMeVal.equals("1") ?"checked":""%>checked/>RememberMe<br/>
        <tr> <td></td><td><input type="submit" value="Login"/></td>  </tr>
    </table>
</form>
<%@include file="footer.jsp"%>