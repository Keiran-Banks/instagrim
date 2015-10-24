<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <style>
        body{
            background-image: url("http://i.imgur.com/b80uodc.png");
            background-attachment: fixed;
           }
    </style>
    <body>
        <header>
        <div id="header">INSTAGRIM</div>
        <div id="banner">THE WORLD THROUGH THE EYES OF OTHERS</div>
        </header>
        <nav>
        </nav>
       
        </br>
        
        <article id="LeftPadding">
            
            <form method="POST"  action="Login">
                <ul>
                    <div id="Username">User Name <input id="UsernameEnter" type="text" name="username"></div>
                    </br>
                    <div id="Password">Password <input id="PasswordEnter" type="password" name="password"></div>
                </ul>
                <br/>
                <div id="RegisterBtn1"><input id="RegisterBtn" type="submit" value="LOGIN"></div>
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
