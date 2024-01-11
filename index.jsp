<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div id="container">
      <div id="header"><h1>My Calculator</h1></div>
      <div id="form">
        <form method="post" action="index.jsp">
          <div class="input">
            <label for="num1">Enter First Number: </label>
            <input
              id="num1"
              type="number"
              name="num1"
              placeholder="123"
              required
            />
          </div>
          <div class="input">
            <label for="num2">Enter Second Number: </label>
            <input
              id="num2"
              type="number"
              name="num2"
              placeholder="123"
              required
            />
          </div>
          <div class="input">
            <label for="math">Select Method:</label>
            <select id="math" name="math">
              <option>Choose One</option>
              <option>Add</option>
              <option>Subtract</option>
              <option>Multiply</option>
              <option>Divide</option>
            </select>
          </div>
          <div class="input">Result:
          <%
          if(request.getParameter("num1") != null){
          int num1 = Integer.parseInt(request.getParameter("num1"));
          int num2 = Integer.parseInt(request.getParameter("num2"));
          String operation = request.getParameter("math");
          switch(operation){
             case "Add" : out.println(num1+num2);
                          break;
             case "Subtract" : out.println(num1-num2);
                          break;
             case "Multiply" : out.println(num1*num2);
                          break;
             case "Divide" : try{
                              out.println(num1/(double)num2);
                              }catch(ArithmeticException e){
                              out.println("<font color=red>Cannot Divide By Zero!</font>");
                              }finally{
                              break;
                              }
             default : out.println("<font color=red>Invalid Operation!</font>");
             }
          }
          %>
          </div>
          <div class="submit">
            <input type="submit" />
          </div>
          <div class="reset">
            <input type="reset" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
