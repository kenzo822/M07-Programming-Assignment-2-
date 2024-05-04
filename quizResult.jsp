<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz Result</title>
</head>
<body>
<h2>Quiz Result</h2>
<%
  // Retrieve user's answer and the numbers from the previous page
  int userAnswer = Integer.parseInt(request.getParameter("answer"));
  int num1 = Integer.parseInt(request.getParameter("num1"));
  int num2 = Integer.parseInt(request.getParameter("num2"));

  // Calculate the correct answer
  int correctAnswer = num1 + num2;

  // Checks if the user's answer is correct
  boolean isCorrect = userAnswer == correctAnswer;
%>
<p>Your answer: <%= userAnswer %></p>
<p>Correct answer: <%= correctAnswer %></p>
<%
  // Display if the user's answer is correct or not
  if (isCorrect) {
%>
  <p> Correct! </p>
<%
  } else {
%>
  <p> Incorrect </p>
<%
  }
%>
</body>
</html>