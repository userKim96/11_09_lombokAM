<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
<link rel="shortcut icon" href="/resource/images/favicon.ico" />
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.3.1/dist/full.min.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<link rel="stylesheet" href="/resource/common.css" />
<script src="/resource/common.js" defer="defer"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<div class="h-20 flex justify-between mx-auto text-2xl border">
		<div><a class="h-full px-3 flex items-center" href="/"><span>로고</span></a></div>
		<section class="flex items-center">
			<div class="join">
				<div>
				    <div>
				    	<input class="input input-bordered join-item" placeholder="Search"/>
				    </div>
				</div>
				<select class="select select-bordered join-item">
				    <option>주재료</option>
				    <option>부재료</option>
				</select>
				<div class="indicator">
				    <button class="btn join-item">Search</button>
				</div>
			</div>
		</section>
		<ul class="flex text-lg border">
			<c:if test="${rq.getLoginedMemberId() == 0 }">
				<li class="hover:underline"><a class="h-full px-3 flex items-center" href="/usr/member/login"><span>로그인</span></a></li>
				<li class="hover:underline"><a class="h-full px-3 flex items-center" href="/usr/member/join"><span>회원가입</span></a></li>
			</c:if>
			<c:if test="${rq.getLoginedMemberId() != 0 }">
				<li class="hover:underline"><a class="h-full px-3 flex items-center" href="/usr/member/myPage"><span>마이페이지</span></a></li>
				<li class="hover:underline"><a class="h-full px-3 flex items-center" href="/usr/member/doLogout"><span>로그아웃</span></a></li>
			</c:if>
		</ul>
	</div>
