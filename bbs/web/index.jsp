
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录</title>
      <style>
          h1
          {
              background: #5599FF;
          }
          h2
          {
              background: #1Effff;
          }
          input{
              border: 1px solid #ccc;
              padding: 7px 0px;
              border-radius: 3px; /*css3属性IE不支持*/
              padding-left:5px;
          }
          .sub
          {
              border:2px solid;
              padding:3px 20px;
              background: #2Effff;
              -webkit-border-radius: 25px;
          }
          .but
          {
              border:2px solid;
              padding:3px 20px;
              background: #5599FF;
              -webkit-border-radius: 25px;
          }
      </style>
  </head>
  <body>
    <%
      if(session.getAttribute("username")==null){
    %>
    <form action="login" method="post">
        <div align="center">
            账号<input type="text" name="username" placeholder="username"><br>
            密码<input type="password" name="password" placeholder="password"><br>
            <input type="submit" value="登录" class="sub">
            <button class="but"><a href="register.jsp">注册</a></button>
        </div>
    </form>
    <%
        }else {
            response.sendRedirect("post.jsp");
            }
    %>
  </body>
</html>
