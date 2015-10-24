<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
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
            
                <div class="uploadbanner"><a id="uploadbanner" href="/Instagrim/upload.jsp">UPLOAD</a></div>
                <div class="LogOut"><a id="LogOut" href="Instagrim/Logout.jsp">LOG OUT</a></div>
            
        </nav>
 
        <article id="InstagrimFeed">
            <!--<div id="Profile"></div>-->
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();
                

        %>
                <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/><%

                                        }
                }
        %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
