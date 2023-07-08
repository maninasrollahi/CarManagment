<%--
  Created by IntelliJ IDEA.
  User: manin
  Date: 7/7/2023
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<form action="add" method="post">
        <pre>
    <label for="1">ID:</label>
    <input class="form-control"  type="number" name="carid" id="1" placeholder="Enter your CarID">
    <label for="2">Name:</label>
    <input class="form-control"  type="text" name="carname" id="2" placeholder="Enter your CarName">
    <label for="3">MRY:</label>
    <input class="form-control"  type="number" name="CarMRY" id="3" placeholder="Enter your CarMRy">
    <label for="4">Price:</label>
    <input class="form-control"  type="number" name="price" id="4" placeholder="Enter your Price">
            <input class="btn btn-primary" type="submit" value="Save">
        </pre>
</form>
<hr>
<a class="btn btn-primary" href="/">Go back</a>
</div>
</body>
</html>
