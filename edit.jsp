<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="model.Certification" %>
    <% Certification certification = (Certification) request.getAttribute("Certification"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Profile</title>
</head>
<body>

	<%@include file="header.jsp" %>
	<h1>Member Profile</h1>
	<form name=edit action=edit method=post >
	
	
	<label>
      Name:
   </label>
   <input type=text name=name value="<%= user.getName() %> />
   <br />

   <label>
      Position:
   </label>
   <input type=text name=position value="<%= user.getPosition() %>" />
   <br />
   
   <label for="gender">Gender</label>
    <select class="gender" id="gender">
      <option>Male</option>
      <option>Female</option>
      <option>Other</option>
    </select>
   <br> 
   
   <label>
      Address:
   </label>
   <input type=text name= address value="<%= user.getAddress() %>" />
   <br />
   
      <label>
      City:   </label>
   <input type=text name= city value="<%= user.getCity() %>" />
   <br />
   
     <label>
      County:
   </label>
   <input type=text name= county value="<%= user.getCounty() %>" />
   <br /> 
   
    <label>
      State:
   </label>
   <input type=text name= state value="<%= user.getState() %>" />
   <br /> 
   
    <label>
      Station #:
   </label>
   <input type=text name= station value="<%= user.getStation() %>" />
   <br /> 
   
    <label>
      Radio #:
   </label>
   <input type=text name= radio value="<%= user.getRadio() %>" />
   <br /> 
   
    <label>
      Main Phone:
   </label>
   <input type=text name= mPhone value="<%= user.getmPhone() %>" />
   <br /> 
   
    <label>
      WorkPhone:   </label>
   <input type=text name= wPhone value="<%= user.wPhone() %>" />
   <br /> 
   
    <label>
      Active:    </label>
   <input type=text name= active value="<%= user.getActive() %>" />
   <br /> 
   
    <label>
      Email Address:
   </label>
   <input type=text name= email value="<%= user.getEmail() %>" />
   <br /> 
   
    <label>
      Certifications:
   </label>
   <input type=text name= certifications value="<%= certification.getCertID() %>" />
   <br /> 
   
   
   
   
   <input type=submit name=submit value="Update Profile" />

</form>
	
	
	<%@include file="footer.jsp" %>

</body>
</html>