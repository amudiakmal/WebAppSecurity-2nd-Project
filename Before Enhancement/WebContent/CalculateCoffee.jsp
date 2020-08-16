<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
    String type = request.getParameter("type");
    String size = request.getParameter("size");
    String ice = request.getParameter("ice");
    String shot = request.getParameter("shot");
    String syrup = request.getParameter("syrup");
    int units = Integer.parseInt(request.getParameter("amount"));
    double Price = 0;
    
    if(type.equals("americano") || type.equals("mocha")) {
    	Price = Price + 5.00;
    	
    	if(size.equals("short")) {
    		Price = Price - 2.00;
    	}
    	else if(size.equals("tall")) {
    		Price = Price - 1.00;
    	}
    	else if(size.equals("grande")) {
    		Price = Price + 0.00;
    	}
    	else if(size.equals("venti")) {
    		Price = Price + 1.00;
    	}
    	else if(size.equals("trenta")) {
    		Price = Price + 2.00;
    	}
    	
    	if(ice.equals("normal")) {
    		Price = Price + 0.00;
    	}
    	else if(ice.equals("light")) {
    		Price = Price - 0.30;
    	}
    	else if(ice.equals("noice")) {
    		Price = Price - 0.50;
    	}
    	
    	if(shot.equals("oneshot")) {
    		Price = Price + 1.00;
    	}
    	else if(shot.equals("twoshot")) {
    		Price = Price + 2.00;
    	}
    	else if(shot.equals("threeshot")) {
    		Price = Price + 3.00;
    	}
    	
    	if(syrup.equals("onepump")) {
    		Price = Price + 0.50;
    	}
    	else if(syrup.equals("twopump")) {
    		Price = Price + 1.00;
    	}
    	else if(syrup.equals("threepump")) {
    		Price = Price + 1.50;
    	}
    }
    else if(type.equals("latte")) {
    	Price = Price + 4.00;
    	
    	if(size.equals("short")) {
    		Price = Price - 2.00;
    	}
    	else if(size.equals("tall")) {
    		Price = Price - 1.00;
    	}
    	else if(size.equals("grande")) {
    		Price = Price + 0.00;
    	}
    	else if(size.equals("venti")) {
    		Price = Price + 1.00;
    	}
    	else if(size.equals("trenta")) {
    		Price = Price + 2.00;
    	}
    	
    	if(ice.equals("normal")) {
    		Price = Price + 0.00;
    	}
    	else if(ice.equals("light")) {
    		Price = Price - 0.30;
    	}
    	else if(ice.equals("noice")) {
    		Price = Price - 0.50;
    	}
    	
    	if(shot.equals("oneshot")) {
    		Price = Price + 1.00;
    	}
    	else if(shot.equals("twoshot")) {
    		Price = Price + 2.00;
    	}
    	else if(shot.equals("threeshot")) {
    		Price = Price + 3.00;
    	}
    	
    	if(syrup.equals("onepump")) {
    		Price = Price + 0.50;
    	}
    	else if(syrup.equals("twopump")) {
    		Price = Price + 1.00;
    	}
    	else if(syrup.equals("threepump")) {
    		Price = Price + 1.50;
    	}
    }
    else if(type.equals("cappuccino")) {
    	Price = Price + 5.50;
    	
    	if(size.equals("short")) {
    		Price = Price - 2.00;
    	}
    	else if(size.equals("tall")) {
    		Price = Price - 1.00;
    	}
    	else if(size.equals("grande")) {
    		Price = Price + 0.00;
    	}
    	else if(size.equals("venti")) {
    		Price = Price + 1.00;
    	}
    	else if(size.equals("trenta")) {
    		Price = Price + 2.00;
    	}
    	
    	if(ice.equals("normal")) {
    		Price = Price + 0.00;
    	}
    	else if(ice.equals("light")) {
    		Price = Price - 0.30;
    	}
    	else if(ice.equals("noice")) {
    		Price = Price - 0.50;
    	}
    	
    	if(shot.equals("oneshot")) {
    		Price = Price + 1.00;
    	}
    	else if(shot.equals("twoshot")) {
    		Price = Price + 2.00;
    	}
    	else if(shot.equals("threeshot")) {
    		Price = Price + 3.00;
    	}
    	
    	if(syrup.equals("onepump")) {
    		Price = Price + 0.50;
    	}
    	else if(syrup.equals("twopump")) {
    		Price = Price + 1.00;
    	}
    	else if(syrup.equals("threepump")) {
    		Price = Price + 1.50;
    	}
    }
    else if(type.equals("espresso")) {
    	Price = Price + 6.00;
    	
    	if(size.equals("short")) {
    		Price = Price - 2.00;
    	}
    	else if(size.equals("tall")) {
    		Price = Price - 1.00;
    	}
    	else if(size.equals("grande")) {
    		Price = Price + 0.00;
    	}
    	else if(size.equals("venti")) {
    		Price = Price + 1.00;
    	}
    	else if(size.equals("trenta")) {
    		Price = Price + 2.00;
    	}
    	
    	if(ice.equals("normal")) {
    		Price = Price + 0.00;
    	}
    	else if(ice.equals("light")) {
    		Price = Price - 0.30;
    	}
    	else if(ice.equals("noice")) {
    		Price = Price - 0.50;
    	}
    	
    	if(shot.equals("oneshot")) {
    		Price = Price + 1.00;
    	}
    	else if(shot.equals("twoshot")) {
    		Price = Price + 2.00;
    	}
    	else if(shot.equals("threeshot")) {
    		Price = Price + 3.00;
    	}
    	
    	if(syrup.equals("onepump")) {
    		Price = Price + 0.50;
    	}
    	else if(syrup.equals("twopump")) {
    		Price = Price + 1.00;
    	}
    	else if(syrup.equals("threepump")) {
    		Price = Price + 1.50;
    	}
    }
    
    double total = Price * units;

 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
</head>
<body>
 <h3>Coffee Type   </h3>= <%= type %>
 <h3>Cup Size      </h3>= <%= size %>
 <h3>Ice Level     </h3>= <%= ice %>
 <h3>Espresso Shot </h3>= <%= shot %>
 <h3>Syrup Pump    </h3>= <%= syrup %>
 <h3>Amount    </h3>= <%= units %>
 <br>
  <h2>Total Price = <%= total %></h2> <br>
  
  <p>Payment</p>
  <br>
  <p>5% Discount for paying using credit card !!</p>
  
  <form method="get" action="payment.jsp"> 
            <select name="payment">
                <option value="1">Credit</option>
                <option value="2">Debit</option>
               
            </select>
<%  session.setAttribute("total", total); %>
  
<input type="submit" value="Pay !">
  </form>
  
 <br>
 
 
</body>
</html>