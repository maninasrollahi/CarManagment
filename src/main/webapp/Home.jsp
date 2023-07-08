<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.carmanagment.Cars" %><%--
  Created by IntelliJ IDEA.
  User: manin
  Date: 7/7/2023
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<table class="table table-hover table-drak">
    <tr>
        <th>CarID</th>
        <th>CarName</th>
        <th>CarMRY</th>
        <th>Price</th>
    </tr>
    <%
        try{
       ArrayList<Cars> arr = (ArrayList<Cars>) request.getAttribute("data");
        for (Cars ob:arr) {
            %>
            <tr>
                <td><%=ob.getCarid()%></td>
                <td><%=ob.getCarname()%></td>
                <td><%=ob.getCarmry()%></td>
                <td><%=ob.getPrice()%></td>
                <td><a class="btn btn-danger" href="/delete?id=<%=ob.getCarid()%>">Delete</a></td>
                <td><a class="btn btn-info" href="/edit?id=<%=ob.getCarid()%>">Edit</a></td>
            </tr>
    <%
        }
        }catch(Exception e){System.out.println(e.getMessage());}
    %>
</table>
<hr>
<a class="btn btn-primary" href="Add.jsp">Add Car</a> <a class="btn btn-primary" href="Search.jsp">Search car by ID</a>
</div>
</body>
</html>
