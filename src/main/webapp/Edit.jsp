<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.carmanagment.Cars" %><%--
  Created by IntelliJ IDEA.
  User: manin
  Date: 7/7/2023
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-2">
<table>
    <form action="/edit" method="post">
        <%
            try{
            ArrayList<Cars>arr = (ArrayList<Cars>) request.getAttribute("editdata");
            for (Cars ob:arr) {
        %>
        <pre>
    <label for="1">ID:</label>
    <input type="number" class="form-control" name="carid" id="1" value="<%=ob.getCarid()%>">
    <label for="2">Name:</label>
    <input class="form-control" type="text" name="carname" id="2" value="<%=ob.getCarname()%>">
    <label for="3">MRY:</label>
    <input class="form-control" type="number" name="CarMRY" id="3" value="<%=ob.getCarmry()%>">
    <label for="4">Price:</label>
    <input class="form-control" type="number" name="price" id="4" value="<%=ob.getPrice()%>">
            <input class="btn btn-primary" type="submit" value="Save Changes">
        </pre>
        <%}}catch (Exception e){System.out.println(e.getMessage());}%>
    </form>
</table>
<hr>
<a class="btn btn-primary" href="/">Go back</a>
</div>
</body>
</html>
