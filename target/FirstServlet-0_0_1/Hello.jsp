<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>


<body>
<link rel="stylesheet" type="text/css" href="/css/sml.css">
<div class="center">
    <form action="MyServlet" method="GET">
        <p align="center"> Login:  </p>     <p align="center"> <input type="text" name="login">   </p>
        <br />
        <p align="center">Password: </p>  <p align="center"> <input type="text" name="password" />    </p>
        <br>
        <p align="center"> <input class="ok" type="submit" value="Submit using get" />    </p>
    </form> </div>


<div class="center">
    <form action="MyServlet" method="Post">
        <p align="center"> Login:  </p>     <p align="center"> <input type="text" name="login">   </p>
        <br />
        <p align="center">Password: </p>  <p align="center"> <input type="text" name="password" />    </p>
        <br>
        <p align="center"> <input class="ok" type="submit" value="Submit using post" />    </p>
    </form> </div>


<form action="Reverse" method="Post">
    <div class="center">
        <p align="center"> Login:  </p>     <p align="center"> <input type="text" name="login1">   </p>
        <br />
        <label align="center"> Подсказка к паролю: пони по английски </label>
        <br>
        <p align="center">Password: </p>  <p align="center"> <input type="text" name="pas1" />   </p>
        <p align="center"> <input class="ok" type="submit" value="Check Password" />       </p>
    </div>
</form>


<br>
<br>

<div class="center">
    <p align="center"><input class="ok" value="Shows time and browser time " onclick="reverse()" type="button" /> </p>
    <div class="foru" id="stus">Здесь будет ваша версия браузера</div>
</div>
<script>

    function reverse() {
        var req = new XMLHttpRequest();
        var statusElem = document.getElementById('stus');
        req.open('Post', 'BrowserServlet', true);
        var inputvalue=navigator.userAgent;
        req.send(inputvalue);

        req.onreadystatechange = function() {

            statusElem.innerHTML = req.responseText ;
        }
    }
</script>
<div class="center">
    <br>
    <label class="centre">  Открыть почту:       </label>
    <input class="ok" type="submit" value="Почта" onClick='location.href="\\Mail.jsp"'/>
</div>
</body>
</html>