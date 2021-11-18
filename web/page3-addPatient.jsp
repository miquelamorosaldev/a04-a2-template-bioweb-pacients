<%-- 
    Document   : landing
    Created on : Jan 30, 2019, 3:40:48 PM
    Author     : aasensio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo JSP Templates</title>
        <link rel="stylesheet" href="vendors/bootstrap-4.1.3-dist/css/bootstrap.min.css">
        <script src="vendors/jquery/jquery-3.3.1.min.js"></script>
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <header>
            <%@include file="templates/menu.jsp" %>
        </header>
        <main>
            <div class="container mw-100"> <!-- comment -->
                <h3>Afegir pacient</h3>
                <!-- RWD Form -->
                <!-- https://getbootstrap.com/docs/4.1/components/forms/ -->
                <div class="form-row">
                    <form method="post" action="page3-addPatient.jsp">
                        <div class="form-group col-md-6">
                            
                            <label for='name'>Nombre</label>
                            <input type="text" required id='name' name="name" rows="10" cols="30" 
                                placeholder='Nom'></input>
                            <label for='name'>Apellidos</label>
                            <input type="text" required id='surname' name="surname" rows="10" cols="30" 
                                placeholder='Cognom'></input>
                        </div>
                        <div class="form-group col-md-6">
                            <input type="submit" name="ok" value="Instertar"/>
                        </div>
                    </form> 
                </div>
            </div>
        </main>
        <footer>
            <%@include file="templates/footer.jsp" %>
        </footer>
    </body>
</html>
