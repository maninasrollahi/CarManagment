<%@ page import="com.example.carmanagment.Cars" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: manin
  Date: 7/8/2023
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container" mt-3>
<form action="/Search" method="get">
 <input class="form-control mt-3" type="number" name="carid" placeholder="Enter CarID">
  <input class="btn btn-primary mt-2" type="submit" value="Search">
</form>
<table class="table table-hover table-drak">
  <tr>
    <th>CarID</th>
    <th>CarName</th>
    <th>CarMRY</th>
    <th>Price</th>
  </tr>
  <%
    try{
      ArrayList<Cars> arr = (ArrayList<Cars>) request.getAttribute("search");
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
<a class="btn btn-primary" href="/">Go back</a>
</div>
</body>
</html>
