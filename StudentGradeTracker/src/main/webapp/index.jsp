<%@ page language="java" %>
<html>
<head>
<title>Student Grade Tracker</title>

<style>

body{
    margin:0;
    padding:0;
    font-family: Arial, sans-serif;
    
    background-image:url("6239050.jpg"); /* put image in images folder */
    background-size:cover;
    background-position:center;
}

.container{
    width:450px;
    margin:120px auto;
    background:rgb(131, 183, 201,0.7);
    padding:30px;
    border-radius:30px;
    text-align:center;
    box-shadow:0 0 10px gray;
}

h2{
    color:#333;
    font-style: italic;
}

input[type=text],input[type=number]{
    width:90%;
    padding:8px;
    margin:8px 0;
    border:1px solid black;
    border-radius:5px;
}

input[type=submit]{
    width:95%;
    padding:10px;
    background:#4CAF50;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
}

input[type=submit]:hover{
    background:#45a049;
}

.btn{
    margin-top:20px;
}

.btn a{
    text-decoration:none;
    background:#2196F3;
    color:white;
    padding:10px 20px;
    border-radius:5px;
}

.btn a:hover{
    background:#0b7dda;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Grade Tracker</h2>

<form action="addStudent" method="post">

<input type="text" name="name" placeholder="Enter Student Name" required><br>

<input type="number" name="grade" placeholder="Enter Grade" step="0.01" required><br>

<input type="submit" value="Add Student">

<div class="btn">
<a href="Home.jsp">Back</a>
</div>
</form>

</div>

</body>
</html>