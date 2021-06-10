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
        /* ������ ������ ���� */
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
        <h2>��Ƽ��Ƽ ����Ȯ��</h2>
    </div>
    <div class="modalContents">
        <p>���������� Ȯ�����ּ���.</p>
        <div id="info">
            <div>���¸� : Ÿ��</div>
            <div>��ü�� : shop1</div>
            <div>���� : 234��</div>
            <div>�ּ� : ���� ������ �����źϷ� 5,3</div>
            <div>ī�װ� : �̼�>���</div>
            <div>�Ⱓ : 21/06/11 ~ 21/06/15</div>
        </div>
        <div class="confirm"><button type="submit" class="btn btn-danger">����</button></div>
    </div>
</div>