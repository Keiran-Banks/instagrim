<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
           body{
            background-image: url("http://i.imgur.com/b80uodc.png");
            background-attachment: fixed;
           }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
            <div id="header">INSTAGRIM</div>
        <div id="banner">THE WORLD THROUGH THE EYES OF OTHERS</div>
        </br>
        </header>
        <nav>
            <ul>
                
                <!--<div><a href="/Instagrim/Images/majed">Sample Images</a></div>-->
            </ul>
        </nav>
       
        <article id="LeftPadding">
            <h3 id="Join">JOIN THE WORLD OF INSTAGRIM</h3>
            <form method="POST"  action="Register">
            
                    <div id="Username">User Name <input id="UsernameEnter" type="text" name="username"></div>
                    </br>
                    <!--<div id="Addresses">Address <input id="AddressesEnter" type="text" name="addresses"></div>
                    </br>-->
                    <div id="Email">Email <input id="EmailEnter" type="text" name="email"></div>
                    </br>
                    <div id="Password">Password <input id="PasswordEnter" type="password" name="password"></div>
                    </br>
                    <div id="FirstName">First Name <input id="FirstNameEnter" type="text" name="first_name"></div>
                    </br>
                    <div id="LastName">Last Name <input id="LastNameEnter" type="text" name="last_name"></div>
             
                    </br>
                    </br>

                    <div id="RegisterBtn1"><input id="RegisterBtn" type="submit" value="Register"></div>
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
