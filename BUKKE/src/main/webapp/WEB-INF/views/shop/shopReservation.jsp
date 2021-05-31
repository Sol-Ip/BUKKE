<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 - 예약조회</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<style>
    body {
        font-size: 16px;
        font-family: 'Poppins', Arial, sans-serif;
    }
    ul, li {
        list-style: none;
    }
    #title {
        font-size: 2.6rem;
    }
    #typeClass {
        background-color: #d9edf7;
    }
    #typeActivity {
        background-color: #f2dede;
    }
</style>
</head>
<body>
<!-- 메뉴 마음대로 변경가능 헤더 빼도 됨. -->
<header>
    <nav class="navbar">
        <div>
            <a class="navbar-brand">BUKKE</a>
            <ul class="navbar-nav">
                <li class="nav-item">채팅</li>
                <li class="nav-item">메뉴</li>
                <li class="nav-item"><i class="far fa-user"></i>[사업자명]</li>
            </ul>
        </div>
    </nav>
</header>
<div id="wrap">
	<div id="title"><i class="far fa-list-alt"></i>예약목록</div>
	<div>
        <select>
            <option>상세검색</option>
            <option>클래스</option>
            <option>액티비티</option>
        </select>
        <i class="fa fa-search"></i>
        <input type="text" id="searchValue" placeholder="검색어를 입력하세요">
        <button onclick="search();">검색</button>
    </div>
    <table class="table table-bordered">
        <thead>
            <tr>
                <!-- 체크박스 빼도 됨 / 메뉴선택에 필요한 컬럼 넣거나 빼도 됨 -->
                <th><input type="checkbox"></th>
                <th>구분</th>
                <th>예약번호</th>
                <th>회원명</th>
                <th>클래스/액티비티명</th>
                <th>예약일</th>
                <th>메뉴선택</th>
                <th>메뉴선택</th>
                <th>승인여부</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td id="check_"><input type="checkbox"></td>
                <td class="classType" id="typeClass">클래스</td>
                <td id="reservationNo" name="reservationNo">1</td>
                <td id="reservationId" name="reservationId">user1</td>
                <td id="className" name="className">수공예 시간</td>
                <td id="reservationDate" name="reservationDate">21.05.31</td>
                <td id="example" id="example">(null)</td>
                <td id="example" id="example">(null)</td>
                <td>
                    <button id="confirm" onclick="confirm(reservationNo)" class="btn btn-primary">승인</button>
                    <button id="reject" onclick="reject(reservationNo)" class="btn btn-danger">거절</button>
                </td>
            </tr>
            <tr>
                <td id="check_"><input type="checkbox"></td>
                <td class="classType" id="typeActivity">액티비티</td>
                <td id="reservationNo" name="reservationNo">2</td>
                <td id="reservationId" name="reservationId">user1</td>
                <td id="activityName" name="activityName">초보를 위한 서핑강습</td>
                <td id="reservationDate" name="reservationDate">21.06.01</td>
                <td id="example" id="example">(null)</td>
                <td id="example" id="example">(null)</td>
                <td>
                    <button id="confirm" onclick="confirm(reservationNo)" class="btn btn-primary">승인</button>
                    <button id="reject" onclick="reject(reservationNo)" class="btn btn-danger">거절</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>