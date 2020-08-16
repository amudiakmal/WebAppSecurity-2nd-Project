<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.util.Arrays,java.util.List" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%! boolean found = false; %>
<%! int id2; %>
<%! String food2; %>
<%! int price2; %>
<%! String cust2; %>
<%! int dista2; %>
<%! int limit = 3; %>
<%! int[]id = new int[] {1,2,3,4,5}; %>
<%! String[]food = new String[] {"Char Kuey Toew","Lasagna","Mee Udang","Teh Tarik","Char Kuey Toew"}; %>
<%! int[]price = new int[]{4,6,7,2,5}; %>
<%! String[]cust = new String[]{"Anna","Shahrol","Maembong","Kiah","Sofea"}; %>
<%! int[]dista = new int[]{3,2,6,1,7}; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript">
function checkboxlimit(checkgroup, limit){
	var checkgroup=checkgroup
	var limit=limit
	for (var i=0; i<checkgroup.length; i++){
		checkgroup[i].onclick=function(){
		var checkedcount=0
		for (var i=0; i<checkgroup.length; i++)
			checkedcount+=(checkgroup[i].checked)? 1 : 0
		if (checkedcount>limit){
			alert("You can only select a maximum of "+limit+" checkboxes")
			this.checked=false
			}
		}
	}
}

</script>
<title>Food Details</title>
</head>
<body>

         <form name="form1" onsubmit="checkBoxValidation()" action="index.jsp" method="post">
         <p><input type = "checkbox" name = "food" value ="id[0]"/> Char Kuey Toe</p>
         <p><input type = "checkbox" name = "food" value ="id[1]"/> Lasagna</p>
         <p><input type = "checkbox" name = "food" value ="id[2]"/> Mee Udang</p>
         <p><input type = "checkbox" name = "food" value ="id[3]"/> Teh Tarik</p>
         <p><input type = "checkbox" name = "food" value ="id[4]"/> Lasagna</p>
         <p><input type = "checkbox" name = "food" value ="id[5]"/> Char Kuey Toew</p>
         <p></p><input type = "submit" value = "Submit" />
         </form>
 <%--         <% for(int i=0; i<2; i++) {
				if(id2 == id[i]) {
					food2 = food[i];
					price2 = price[i];
					cust2 = cust[1];
					dista2 = dista[i];
					found= true;
				}
			
		}%>--%>
         <script type="text/javascript">
         checkboxlimit(document.forms.form1.food,3)
         </script>

</body>
</html>