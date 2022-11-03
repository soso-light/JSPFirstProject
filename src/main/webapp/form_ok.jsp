<%--
  Created by IntelliJ IDEA.
  User: soundligt
  Date: 2022-11-01
  Time: 오후 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String nickname = request.getParameter("nickname");
    String major = request.getParameter("major");
    String gender = request.getParameter("gender");
    if(gender.equals("0")) gender = "남자";
    if(gender.equals("1")) gender = "여자";
    String check = request.getParameter("check");
    if(check.equals("0")) check = "비공개";
    if(check.equals("1")) check = "공개";
    String favor = request.getParameter("major");
    String[] genre = request.getParameterValues("genre");
    String genreStr = "";
    if(genre != null)
    {
        for(String temp : genre)
        {
            genreStr += "- " + temp + "\n";
        }
    }
    String[] playlist = request.getParameterValues("playlist");
    String playlistStr = "";
    if(playlist != null)
    {
        for(String temp : playlist)
        {
            playlistStr += "- " + temp + "\n";
        }
    }
    String singer = request.getParameter("singer");
    String song = request.getParameter("song");

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add_result</title>

    <link href="./CSS/my.css" rel="stylesheet">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
    <meta name="theme-color" content="#712cf9">
    <link href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">

</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">21900745 최소미</a>
    </div>
</nav>

<main class="container">
    <div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
        <h1 class="h4 mb-0 text-white lh-1">Add Playlist result</h1>
    </div>

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <div class="row g-3">
            <!-- 이름 -->
            <div class="col-sm-6">
                <h3 class="form-label">이름</h3>
                <p class="form-control"><%= name %></p>
            </div>
            <!-- 닉네임 -->
            <div class="col-sm-6">
                <h3 class="form-label">이름</h3>
                <p class="form-control"><%= nickname %></p>
            </div>
            <!-- 전공 -->
            <div class="col-md-6">
                <h3 class="form-label">전공</h3>
                <p class="form-control"><%= major %></p>
            </div>
            <!-- 성별 -->
            <div class="col-sm-6">
                <h3 class="form-label">성별</h3>
                <p class="form-control"><%= gender %></p>
            </div>
            <!-- 선호도 -->
            <div class="col-md-6">
                <h3 class="form-label">선호도</h3>
                <p class="form-control"><%= favor %></p>
            </div>
            <!-- 장르 -->
            <div class="col-md-4">
                <h3 class="form-label">장르</h3>
                <p class="form-select"><%= genreStr %></p>
            </div>
            <!-- 플레이리스트 선택 -->
            <div class="col-md-5">
                <h3 class="form-label">플레이리스트 선택</h3>
                <p class="form-select"><%= playlistStr %></p>
            </div>

            <hr class="my-4">
            <h4 class="mb-3">Music</h4>
            <div class="col-12">
                <h3 class="form-label">가수</h3>
                <p class="form-control"><%= singer %></p>
            </div>
            <div class="col-12">
                <h3 class="form-label">노래</h3>
                <p class="form-control"><%= song %></p>
            </div>
        </div>

        <hr class="my-4">
        <a class="w-100 btn text-white bg-purple btn-lg" href="form.html"
           role="button">돌아가기</a>

    </div>
</main>

</body>
</html>
