<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:set var="pageTitle" value="MAIN" />
	
	<%@ include file="../common/head.jsp" %>
	
	<section>
		<div class="menu-box">
			<ul>
				<li>
				<a href="#">랭킹</a>
				<ul>
					<li><a href="#">HOT</a></li>
					<li><a href="#">종류별</a></li>
					<li><a href="#">인기 유저</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li>
				<a href="#">공지</a>
				<ul>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">업데이트</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li>
				<a href="#">고객센터</a>
				<ul>
					<li><a href="#">문의하기</a></li>
					<li><a href="#">건의하기</a></li>
					<li><a href="#">신고하기</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#">글쓰기</a></li>
			</ul>
		</div>
	</section>
	
	<section class="">
		<div class="">
			<div><a href="#">이벤트</a></div>
			<table>
				<tr>
					<th><a href="#">사진1</a></th>
					<th><a href="#">사진2</a></th>
					<th><a href="#">사진3</a></th>
					<th><a href="#">사진4</a></th>
					<th><a href="#">사진5</a></th>
				</tr>
			</table>
		</div>
		<div class="">
			<div><a href="#">HOT</a></div>
			<table>
				<tr>
					<th><a href="#">사진1</a></th>
					<th><a href="#">사진2</a></th>
					<th><a href="#">사진3</a></th>
					<th><a href="#">사진4</a></th>
					<th><a href="#">사진5</a></th>
				</tr>
			</table>
		</div>
		<div class="">
			<div><a href="#">BEST</a></div>
			<table>
				<tr>
					<th><a href="#">사진1</a></th>
					<th><a href="#">사진2</a></th>
					<th><a href="#">사진3</a></th>
					<th><a href="#">사진4</a></th>
					<th><a href="#">사진5</a></th>
				</tr>
			</table>
		</div>
		<div class="">
			<div><a href="#">인기유저</a></div>
			<table>
				<tr>
					<th><a href="#">사진1</a></th>
					<th><a href="#">사진2</a></th>
					<th><a href="#">사진3</a></th>
					<th><a href="#">사진4</a></th>
					<th><a href="#">사진5</a></th>
				</tr>
			</table>
		</div>
	</section>

	
	<%@ include file="../common/foot.jsp" %>