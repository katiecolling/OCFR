<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HEADER</title>
<link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
</head>
<body>
<div>
<a href="${pageContext.request.contextPath}">
<img src="${pageContext.request.contextPath}/resources/logo.png"/>
</a>
<div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><h4>Oconee County Fire Rescue</h4></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            
          
              
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="AddForm.jsp">Add </a></li>
              <li><a href="../navbar-static-top/">Reports</a></li>
              <li><a href="../navbar-fixed-top/">Listings</a></li>
              <li><a href="../navbar-fixed-top/">Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
</div>
</body>
</html>