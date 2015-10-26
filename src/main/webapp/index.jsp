<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
        
        body {
            background-image: url("http://i.imgur.com/b80uodc.png");
            background-attachment: fixed;
        }
        </style>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
                <div id='header'>INSTAGRIM</div> 
            <div id='banner'>THE WORLD THROUGH THE EYES OF OTHERS</div>
            <h1>  </h1>
        </header>
        <nav>
            <ul>

               
                <a href="upload.jsp"><div href="upload.jsp" id="Upload" title="Upload"></div></a>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <a href="UserProfile.jsp"><div href="UserProfile.jsp" id="UserProfile" title="Profile"></div></a>
                
                <a><a id="YourImages" href="/Instagrim/Images/<%=lg.getUsername()%>"></a></a>
                    <%}
                        }else{
                    %>
                  
                <a href="register.jsp"><div href="register.jsp" id="Register" title="Register"></div></a>
                
                <a href="login.jsp"><div href="login.jsp" id="Login" title="Register"></div></a>   
                
                <%}%>
                
            </ul>
        </nav>
        <footer>
            <ul>
                <!--<div class="footer"><a href="/Instagrim">Home</a></div>
                <h4><div class="footer" ><a>KEIRAN BANKS 2015</a></div></h4>-->
            </ul>
        </footer>
    </body>
</html>
