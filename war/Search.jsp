<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
</head>

<body background="2560x1600.jpg" style="background-repeat:repeat;">
<!-- Warning -->
    <noscript>
      <div style="width: 22em; position: absolute; left: 50%; margin-left: -11em; color: red; background-color: white; border: 1px solid red; padding: 4px; font-family: sans-serif">
        Your web browser must have JavaScript enabled
        in order for this application to display correctly.
      </div>
    </noscript>    

<div align="center">
<font color="#000099" size="24">Collectors Guild</font>
</div>

<table align="center" width="100%" >

    <tr align="center">
        <td width="25%">
        	    	<table border="1" style="color:#990033; font-size:24px;" width="100%" >   
                      <tr><th><br />Menu<br /><br /></th></tr>
                      <tr align="center"><td><br /><a href="/MyServ?act=hello">My Coins</a><br /><br /></td></tr>
                      <tr align="center"><td><br /><a href="Addcoin.jsp">Add</a><br /><br /></td></tr>
                      <tr align="center"><td><br /><a href="Search.jsp">Search</a><br /><br /></td></tr>
                    </table>

        </td>
        <td width="25%">
		<form method="post" action="/MyServ?act=search">
        	<table id="myTable1" border="1" width="100%">
        	<tr><td>Name*</td><td><input type="text" name="nam" /></td></tr>
        	<tr><td>Country*</td><td><input type="text" name="con" /></td></tr>
        	<tr><td>Year*</td><td><input type="text" name="yr" /></td></tr>        	
        	<tr><td></td><td><input type="submit" value="Search" /></td></tr>
        	</table>

        </form>	        *Mandatory</td>
        <td width="25%">
        <input type="image" src="data.png" onClick="myFunction()" /><br /><font size="24px;">Show Result</font>
        <table id="myTable" border="1" width="100%"></table>
        </td>
    </tr>
</table>
    <script type="text/javascript">

function myFunction() 
    {
    	var table = document.getElementById("myTable");
        row = table.insertRow(0);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        cell1.innerHTML = "Name";
        cell2.innerHTML = "Country";
        cell3.innerHTML = "Year";
        cell4.innerHTML = "Value";
        cell5.innerHTML = "User";
    	var Name =<%=request.getAttribute("Name") %>;
    	var Country = <%=request.getAttribute("Country") %>;
    	var Value = <%=request.getAttribute("Value") %>;
    	var Year = <%=request.getAttribute("Year") %>;
    	var User = <%=request.getAttribute("User") %>;
    	
    	var length = Country.length;
    	var row;
    	for (var i = 0; i < length; i++) 
    	{
	        row = table.insertRow(i+1);
	        var cell1 = row.insertCell(0);
	        var cell2 = row.insertCell(1);
	        var cell3 = row.insertCell(2);
	        var cell4 = row.insertCell(3);
	        var cell5 = row.insertCell(4);
	        cell1.innerHTML = Name[i];
	        cell2.innerHTML = Country[i];
	        cell3.innerHTML = Year[i];
	        cell4.innerHTML = Value[i];
	        cell5.innerHTML = User[i];
    	}
    }

</script>
</body>
</html>
