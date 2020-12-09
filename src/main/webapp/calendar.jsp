<%@page import="org.springframework.ui.Model"%>
<%@page import="com.project.draw.draw_plan.Draw_planVO"%>
<%@page import="com.project.draw.draw_plan.Draw_planDAO"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.project.draw.com_member.service.Com_member_service"%>
<%@page import="com.project.draw.com_member.domain.Com_memberDAO"%>
<%@page import="com.project.draw.com_member.Com_memberVO"%>
<%@page import="com.project.draw.brand.BrandVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
	Draw_planDAO dao = new Draw_planDAO();	
	pageContext.setAttribute("list", dao.select_draw_plan());	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title>calendar</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/calendar.css">
<script>
	function closeLayer( obj ) {
		$(obj).parent().hide();
	}

	$(document).ready(function(){

		$(document).on('click', 'h4' , function(e){
			var draw_date = $(this).attr('date');
			console.log(draw_date);
			$.getJSON('items.json', function(data) {
			      var html = '';
			      $.each(data, function(items_index, item) {
			    	  if(data[items_index].date == draw_date){
				    	  html += '<div class="item">';
				    	  html += item.date +'<br />'+ item.brand +'<br />'+ item.name;
				    	  html += '</div>';
				    	  html += '<span onClick="closeLayer(this)" style="cursor:pointer;font-size:1.5em" title="닫기">X</span>';
			    	  }
			      });
			      console.log(html);
			      $('.popupLayer').html(html);
			});
			
			var sWidth = window.innerWidth;
			var sHeight = window.innerHeight;

			var oWidth = $('.popupLayer').width();
			var oHeight = $('.popupLayer').height();

			var divLeft = e.clientX + 10;
			var divTop = e.clientY + 5;

			if( divLeft + oWidth > sWidth ) divLeft -= oWidth;
			if( divTop + oHeight > sHeight ) divTop -= oHeight;

			if( divLeft < 0 ) divLeft = 0;
			if( divTop < 0 ) divTop = 0;

			$('.popupLayer').css({
				"top": divTop,
				"left": divLeft,
				"position": "absolute"
			}).show();
		});
	}) 
</script>
</head>
<body>
<div id="container">	
	<div class="calendar">
		<div class="header">
			<div class="year-month"></div>
			<div class="nav">
				<button class="nav-btn go-prev" onclick="prevWeek()">&lt;</button>
				<button class="nav-btn go-today" onclick="goToday()">Today</button>
				<button class="nav-btn go-next" onclick="nextWeek()">&gt;</button>
			</div>
		</div>
		<div class="main">
			<div class="days">
				 <div class="day">일</div>
	             <div class="day">월</div>
	             <div class="day">화</div>
	             <div class="day">수</div>
	             <div class="day">목</div>
	             <div class="day">금</div>
	             <div class="day">토</div> 
			</div>
			<div class="dates"></div>
		</div>
	</div>
</div>
<div class="popupLayer">
	
</div>
<script>
	/* jshint esversion: 6 */
	
	let date = new Date();
	
	
	const renderCalendar = () => {
		
		const thisYear = date.getFullYear();
		const thisMonth = date.getMonth();
		const thisDate = date.getDate();
		const thisDay = date.getDay();
		const dateCnt = 35;
		
		document.querySelector('.year-month').textContent = thisYear+'년'+(thisMonth+1)+'월'+thisDate+'일'+thisDay;
	
		const thisFirst = new Date(thisYear, thisMonth, 1);
		const TFDate = thisFirst.getDate();
		const TFDay = thisFirst.getDay();
		
		const preLast = new Date(thisYear, thisMonth, 0);
		const thisLast = new Date(thisYear, thisMonth+1, 0);
		const nextLast = new Date(thisYear, thisMonth+2, 0);
		
		const preMonth = preLast.getMonth()+1;
		const nextMonth = nextLast.getMonth()+1;
		
		const PLDate = preLast.getDate();
		const TLDate = thisLast.getDate();
		const NLDate = nextLast.getDate();
		
		const PLDay = preLast.getDay();
		const TLDay = thisLast.getDay();
		const NLDay = nextLast.getDay();
		
		const prevDates = [];
		const thisDates = [];
		const nextDates = [];
		
		const Cal_Arr = (setDate, preDate, startDate) => {
			//1주차
			if( thisDate <= setDate ) { 
				for( let i = 0; i < preDate; i++) {
					prevDates.unshift(preMonth+'.'+(PLDate-i));	
				} 
				for( let i = 1; i < dateCnt-prevDates.length+1; i ++ ) {
					thisDates.push((thisMonth+1)+'.'+i); 
				}
			}	
			//2주차
			if( thisDate >setDate && thisDate <=setDate+7) { 
				for( let i = 0; i < preDate-7; i++) { 
						prevDates.unshift(preMonth+'.'+(PLDate-i));	
				}
				if(prevDates.length >= 5) {
					if(TLDate >= 30) {
						for( let i = 1; i < dateCnt-prevDates.length+1; i++) {
							thisDates.push((thisMonth+1)+'.'+i);	
						} 
					}else{
						for( let i = 1; i < TLDate+1; i++) {
							thisDates.push((thisMonth+1)+'.'+i);	
						}
					}	
				}else{
					for( let i = 1; i < TLDate+1; i++) {
						thisDates.push((thisMonth+1)+'.'+i);	
					}
				}	
				for( let i = 1; i < dateCnt-prevDates.length-thisDates.length+1; i ++ ) {
					nextDates.push(nextMonth+'.'+i); 
				}
			}
			//3주차
			if( thisDate >setDate+7 && thisDate <= setDate+14) {
				for( let i = startDate; i < TLDate+1; i++) {
					thisDates.push((thisMonth+1)+'.'+i);	
				} 
				for( let i = 1; i < dateCnt-thisDates.length+1; i ++ ) {
					nextDates.push(nextMonth+'.'+i); 
				}
			}
			//4주차
			if( thisDate >setDate+14 && thisDate <= setDate+21) {
				for( let i = startDate+7; i < TLDate+1; i++) {
					thisDates.push((thisMonth+1)+'.'+i);	
				} 
				for( let i = 1; i < dateCnt-thisDates.length+1; i ++ ) {
					nextDates.push(nextMonth+'.'+i); 
				}
			}
			//5주차
			if( thisDate >setDate+21 && thisDate <= setDate+28) {
				for( let i = startDate+14; i < TLDate+1; i++) {
					thisDates.push((thisMonth+1)+'.'+i);	
				} 
				for( let i = 1; i < dateCnt-thisDates.length+1; i ++ ) {
					nextDates.push(nextMonth+'.'+i); 
				}
			}
			if( thisDate > setDate+28 ) {
				for( let i = startDate+21; i < TLDate+1; i++) {
					thisDates.push((thisMonth+1)+'.'+i);	
				} 
				for( let i = 1; i < dateCnt-thisDates.length+1; i ++ ) {
					nextDates.push(nextMonth+'.'+i); 
				}
			}

		}
			
	 	switch( TFDay ) {
		 	case 0: Cal_Arr( 7, 7, 8 ); break;
			case 1: Cal_Arr( 6, 8, 7 ); break;
			case 2: Cal_Arr( 5, 9, 6 ); break;
			case 3: Cal_Arr( 4, 10, 5 ); break;	
			case 4: Cal_Arr( 3, 11, 4 ); break;
			case 5: Cal_Arr( 2, 12, 3 ); break;
			case 6: Cal_Arr( 1, 13, 2 ); break;
	 	}
		
		const dates = prevDates.concat(thisDates, nextDates);
		
		dates.forEach((date, i) => {
			var spDate = date.split('.');
			dates[i] = '<div class="date">' + spDate[1] + '<div class="' +date+'"></div></div>';
		})
		
		document.querySelector('.dates').innerHTML = dates.join('');
		
		<c:forEach items="${list}" var="list">     
	    	$('[class="'+'${list.draw_date}'+'"]').html('<h4 date="'+'${list.draw_date}'+'"><img src="http://placehold.it/50x50"></h4>');
		</c:forEach>
	}
	
	renderCalendar();
	
	const prevWeek = () => {
		date.setDate(date.getDate()-7);	
		renderCalendar();
	}
	
	const nextWeek = () => {
		date.setDate(date.getDate()+7);
		renderCalendar();
	} 
	
	const goToday = () => {
		date = new Date();
		renderCalendar();
	}  
	
	
</script>
</body>
</html>