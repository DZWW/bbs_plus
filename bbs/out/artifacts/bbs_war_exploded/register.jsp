
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎注册</title>
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
            padding:3px 50px;
            -webkit-border-radius: 25px;
        }
    </style>
</head>
<body>
          <form action="register" method="post">
              <div align="center">
                  <h1>欢迎注册</h1>用户名称
                  <br><input type="text" name="username" placeholder="username">
                  <br>登录密码<br><input type="password" name="password1" placeholder="password">
                  <br>确认密码<br><input type="password" name="password2" placeholder="password"><br>
                  <br><input type="submit" value="注册" class="sub">
              </div>
          </form>
</body>
</html>
