<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Coins</title>
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
<!--         	<a href="/MyServ?act=add"><input type="image" src="data.png" /></a><br /><font size="24px;">View Data</font> -->
        </td>
        <td width="25%">
        <form method="post" action="/MyServ?act=add">
        	<table id="myTable" border="1" width="100%">
        	<tr><td>Name</td><td><input type="text" name="nam" /></td></tr>
        	<tr><td>Country</td><td><input type="text" name="con" /></td></tr>
        	<tr><td>Year</td><td><input type="text" name="yr" /></td></tr>
        	<tr><td>Value</td><td><input type="text" name="val" /></td></tr>
        	<tr><td></td><td><input type="submit" value="Submit" /></td></tr>
        	</table>

        </form>	
        </td>
    </tr>
</table>




</body>
</html>
