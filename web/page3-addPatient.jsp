<%-- 
    Document   : landing
    Created on : Jan 30, 2019, 3:40:48 PM
    Author     : aasensio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="adnutils.*" %>
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
                <form method="post" action="page3-addPatient.jsp">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='name'>Nombre (*)  </label>
                            <input class="form-control" type="text" required id='name' name="name" rows="10" cols="30" 
                                placeholder='Nom'></input>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='name'>Apellidos (*) </label>
                            <input class="form-control" type="text" required id='surname' name="surname" rows="10" cols="30" 
                                placeholder='Cognom'></input>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='age'>Edad (*) </label>
                            <input class="form-control" type="number" required id='age' name="age" rows="10" cols="30" 
                                placeholder='Cognom'></input>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='age'>Genero (*) </label>
                            <select class="form-control" id="genero" name="genero">
                                <option value="gen-feme">Mujer</option>
                                <option value="gen-masc">Hombre</option>
                                <option value="gen-otro">Prefiero no decirlo</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <input class="btn btn-primary" type="submit" name="ok" value="Insertar"/>
                            <input class="btn btn-danger" type="reset" name="reset" value="Borrar"/>
                        </div>
                    </div>
                </form> 
            </div>
            <%
                // Si ha clicat o no al botó del formulari
                boolean resultOK = false;
                String name = "";
                String surname = "";
                String ageField = ""; int age = 0;
                String genero = "";
                Validation validator = new Validation(); 
                if(request.getParameter("ok")!=null) {
                    // Obtenció dels camps del form.
                    name = request.getParameter("name");
                    surname = request.getParameter("surname");
                    ageField = request.getParameter("age");
                    genero = request.getParameter("genero");
                    // Validem els camps de text.
                    resultOK = name != null && surname !=null;
                    
                    age = validator.validInteger(ageField);
                    resultOK = resultOK && age > 1;
                    // Si tots els camps són correctes.
                    if(resultOK) {
                        out.println("<p class='bg-success'> Bon dia " + genero 
                                + " " + name + 
                                " " + surname + "</p>" );
                    // Si no ho son mostrem missatge d'error.
                    } else {
                        out.println("<p class='error'>"
                                + "Els camps requerits no tenen el format correcte.</p>");
                    }
                } 
           %>
        </main>
        <footer>
            <%@include file="templates/footer.jsp" %>
        </footer>
    </body>
</html>
