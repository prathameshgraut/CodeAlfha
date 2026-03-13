<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Grade Tracker Dashboard</title>

<style>

body{
    margin:0;
    padding:0;
    font-family:Arial, sans-serif;
    background-image:url("11068.jpg");
    background-size:cover;
    background-position:center;
}

.container{
    width:700px;
    margin:120px auto;
    background:rgba(182, 233, 250,0.9);
    padding:40px;
    border-radius:10px;
    text-align:center;
    box-shadow:0px 0px 15px gray;
}

h1{
    color:#333;
}

p{
    font-size:18px;
    color:#444;
    line-height:1.6;
}

.btn{
    margin-top:25px;
}

.btn a{
    text-decoration:none;
    background:#4CAF50;
    color:white;
    padding:12px 25px;
    font-size:18px;
    border-radius:6px;
}

.btn a:hover{
    background:#45a049;
}

</style>

</head>
<body>

<div class="container">

<h1>Student Grade Tracker</h1>

<p>
This system helps to manage student grades easily.  
You can add student names and their grades, and the system will automatically
calculate the <b>Average Grade</b>, <b>Highest Grade</b>, and <b>Lowest Grade</b>.
</p>

<p>

<b>It helps teachers or administrators track student performance efficiently.</b>
</p>

<div class="btn">
<a href="index.jsp">Add Student Grade</a>
<a href="result.jsp">Show Result</a> 
</div>

</div>

</body>
</html>