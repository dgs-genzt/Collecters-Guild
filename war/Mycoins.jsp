<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Coins</title>
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
        	<input type="image" src="data.png" onClick="myFunction()" /><br /><font size="24px;">View Data</font>
        </td>
        <td width="25%">
        	<table id="myTable" border="1" width="100%">
        	</table>
        </td>
    </tr>
</table>


    <script type="text/javascript">
    
    if(document.URL.indexOf("/MyServ?act=hello") != -1) {
        //found
    	
    } else {
    	
    	window.location.href=window.location+"/MyServ?act=hello";
    }
    
    window.fbAsyncInit = function() {
        FB.init({
          appId      : '1679322005628444',
          xfbml      : true,
          version    : 'v2.2'
        });

        // ADD ADDITIONAL FACEBOOK CODE HERE
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
      
      function onLogin(response) {
    	  if (response.status == 'connected') {
    	    FB.api('/me?fields=first_name', function(data) {
    	      var welcomeBlock = document.getElementById('fb-welcome');
    	      welcomeBlock.innerHTML = 'Hello, ' + data.first_name + '!';
    	    });
    	  }
    	}

    	FB.getLoginStatus(function(response) {
    	  // Check login status on load, and if the user is
    	  // already logged in, go directly to the welcome message.
    	  if (response.status == 'connected') {
    	    onLogin(response);
    	  } else {
    	    // Otherwise, show Login dialog first.
    	    FB.login(function(response) {
    	      onLogin(response);
    	    }, {scope: 'user_friends, email'});
    	  }
    	}); 
    
	var nam = "<%=request.getAttribute("greet") %>";
	if (nam != "null")		
		document.getElementById("name").innerText = nam;
	
    function myFunction() 
    {
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
    	var Name =<%=request.getAttribute("Name") %>;

    	var Country = <%=request.getAttribute("Country") %>;
    	var Value = <%=request.getAttribute("Value") %>;
    	var Year = <%=request.getAttribute("Year") %>;
    	var length = Country.length;
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
    
    </script>


</body>
</html>
