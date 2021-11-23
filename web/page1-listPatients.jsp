<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="patients.IPatientsDAO" %>
<%@page import="patients.PatientsMemoryDAO" %>
<%@page import="patients.Patient" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DAWBIO2-WEB-Patients</title>
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
                <h3>List Patients</h3>
                <p>Done</p>
                <ul>
                <% 
                    IPatientsDAO daoPatients = new PatientsMemoryDAO();
                    List<Patient> resultList = daoPatients.listAllPatients();
                    for(Patient pa: resultList) {
                %>
                <li><%=pa.toString()%></li>
                <% 
                    }
                %>
                </ul>
                <p><%=resultList.size()%> pacientes encontrados.</p>
            </div>
        </main>
        <footer>
            <%@include file="templates/footer.jsp" %>
        </footer>
    </body>
</html>
