<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어 연산</title>
</head>
<body>
<h1>산술 연산자들</h1>
5 + 2 결과 : ${5 + 2}<br>
5 - 2 결과 : ${5 - 2}<br>
5 * 2 결과 : ${5 * 2}<br>
--------나눗셈 표현 두가지------------<br>
5 / 2 결과 : ${5 / 2}<br>
<%-- 5 div 2 결과 : ${5 div 2}<br> --%>
----------------------------------<br>
--------나머지 표현 두가지------------<br>
5 % 2 결과 : ${5 % 2}<br>
5 mod 2 결과 : ${5 mod 2}<br>
----------------------------------<br>
<h1>관계 연산자들</h1>
--------관계 연산자 표현 두가지------------<br>
5 == 2 결과 : ${5 == 2} => 5 eq 5 결과 : ${5 eq 5}<br>
<%-- 5 != 2 결과 : ${5 != 2} => 5 ne 5 결과 : ${5 ne 5}<br> --%>
5 < 2 결과 : ${5 < 2} => 5 lt 2 결과 : ${5 lt 2}<br>
5 > 2 결과 : ${5 > 2} => 5 gt 2 결과 : ${5 gt 2}<br>
5 <= 2 결과 : ${5 <= 2} => 5 le 2 결과 : ${5 le 2}<br>
5 >= 2 결과 : ${5 >= 2} => 5 ge 2 결과 : ${5 ge 2}<br>
----------------------------------<br>
<h1>논리 연산자들 표현 두가지</h1>
(5>2) || (5<2) 결과 : ${(5>2) || (5>2)} => false or true 결과 : ${false or true}<br>
(5>2) && (5>2) 결과 : ${(5>2) && (5>2)} => false and true 결과 : ${false and true}<br>
 !(5>2)  결과 :  !(5>2)  =>  not false 결과 : ${ not false }<br>


</body>
</html>