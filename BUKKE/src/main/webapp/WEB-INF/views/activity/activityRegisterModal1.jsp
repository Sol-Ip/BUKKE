<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
    .backgroundModal {
        position: fixed;
        background-color: white;
        width: 600px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-radius: 8px;
        box-sizing: border-box;
        box-shadow: 0 0 10px rgba(0, 0, 0, .5);
        font-size: 18px;
        display: none;
    }
    @media(max-width: 600px) {
        /* 반응형 사이즈 조절 */
        .backgroundModal {
            width: 80%;
        }
    }
    .head {
        background-color: rgb(242, 247, 252);
        height: 80px;
        width: 100%;
        font-family: 'KOTRA_BOLD-Bold', Helvetica, sans-serif;
    }
    .head > h2 {
        text-align: center;
        margin: 0;
        padding: 20px;
        color: rgb(0, 51, 199);
    }
    p {
        color: rgba(0, 0, 0, .5);
        text-align: center;
    }

    .confirm {
        text-align: center;
        margin: 16px;
    }
    .confirm .btn {
        padding: 0.375rem 30px;
    }
    #close {
        float: right;
        color: rgb(220, 53, 69);
    }
    #info {
        margin-left: 10%;
    }
</style>

<div class="backgroundModal">
    <div class="head">
        <div id="close"><i class="fas fa-times"></i></div>
        <h2>액티비티 예약확인</h2>
    </div>
    <div class="modalContents">
        <p>예약정보를 확인해주세요.</p>
        <div id="info">
            <div>강좌명 : 타임</div>
            <div>업체명 : shop1</div>
            <div>가격 : 234원</div>
            <div>주소 : 서울 마포구 월드컵북로 5,3</div>
            <div>카테고리 : 미술>대면</div>
            <div>기간 : 21/06/11 ~ 21/06/15</div>
        </div>
        <div class="confirm"><button type="submit" class="btn btn-danger">예약</button></div>
    </div>
</div>