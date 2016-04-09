<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Form</title>
<link rel="stylesheet" href="styles.css"></link>
</head>
<body>
<%@include file="header.jsp" %>
<h1>Add New Entry</h1>


<form name=addForm action=addEntry method=post >

 <label>
      Person ID
   </label>
   <input type=text name=personID value="" />
   <br />
   
  <label>
      First Name
   </label>
   <input type=text name=firstName value="" />
   <br />
   
<label>
      Last Name
   </label>
   <input type=text name=lastName value="" />
   <br />

<label>
      Suffix
   </label>
   <input type=text name=suffix value="" />
   <br />
   
   <label>
      Address
   </label>
   <input type=text name=address value="" />
   <br />
   
   <label>
      City
   </label>
   <input type=text name=city value="" />
   <br />
   
   <label>
      County
   </label>
   <input type=text name=county value="" />
   <br />
   
   <label>
      State
   </label>
   <input type=text name=state value="" />
   <br />
   
   <label>
      Zip
   </label>
   <input type=text name=zip value="" />
   <br />
   
  
   
   <label for="gender">Gender</label>
    <select class="gender" id="gender">
      <option>Male</option>
      <option>Female</option>
      <option>Other</option>
    </select>
    <br />
   
      <label>
      Position
   </label>
   <input type=text name=position value="" />
   <br />
   
      <label>
      Work Phone
   </label>
   <input type=text name=workPhone value="" />
   <br />
   
     <label>
      Main Phone
   </label>
   <input type=text name=mainPhone value="" />
   <br />
   
   <label>
      Radio Number
   </label>
   <input type=text name=radioNumber value="" />
   <br />
   
      <label>
      Station Number
   </label>
   <input type=text name=stationNumber value="" />
   <br />
   
    
   
   <label for="active">Active?</label>
    <select class="active" id="active">
      <option>Yes</option>
      <option>No</option>
      
    </select>
    <br />
   
   <button type="submit" class="btn btn-primary">Submit</button>
   
</form>
<%@include file="footer.jsp" %>
</body>
</html>