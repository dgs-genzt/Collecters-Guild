<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Coins</title>
    

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<style>
body {
    background-image: url("bg.jpg");
    background-repeat: repeat-x;
    background-repeat: repeat-y;
}
</style>  
    
</head>
<body >

 <!-- OPTIONAL: include this if you want history support -->
    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position:absolute;width:0;height:0;border:0"></iframe>
    
    <!-- RECOMMENDED if your web app will not function without JavaScript enabled -->
    <noscript>
      <div style="width: 22em; position: absolute; left: 50%; margin-left: -11em; color: red; background-color: white; border: 1px solid red; padding: 4px; font-family: sans-serif">
        Your web browser must have JavaScript enabled
        in order for this application to display correctly.
      </div>
    </noscript>    
<!--     <form name="myForm" id="myForm" action="/MyServ?act=hello" method="post" > -->
<!-- <!-- 	<input type="text" name="myname" value=""> --> 
<!--  	<input id="but" type="button" value="submit" onClick="mySubmit();" >  -->
 		

<!-- </form> -->
<!-- <a href="/MyServ?act=hello" id="foo" name="foo">Test</a> -->
<label id="name"></label>
    <h1><center>Collectors Guild</center></h1>
    <table align="center" width="80%">
    <tr>
    <td>
    	<table border="1" >   
		  <tr><th>Menu</th></tr>
		  <tr><td><a href="Mycoins.jsp">My Coins</a></td></tr>
		  <tr><td><a href="Request.jsp">Request</a></td></tr>
		  <tr><td><a href="Addcoin.jsp">Add</a></td></tr>
		  <tr><td><a href="Search.jsp">Search</a></td></tr>
		</table>
		    	
    </td>
    
    
    
    
<td><input id="but" name="but" type="button" value="View Data Table" onClick="myFunction()" ></td>
    <td>
    	<table id="myTable" border="1">
    	
    </td>    
    </tr>
    </table>


    <script type="text/javascript">
    
    if(document.URL.indexOf("/MyServ?act=hello") != -1) {
        //found
    	
    } else {
    	
    	window.location.href=window.location+"/MyServ?act=hello";
    } 
    
	var nam = "<%=request.getAttribute("greet") %>";
	if (nam != "null")		
		document.getElementById("name").innerText = nam;
	
// 	jQuery("#myForm").bind("submit", function() {
// 	    alert("Form was submitted.");
// 	});
    function myFunction() 
    {
    	//document.getElementById("myForm").submit();
  var table = document.getElementById("myTable");
row = table.insertRow(0);
var cell1 = row.insertCell(0);
var cell2 = row.insertCell(1);
var cell3 = row.insertCell(2);
var cell4 = row.insertCell(3);
cell1.innerHTML = "Name";
cell2.innerHTML = "Country";
cell3.innerHTML = "Year";
cell4.innerHTML = "Value";  	
      //$("#myForm").submit();	
    	
    	var Name =<%=request.getAttribute("Name") %>;
    	var Country = <%=request.getAttribute("Country") %>;
    	var Value = <%=request.getAttribute("Value") %>;
    	var Year = <%=request.getAttribute("Year") %>;
    	var length = Name.length;
    	var row;
    	for (var i = 0; i < length; i++) 
    	{
	        
	        row = table.insertRow(i+1);
	        var cell1 = row.insertCell(0);
	        var cell2 = row.insertCell(1);
	        var cell3 = row.insertCell(2);
	        var cell4 = row.insertCell(3);
	        cell1.innerHTML = Name[i];
	        cell2.innerHTML = Country[i];
	        cell3.innerHTML = Year[i];
	        cell4.innerHTML = Value[i];
    	}
    }
    
    //mySubmit();
//     function mySubmit()
//     {
//     	document.getElementById("myForm").submit();
//     }
    //$("#foo").click();
    </script>

</body>
</html>