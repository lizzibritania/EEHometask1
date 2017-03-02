<%--
  Created by IntelliJ IDEA.
  User: Lizzi
  Date: 27.02.2017
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/css/sml.css">
<title>You personal mail</title>
<div class="center">
    <form action="MCheck" method="Post">
        <label>  Email to:  </label>
        <input class="ok" type="text" name="emailto">
<br>
        <label>  Your mail login:  </label>
        <input class="ok" type="text" name="login1">
        <br>
        <label> Your mail password: </label>
        <input class="ok" type="password" name="password1">
        <br />
        <label class="ok"> Subject: </label>

        <input type="text" name="subject" />

        <br />
        <label class="centre"> Please enter your text here: </label>
        <br />
        <input  class="longtext" type="text" name="text" />

        <p class="centre"> <input class="ok" type="submit" value="Send" /> </p>
    </form>

</div>



</body>
</html>
