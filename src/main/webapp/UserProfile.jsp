<%-- 
    Document   : UserProfile
    Created on : 19-Oct-2015, 20:46:13
    Author     : Keiran
--%>

<%@page import="java.util.*"%>
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
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>
        <div id="header">INSTAGRIM</div>
        <div id="banner">THE WORLD THROUGH THE EYES OF OTHERS</div>
        </header>
        
        <nav>
            <ul>
                
               
                    <%
                        String username = (String)session.getAttribute("username");
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg.getlogedin()) 
                        {
                                %>
                            
                                <div class="uploadbanner"><a id="uploadbanner" href="/Instagrim/upload.jsp">UPLOAD</a></div>
                                <div class="LogOut"><a id="LogOut" href="LogOut.jsp">LOG OUT</a></div>
                                </br></br>
                          <%
                            }else{
                          %>
                                <div class="RegisterBtn1"><a id="RegisterBtn1" href="/Instagrim/register.jsp">REGISTER</a></div>
                                <div class="RegisterBtn1"><a id="RegisterBtn1" href="/Instagrim/login.jsp">LOGIN</a></div>
                          <%}%>
            </ul>
        </nav>
 
        <article>
            <%
                
                String firstName = (String)session.getAttribute("firstName");
                String lastName = (String)session.getAttribute("lastName");
                String email = (String)session.getAttribute("email");
                String profileDescription = (String)session.getAttribute("profileDescription");
                        %>
            <h1><%=username%>'s Profile!</h1>
       
        <h3>Username: <%=username%></h3>
        <h3>First name: <%=firstName%></h3>
        <h3>Last name: <%=lastName%></h3>
        <h3>Email: <%=email%></h3>
        <h3><%=username%>'s Profile description: <%=profileDescription%></h3>
        
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
