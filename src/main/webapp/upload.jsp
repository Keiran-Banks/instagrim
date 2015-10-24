<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
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
        <div id="header">INSTAGRIM</div>
        <div id="banner">THE WORLD THROUGH THE EYES OF OTHERS</div>
        <nav>
            
                <div class="NavBtn"><a href="upload.jsp">Upload</a></div>
                <div class="NavBtn"><a href="/Instagrim/Images/majed">Sample Images</a></div>
            
        </nav>
 
        <article id="LoginArticle">
            <div id="UploadFile">UPLOAD A PHOTO</div>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <div id="RegisterBtn1" ><input id="RegisterBtn" type="submit" value="UPLOAD"></div>
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
