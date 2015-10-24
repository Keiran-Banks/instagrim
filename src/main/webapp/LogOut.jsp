<%-- 
    Document   : LogOut
    Created on : 19-Oct-2015, 21:39:49
    Author     : Keiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
        body{
            background-image: url("http://i.imgur.com/b80uodc.png");
            background-repeat: no-repeat;
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
        </header>
        <nav>
            <ul>  
                <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg!= null)  
                        {
                    %>
                <a href="upload.jsp"><div href="upload.jsp" id="Upload" title="Upload"></div></a>
                    <%
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <a href="UserProfile.jsp"><div href="UserProfile.jsp" id="UserProfile" title="Profile"></div></a>
                
                <a href="/Instagrim/Images/<%=lg.getUsername()%>"><div href="/Instagrim/Images/<%=lg.getUsername()%>" id="YourImages" title="YourImages"</div></a>
                    <%}
                        }else{
                    %>
                                
                <a href="register.jsp"><div href="register.jsp" id="Register" title="Register"></div></a>
                
                <a href="login.jsp"><div href="login.jsp" id="Login" title="Login"</div></a>
                <%
                                        
                            
                    }%>
                        <%}%>
            </ul>
        </nav>
        <article>
            <h1>Are you sure you want to log out?</h1>     
                <form action="${pageContext.request.contextPath}/LogOut" method="post">
                    <input type="submit" value="Log Out"> 
                </form>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
