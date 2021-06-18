
# BUKKE
------------
## 팀원 
김솔잎(조장), 홍찬희, 이효정, 전은하, 전형호

------------
## 수행기간
2021년 4월 26일 ~ 6월 15일 

------------


## Contents

1. [개요](#개요)
2. [설계의 주안점](#설계의-주안점)
3. [사용기술 및 개발환경](#사용기술-및-개발환경)
4. [프로젝트 기능 구현](#프로젝트-기능-구현)
5. [주요기능](#주요기능)
6. [Document](#Document)

------------

## 개요
+ 프로젝트 '부캐'란 일상생활을 하는 본 캐릭터가 아닌 부 캐릭터의 모습으로 새로운 나를 발견하기 위해 자신만의 취미생활을 가지며 일상생활에서 벗어나 오로지 자신만의 취미 시간을 보낼 수 있는 것을 목표로 한 플랫폼
------------

## 설계의 주안점
- 일반 회원과 업체 회원 간의 자유로운 소통을 위한 1:1 채팅 
- 예약의 승인 과정을 도입하여 업체가 승인할 시 결제 기능이 구현 됨
- 업체 회원의 경우 회원가입시 관리자의 승인을 요구

------------
## 사용기술 및 개발환경


Category | Detail
---- | ----
Laguage & Library | HTML5, JS, CSS, Java,  jQuery, Ajax
Protocol | Websocket
Framwork | Spring, Bootstrap
API | KakaoMap, Iamport, JAVAMailSender, KaKaoLogin, fullcalendar, summer-note
IDE | Eclpise
Server | Tomcat(v8.5)
Document | draw.io, sigma, ERDCloud, StarUML
CI | Notion, Github
DataBase | Oracle 11g

------------
## 프로젝트 기능 구현


- 공통
    - 프로젝트 주제 선정 및 기획 
    - 플로우차트, 유스케이스 다이어그램 설계
    - DB & 클래스, 시퀸스 다이어그램 설계
    - 일반 회원, 업체 회원, 관리자 마이 페이지
    - 프로젝트 문서 작업
<br><br>

- 김솔잎
  - 조장 
     - 홈페이지 UI/UX 총괄, 프로젝트 문서 관리 총괄 
  - 액티비티
     - 게시판 CRUD 기본 구현 및 UI/UX 총괄 (페이징 처리), 액티비티 검색
     - 게시글 작성 시 썸머노트를 활용하여 이미지 다중 업로드 기능 구현
     - 일반 회원 액티비티 예약기능, 찜하기 기능, 카카오맵 API 이용하여 해당 장소 표시
     - AJAX 이용하여 분류 별 게시글 필터링
  - 홈페이지 인덱스(메인 페이지)
     - 인덱스 UI/UX 담당
     - 분류 별 리스트 출력 
     <br>
  - 일반 회원 마이 페이지
     - 마이 페이지 전체 CSS 구현 및 검토
     - 일반 회원의 클래스 및 액티비티 찜하기 목록 기능 및 CSS 구현

<br><br>

- 홍찬희
   - 클래스
     - 클래스 게시판 CRUD 기본 구현 및 UI/UX 총괄 (페이징 처리),  클래스 검색
     - 게시글 작성 시 썸머노트를 활용하여 이미지 다중 업로드 기능 구현
     - 일반 회원 클래스 예약기능, 찜하기 기능, 카카오맵 API 이용하여 해당 장소 표시
     - 자바스크립트 활용한 분류 별 게시글 조회
     - Websocket 을 활용한 일반 회원 - 업체 회원 간 실시간 1:1채팅 구현
   - 일반 회원 마이 페이지
     - 일반 회원 마이 페이지에 fullcalendar 적용 및 예약 조회 기능 구현

 <br><br>
   
- 이효정 
  - 소개 페이지
     - 소개 UI/UX 총괄
  - 공지사항 페이지
     - 공지사항 게시판 CRUD 기본 구현, 조회수 증가, 검색 기능, 페이징 처리 
  - 추천하기
     - 추천하기 게시판 UI/UX 총괄
  - 일반 회원 마이페이지
     - JavaMailSender를 이용한 일반 회원 아이디 찾기 / 비밀번호 찾기 구현
     - 일반 회원 예약 목록, 예약 승인 여부에 따른 기능 및 CSS 구현
  - 업체 회원 마이페이지
     - 업체 회원 예약 목록, AJAX를 활용하여 예약 승인 여부 기능 및 CSS 구현
  - 관리자 마이페이지
     - 관리자 마이페이지 메인 총괄 

<br><br>  
   
- 전형호
   - 후기
     - 후기 게시판 CRUD 기본 구현, 검색 기능, 페이징 처리
     - AJAX를 이용한 좋아요 표시
     - AJAX를 이용한 댓글 CRUD
  - 추천하기
     - 자바스크립트를 활용하여 추천하기 기능 구현
  - 일반 회원 마이페이지
     - 일반 회원 예약 목록, 예약 승인 여부에 따른 기능 및 CSS 구현
     - fullcalendar 활용하여 결제 여부에 따른 예약 조회 출력 기능 구현
  - 업체 회원 마이페이지
     - 업체 회원 예약 목록, AJAX를 활용하여 예약 승인 여부 기능 및 CSS 구현
  - 관리자 마이페이지
     - 클래스 관리 / 액티비티 관리 / 리뷰 관리 조회 및 삭제 기능 구현
  
<br><br>

- 전은하  
   - 회원가입 및 로그인
     - jQuery 및 AJAX를 활용하여 일반 회원 및 업체 회원 로그인 구분 기능 구현
     - 회원가입 진행 시 아이디 및 비밀번호 유효성 검사
     - 주소 API를 활용하여 주소찾기 기능 구현
     - kakao Login 을 활용하여 소셜로그인 기능 구현
     - 업체회원 가입승인 여부 기능 구현
   - 일반 회원 마이 페이지
     - fullcalendar 활용하여 예약 조회 출력 기능 구현
     - Iamport를 활용하여 사용자의 캘린더 및 액티비티 결제 진행 구현   
   - 관리자 페이지
     - 일반 회원 관리 / 업체 회원 관리 조회
    <br>
  
  
------------
## 주요 기능
**1.로그인**
![카카오](https://user-images.githubusercontent.com/81762007/122334328-85084600-cf74-11eb-9441-cc119ddbae06.PNG)
**2.회원가입**
![일반회원](https://user-images.githubusercontent.com/81762007/122334326-846faf80-cf74-11eb-916f-5952c1289137.PNG)
**3.아이디 찾기**
![아이디 찾기](https://user-images.githubusercontent.com/81762007/122334333-86d20980-cf74-11eb-9ef2-ed2537efc9de.PNG)
**4.클래스**
![클래스](https://user-images.githubusercontent.com/81762007/122334552-e0d2cf00-cf74-11eb-827d-dd9e31ea74de.PNG)
![클래스상세](https://user-images.githubusercontent.com/81762007/122334557-e29c9280-cf74-11eb-8e58-c21b46742cea.PNG)
**5.액티비티**
![액티비티](https://user-images.githubusercontent.com/81762007/122335068-ab7ab100-cf75-11eb-938e-fde8e68f6842.PNG)
![액티비티상세](https://user-images.githubusercontent.com/81762007/122335074-ad447480-cf75-11eb-919e-c70ea0069130.PNG)
**6.후기**
![후기](https://user-images.githubusercontent.com/81762007/122335081-afa6ce80-cf75-11eb-915a-363b43d97a6e.PNG)
![후기상세](https://user-images.githubusercontent.com/81762007/122335087-b2092880-cf75-11eb-9d3d-fa080b1128c1.PNG)
**7.추천하기**
![추천](https://user-images.githubusercontent.com/81762007/122335095-b5041900-cf75-11eb-82e2-3f410e6c44de.PNG)
**8.마이페이지(회원)**
![마페1](https://user-images.githubusercontent.com/81762007/122335120-c0efdb00-cf75-11eb-9e47-ff7ee0b5ef8c.PNG)
![마페2](https://user-images.githubusercontent.com/81762007/122335124-c2b99e80-cf75-11eb-8682-972bac1a9ef5.PNG)
**9.예약관리(업체)**
![예약승인](https://user-images.githubusercontent.com/81762007/122335283-fac0e180-cf75-11eb-8da6-2a65bdaf0e9d.PNG)
**10.채팅**
![채팅](https://user-images.githubusercontent.com/81762007/122335133-c51bf880-cf75-11eb-8d7a-ee300687eab7.PNG)
**11.관리자페이지**
![관리자](https://user-images.githubusercontent.com/81762007/122335137-c5b48f00-cf75-11eb-80d4-5bd123505610.PNG)
![관리자2](https://user-images.githubusercontent.com/81762007/122335770-c26dd300-cf76-11eb-8948-b2d44950ecca.png)

------------ 
## Document
### 1. ERD
![철이없었조_부캐_ERD_최종](https://user-images.githubusercontent.com/77911092/122217410-59d81500-cee8-11eb-8a29-71edccb64633.png)
[철이없었조_ERD_최종.pdf](https://github.com/Sol-Ip/BUKKE/files/6662930/_ERD_.pdf)

### 2. 유스케이스
[철이없었조_유스케이스_210511.pdf](https://github.com/Sol-Ip/BUKKE/files/6662870/_._210511.pdf)

### 3. 플로우차트

[철이없었조_플로우차트_210511.pdf](https://github.com/Sol-Ip/BUKKE/files/6662872/_._210511.pdf)

### 4. 클래스 다이어그램
[철이 없었조_부캐_클래스 다이어그램(최종).pdf](https://github.com/Sol-Ip/BUKKE/files/6662893/_._.pdf)

### 5. 시퀀스 다이어그램
[철이 없었조_부캐_시퀀스 다이어그램(최종).pdf](https://github.com/Sol-Ip/BUKKE/files/6662925/_._.pdf)
