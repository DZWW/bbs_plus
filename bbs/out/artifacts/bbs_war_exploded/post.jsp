<%@ page import="bbs.model.Message" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发表文章</title>
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
    <div align="center">
        当前登录:&nbsp<%=session.getAttribute("username")%>
        <p><a href="logout.jsp">注销</a></p>
        <form action="postMessage" method="post">
            <br><input type="text" name="title" placeholder="标题">
            <br><textarea rows="10" cols="55" name="content" placeholder="内容"></textarea><br>
            <input type="submit" value="发表" class="sub">
        </form>
        <%
            if(session.getAttribute("message")==null){
                session.setAttribute("message",new Vector<Message>());
            }
            Vector<Message> message =(Vector<Message>)session.getAttribute("message");
        %>
        <%if(message.size()>0){%>
            <h1>已发表的帖子</h1>
            <%
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
                for(Message m:message){
                    out.println(String.format("<p>标题：<h3>%s</h3> <p>作者：%s <p>提交时间：%s <p>内容：%s",m.getTitle(),m.getAuthor(),df.format(m.getTime()),m.getContent()));
                }
            }
        %>
    </div>

</body>
</html>
