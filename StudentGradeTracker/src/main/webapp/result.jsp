<%@ page import="java.util.*, model.Student" %>

<html>
<head>
<title>Student Report</title>

<style>

body{
    margin:0;
    height:100vh;
    display:flex;
    background: linear-gradient(to right, #141e30, #243b55);
    justify-content:center;
    align-items:center;
}

.container{
    width:600px;
    background:rgba(255,255,255,0.7);
    padding:30px;
    border-radius:10px;
}

h2{
    color:#333;
    font-style: italic;
}

table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
}

th{
    background:#4CAF50;
    color:white;
    padding:10px;
}

td{
    padding:10px;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f2f2f2;
}

.summary{
    margin-top:20px;
    font-size:18px;
    font-weight:bold;
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

<h2>Student Report</h2>

<table>
<tr>
<th>Name</th>
<th>Grade</th>
</tr>

<%
ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");

double total = 0;
double highest = Integer.MIN_VALUE;
double lowest = Integer.MAX_VALUE;

if(students != null){
for(Student s : students){
total += s.getGrade();

if(s.getGrade() > highest) highest = s.getGrade();
if(s.getGrade() < lowest) lowest = s.getGrade();

%>

<tr>
<td><%= s.getName() %></td>
<td><%= s.getGrade() %></td>
</tr>

<%
}
}
%>

</table>

<%
if(students != null && students.size() > 0){
double avg = (double) total / students.size();
%>

<div class="summary">
Average: <%= avg %> <br>
Highest: <%= highest %> <br>
Lowest: <%= lowest %>
</div>

<%
}
%>

<div class="btn">
<a href="index.jsp">Add Another Student</a>
<a href="Home.jsp">Back</a>
</div>

</div>

</body>
</html>