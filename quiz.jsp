<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition Quiz</title>
</head>
<body>
<h2>Addition Quiz</h2>
<form action="quizResult.jsp" method="post">
  <% 
      // Generate two random numbers for the addition quiz
      int num1 = (int) (Math.random() * 100);
      int num2 = (int) (Math.random() * 100);
  %>
  <%= num1 %> + <%= num2 %> = <input type="text" name="answer" required><br>

  <% 
      // Hidden fields to pass the numbers to the result page
  %>
  <input type="hidden" name="num1" value="<%= num1 %>">
  <input type="hidden" name="num2" value="<%= num2 %>">

  <input type="submit" value="Submit">
</form>
</body>
</html>