<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:import url="/WEB-INF/views/header.jsp" />
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.agree_txt div.con {
   overflow-y: scroll;
   padding: 20px;
   height: 180px;
   border:1px solid #ccc;
   boxing-sizing:border-box;
}

.joinbefore-agree {
    width: 1100px;
    margin: auto;
    overflow: hidden;
    padding: 0 0 0 0;
    background: #fff;
    min-height: 500px;
    padding-top: 42px;
    padding-bottom: 30px;
}

.reg_button {
    text-align: center;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $('.btn btn-danger px-3').click(function(){
      if($('#agree1').prop('checked') == false || $('#agree2').prop('checked') == false || $('#agree3').prop('checked') == false){
          alert('모든 약관에 동의 하셔야 합니다.');
      }else{
         $(location).attr('href','http://localhost:8088/join/joinForm');
      }
   });
   
   $('#all-agree').click(function() {
      $('.chk').prop('checked', this.checked);
   })
   
   
});


</script>
</head>
<body>
<div class="joinbefore-agree">
   <div class="agree_txt">
      <div>
         <p>개인정보 보호정책 방침 동의</p>
            <span><input type="checkbox" class="chk" id="agree2" name="agree2" value="Y" ><label for="agree2">개인정보 처리방침에 동의합니다.</label></span>
      </div>
      <div class="con">
         <div class="section1">
   <h4>kh아트센터의 개인정보처리방침</h4>
   <p>kh아트센터에서 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집·보유 및 처리되고 있습니다.<br> 「공공기관의 개인정보 보호에 관한 법률」은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 재단에서는 이러한 법령의 규정에 따라 수집·보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다. 또한, 관련법령에서 규정한 바에 따라 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 여러분의 권익을 존중하며, 여러분의 이러한 법령상 권익의 침해 등에 대하여 행정심판법에서 정하는 바에 따라 행정심판을 청구할 수 있습니다.<br> 다음은 재단의 개인정보취급방침을 설명 드리겠습니다. 재단의 개인정보취급방침은 재단이 운영하는 홈페이지에서 이용자 여러분의 개인정보를 보호하기 위한「홈페이지 이용자의 개인정보보호」와 소관업무를 수행하는데 필요한 개인정보 취급에 대한 「컴퓨터에 의해 처리되는 개인정보보호」두 가지로 구성되어 있습니다.</p>
   
   <h4>홈페이지 이용자의 개인정보처리방침</h4>
   <p>여기는 kh아트센터의 웹사이트입니다. 위 홈페이지의 이용에 대해 감사드리며, 홈페이지에서의 개인정보취급방침에 대하여 설명을 드리겠습니다. 이는 현행 『공공기관의개인정보보호에관한법률』 및 『공공기관의개인정보보호를위한기본지침』에 근거를 두고 있습니다. 재단에서 운영하고 있는 웹사이트는 다음과 같으며, 이 방침은 별도의 설명이 없는 한 재단에서 운용하는 모든 웹사이트에 적용됨을 알려드립니다. → ansanart.com, danwon.org</p>

   <h5>수집목적</h5>
   <ul class="type1">
      <li><p style="font-weight:bold">가. 회원 식별, 원활한 의사소통, 부정이용 시 제재 및 기록</p></li>
      <li><p style="font-weight:bold">나. 문의사항 또는 불만 처리, 공지사항 전달</p></li>
                <li><p style="font-weight:bold">다. 회원제 서비스(공연·전시·교육·예매등) 제공  /  예매위탁 ‘인터파크’</p></li>
                <li><p style="font-weight:bold">라.서비스 이용 기록 및 통계 분석을 통한 서비스 개선 및 맞춤형 서비스 제공 ’</p></li>
   </ul>

        <h5>보유기간</h5>
   <ul class="type1">
      <li><p style="font-weight:bold">수집된 정보는 회원탈퇴 후 지체없이 파기됩니다. 다만 내부 방침에 의해 서비스 부정 이용기록은 부정 가입 및 이용 방지를 위하여 회원 탈퇴 시점으로부터 최대 1년간 보관 후 파기하며, 관계법령에 의해 보관해야 하는 정보는 법령이 정한 기간 동안 보관한 후 파기합니다. <br>
※ 서비스 제공을 위해 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스 이용이 가능합니다.</p></li>
   </ul>


   <h5>자동으로 수집·저장되는 개인정보</h5>
   <ul class="type1">
      <li>가. 여러분이 홈페이지를 이용할 경우 다음의 정보는 자동적으로 수집·저장됩니다.
         <ul>
            <li>이용자 여러분의 인터넷서버 도메인과 재단 홈페이지를 방문할 때 거친 웹사이트의 주소</li>
            <li>이용자의 브라우저 종류 및 OS</li>
            <li>방문일시 등</li>
         </ul>
      </li>
      <li>나. 위와 같이 자동 수집ㆍ저장되는 정보는 이용자 여러분에게 보다 나은 서비스를 제공하기 위해, 홈페이지의 개선과 보완을 위한 통계분석, 이용자와 웹사이트간의 원활한 의사소통 등을 위해 이용될 것입니다. 다만, 법령의 규정에 따라 이러한 정보를 제출하게될 경우도 있다는 것을 유념하시기 바랍니다.</li>
   </ul>
   <h5>이메일 및 웹 서식 등을 통한 수집정보</h5>
   <ul class="type1">
      <li>가. 이용자 여러분은 우편,전화 또는 온라인 전자서식 등을 통한 전자적 방법을 통해 의사를 표시할 수 있습니다. 이러한 방법의 선택에 있어 몇 가지 유의사항을 알려드립니다.
         <ul>
            <li>여러분이 홈페이지에 기재한 사항은 다른 사람들이 조회 또는 열람할 수도 있습니다.</li>
            <li>여러분이 기재한 사항은 관련법규에 근거하여 필요한 다른 사람과 공유될 수 있으며, 관련법령의 시행과 정책개발의 자료로도 사용될 수 있습니다. 또한, 이러한 정보는 타 기관과 공유되거나, 필요에 의하여 제공될 수도 있습니다.</li>
         </ul>
      </li>
   </ul>
   <h5>서비스 이용시 수집되는 개인정보</h5>
   <ul class="type1">
      <li>가. 웹사이트에서 여러분이 홈페이지의 회원에 가입하시거나 각종 게시판 등을 이용하시고자 할 경우에, 서비스 제공에 필요한 최소한의 개인정보를 이용자의 동의하에 수집합니다. 수집된 모든 정보는 해당서비스 제공이나 이용자 여러분께 사전에 밝힌 목적 이외의 다른 어떠한 목적으로도 사용되지 않으며, 수집하는 개인정보 항목은 다음과 같습니다.
         <ul>
            <li>실명확인시 : 이름</li>
            <li>회원가입시 : 아이디, 비밀번호, 이름, 연락처, 이메일, 비밀번호찾기 질문, 비밀번호찾기 답</li>
         </ul>
      </li>
   </ul>
   <h5>웹사이트에서 운영하는 보안조치</h5>
   <ul class="type1">
      <li>가. 홈페이지의 보안 또는 지속적인 서비스를 위해 재단에서는 네트워크 트래픽의 통제(Monitor)는 물론 불법적으로 정보를 변경하는 등의 시도를 탐지하기 위해 여러 가지 프로그램을 운영하고 있습니다.</li>
      <li>나. 홈페이지 보안을 위해 관리적·기술적 노력을 하고 있으나, 만약의 침해사고시 문제가 될 수 있는 민감한 정보의 기재는 피하여 주시기 바랍니다.</li>
   </ul>
   <h5>링크사이트·웹페이지</h5>
   <ul class="type1">
      <li>가. 재단이 운영하는 여러 웹페이지에 포함된 링크 또는 배너를 클릭하여 다른 사이트 또는 웹페이지로 옮겨갈 경우 개인정보취급방침은 그 사이트 운영기관이 게시한 방침이 적용됨으로 새로 방문한 사이트의 방침을 확인하시기 바랍니다.</li>
   </ul>
   <h5>웹사이트 이용 중 다른 사람의 개인정보 취득</h5>
   <ul class="type1">
      <li>가. 재단에서 운영하는 웹사이트에서 이메일주소 등 식별할 수 있는 개인정보를 취득하여서는 아니 됩니다. 許僞 기타 부정한 방법으로 이러한 개인정보를 열람 또는 제공 받은 자는 『공공기관의개인정보보호에관한법률』 제23조의 규정에 의하여 처벌을 받을 수 있습니다.</li>
   </ul>
   <h5>회원가입에 대한 동의 철회, 열람 또는 정정</h5>
   <ul class="type1">
      <li>가. 재단 회원으로 가입하신 이용자 여러분께서는 "개인정보수정"을 통해 언제든지 개인정보에 대한 열람 및 수정을 할 수 있으며, 수정된 정보는 수정절차가 완료된 시점부터 바로 적용됩니다.</li>
      <li>나. "회원탈퇴"를 통해 언제든지 회원가입에 대한 동의를 철회할 수 있습니다. "회원탈퇴"를 신청하시면 즉시 제공한 모든 정보를 삭제합니다.</li>
   </ul>
   <h5>회원가입에 대한 동의 철회, 열람 또는 정정</h5>
   <ul class="type1">
      <li>가. 센터의 웹사이트 이용 중 개인정보의 유출 가능성 등 정보주체의 권익이 침해될 우려가 있는 사실을 발견하였을 경우는 다음의 연락처로 알려주시기 바랍니다.</li>
      <li>[kh아트센터 개인정보보호책임관]
         <ul>
            <li>이메일 : artansan@daum.net</li>
            <li>전화번호 : (031)481-4000 | Fax : (031) 481-4019</li>
            <li>주소 : 우)425-020 경기도 안산시 단원구 고잔동 화랑로 312</li>
         </ul>
      </li>
   </ul>
   <h5>개인정보 처리 목적</h5>
   <ul class="type1">
      <li>가. 홈페이지 예매 이용</li>
      <li>나. 각종 게시판 이용</li>
      <li>다. 홈페이지 뉴스레터 수신을 목적으로 함(수신 요청자에 한함)</li>
   </ul>
   <h5>개인정보의 처리 및 보유 기간</h5>
   <p>- 운영체제, 웹브라우저, 방문지역, 방문경로(자동수집항목은 1년뒤 자동 삭제 됩니다.)</p>
   <h5>개인정보의 처리 및 보유 기간</h5>
   <ul class="type1">
      <li>수탁자 : (주)인터파크 INT</li>
      <li>위탁업무내용 : 공연, 전시 티켓 예매 및 발권</li>
      <li>위탁기간 : 위탁 계약 종료 시까지</li>
      <li>(예매 이력은 3년간 보관되며, 그 후 자료는 자동 삭제됩니다.)</li>
   </ul>
   <h5>개인정보 안정성 확보 조치</h5>
   <ul class="type1">
      <li>가. 고객 정보 유출 방지를 위한 웹방화벽, 침입차단시스템 시스템 가동중입니다.</li>
      <li>나. 개인정보 보호를 위한 고객 데이터 암호화(디아모) 시스템 운영중입니다.</li>
      <li>다. 안정적인 PC, 모바일 등의 접속을 위해 SSL인증 서비스 운영중입니다.</li>
      <li>라. 바이러스 및 악성코드 방지를 위한 백신 가동중입니다.</li>
   </ul>
   <h5>개인정보수집 거부</h5>
   <p>개인정보수집 거부 시 비회원 예매를 진행하여야 하며, 기획공연 할인 20% 및 마일리지 적립이 이루어 지지 않습니다. 또한 뉴스레터 및 문자서비스 등 각종 혜택을 받지 못함을 인지해 주시기 바랍니다.</p>
   
   <h5>개인정보 파기</h5>
   <ul class="type1">
      <li>가. 재단 홈페이지 회원 탈퇴시 회원 데이터 바로 삭제 됩니다.</li>
      <li>나. 재단 홈페이지 개인정보 수집이 진행됨에 따라, 3년간 접속하지 않은 회원은 휴면 계정으로 판단하여 삭제 진행하겠습니다.<br>&nbsp; - 삭제 내용: 회원 아이디, 마일리지정보등 모든 사항<br>&nbsp; - 안내: 삭제 3개월전, 1개월전 총 2회 안내<br>&nbsp; - 고지방법: 문자, 이메일<br>&nbsp; ※ 단, 2018년 8월 이전 가입자의 개인정보(연락처, 이메일)을 받지 않아 별도 안내가 불가피하기에 홈페이지 팝업 및 공지사항을 통해 <br>&nbsp; &nbsp; &nbsp;고지후 삭제토록 하겠습니다.<br>
      </li>
       </ul>
   <h5>계약당사자의 권리 및 의무</h5>
   <ul class="type1">
      <li>가. 고객이 제기하는 정당한 의견이나 불만에 대해서는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우는 그 사유와 처리일정을 고객에게 서면, 전자우편 등으로 통보하여야 합니다.</li>
      <li>나. 개인정보보호방침에 따라서 고객의 개인정보를 보호할 의무를 집니다. 다만, 관계법령에 의거 적법한 절차에 의한 정부기관의 요청이 있는 경우는 예외로 합니다.</li>
      <li>다. 안정적인 서비스의 제공을 위하여 정보통신설비의 고장, 통신의 두절 등의 장애가 발생한 경우에는 지체없이 이를 수리 또는 복구합니다. 다만, 국가비상사태, 천재지변, 또는 그밖에 부득이 한 경우에는 그 서비스를 일시 중단하거나 중지 할 수 있습니다.</li>
      <li>라. 이용계약의 체결, 계약사항의 변경 및 해지 등 고객과의 게약관련 절차 및 내용 등에 있어 고객에게 편의를 제공하도록 노력합니다.</li>
      <li>마. "고객"이 안전하게 인터넷 서비스를 이용할 수 있도록 개인정보보호방침에 따라 기술적 및 관리적 대책을 강구하여야 합니다.</li>
      <li>바. 개인정보의 수집목적 또는 제공받는 목적을 달성한 때에는 당해 개인정보를 지체없이 파기하여야 합니다. 다만, 다음 각호에 해당하는 경우에는 예외로 합니다.</li>
   </ul>

   <h4>컴퓨터에 의해 처리되는 개인정보처리방침</h4>
   <h5>개인정보의 수집 및 보유</h5>
   <p>재단은 정보주체의 동의에 의해서만 개인정보를 수집·보유하며 개인정보파일은 다음과 같습니다.</p>
   <table class="sub_style1 mt10">
      <caption></caption>
      <colgroup>
         <col style="width: 25%;">
         <col style="width: 25%;">
         <col style="width: 25%;">
         <col style="width: 25%;">
      </colgroup>
      <thead>
         <tr>
            <th scope="col">개인정보화일명</th>
            <th scope="col">보유근거</th>
            <th scope="col">보유목적</th>
            <th scope="col">주요항목</th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td>홈페이지 회원DB</td>
            <td>이용약관 제7조</td>
            <td><p>로그인 및 티켓 예매발송</p><p>재단 소식 홍보</p></td>
            <td>성명, 전화번호, 이메일</td>
         </tr>
      </tbody>
   </table>
   <p>* 재단은 보유하고 있는 국민 여러분의 개인정보를 관계법령에 따라 적법하고 적정하게 처리하여, 권익이 침해받지 않도록 노력할 것입니다.</p>

   <h5>개인정보의 이용 및 제공의 제한</h5>
   <ul class="type1">
      <li>가. 우리 재단이 수집·보유하고 있는 개인정보는 일반 행정정보와 달리 이용 및 제공에 엄격한 제한이 있는 정보입니다.『공공기관의 개인정보보호에관한법률』 제10조(이용 및 제공의 제한)는 이에 관하여 다음과 같이 규정하고 있습니다.
         <ul>
            <li>다른 법률에 의해 보유기관 내부에서 이용하거나 보유기관 이외의 자에게 제공하는 경우</li>
            <li>아래의 경우
               <ul>
                  <li>정보주체의 동의가 있거나 또는 정보주체에게 제공하는 경우
                  </li><li>다른 법률에서 정하는 소관업무를 수행하기 위해 당해 처리정보를 이용할 상당한 이유가 있는 경우</li>
                  <li>조약 기타 국제협정의 이행을 위해 외국정부 또는 국제기구에 제공하는 경우</li>
                  <li>통계작성 및 학술연구 등의 목적을 위해 특정 개인을 식별 할 수 없는 형태로 제공하는 경우</li>
                  <li>정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태로 놓여 있거나 주소불명 등으로 동의를 할 수 없는 경우로써 정보주체 외의 자에게 제공하는 것이 명백히 정보 주체에게 이익이 된다고 인정되는 경우</li>
                  <li>범죄의 수사와 공소의 제기 및 유지에 필요한 경우</li>
                  <li>법원의 재판 업무수행을 위하여 필요한 경우</li>
                  <li>기타 대통령령이 정하는 특별한 사유가 있는 경우</li>
               </ul>
            </li>
         </ul>
      </li>
      <li>나. 우리 재단이 위 법령 및 원활한 서비스 제공을 위하여 통상적으로 제3자에게 제공하는 개인정보 현황은 다음과 같습니다.
         <table class="sub_style1 mt10">
            <caption></caption>
            <colgroup>
               <col style="width: 25%;">
               <col>
               <col style="width: 20%;">
               <col style="width: 20%;">
            </colgroup>
            <thead>
               <tr>
                  <th scope="col">제공목적</th>
                  <th scope="col">제공현황</th>
                  <th scope="col">제공주기</th>
                  <th scope="col">제공방법</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>실명 및 예매서비스 제공</td>
                  <td>성명, 아이디</td>
                  <td>수시</td>
                  <td>온라인</td>
               </tr>
            </tbody>
         </table>
      </li>
   </ul>

   <h5>개인정보파일의 열람 및 정정 청구</h5>
   <ul class="type1">
      <li>가. 다음의 개인정보파일은『공공기관의개인정보보호에관한법률』 (다른 법률에 규정이 있는 경우는 해당 법률)의 규정이 정하는 바에 따라 열람을 청구할 수 있습니다.
         <ul>
            <li>열람청구 절차(『공공기관의개인정보보호에관한법률』의 경우)
               <img alt="" src="">
            </li>
            <li>다음 사항에 해당하는 업무로서 당해업무의 수행에 중대한 지장을 초래하는 경우 조세의 부과·징수 또는 환급에 관한 사항 - 교육법에 의한 각종 학교에서의 성적의 평가 또는 입학자의 선발에 관한 업무
               <ul>
                  <li>학력·기능 및 채용에 관한 시험, 자격의 검사, 보상금·급부금의 산정 등 평가 또는 판단에 관한 업무</li>
                  <li>다른 법률에 의한 감사 및 조사에 관한 업무</li>
                  <li>토지 및 주택 등에 관한 부동산 투기를 방지하기 위한 업무 - 증권거래법에 의한 불공정증권거래를 방지하기위한 업무</li>
               </ul>
            </li>
            <li>개인의 생명·신체를 해할 우려가 있거나 개인의 재산과 기타 이익을 부당하게 침해할 우려가 있는 경우</li>
         </ul>
      </li>
      <li>나. 본인의 개인정보를 열람한 정보주체는 다음의 경우 정정을 청구할 수 있습니다.
         <ul>
            <li>정정 청구의 범위
               <ul>
                  <li>사실과 다르게 기록된 정보의 정정</li>
                  <li>특정항목에 해당 사실이 없는 내용에 대한 삭제</li>
               </ul>
            </li>
            <li>개인의 생명·신체를 해할 우려가 있거나 개인의 재산 과 기타 이익을 부당하게 침해할 우려가 있는 경우<br>* 정정청구의 절차(『공공기관의개인정보보호에관한법률』 의 경우)
               <img alt="" src="">
            </li>
         </ul>
      </li>
   </ul>
   <h5>권익침해 구제방법 (「공공기관의 개인정보보호에관한법률」의 경우)</h5>
   <ul class="type1">
      <li>가. 「공공기관의개인정보보호에관한법률」 제12조(처리정보의 열람) 제1항 및 제14조제1항 (처리정보의 정정)의 규정에 의한 청구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익이 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다. 행정심판에 대한 자세한 사항은 다음의 링크사이트를 참고하시기 바랍니다. http://www.moleg.go.kr (행정심판메뉴)</li>
   </ul>
   <h5>개인정보보호책임관의 이메일 등 연락처</h5>
   <ul class="type1">
      <li>가. ‘재단’은  개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
         <ul>
            <li>개인정보 보호책임자 : 행정실장 이권삼
               <ul>
                  <li>연락처 : 031)481-4010</li>
                                                <li>팩스번호: 031)481-4019</li>
               </ul>
            </li>
            <li>개인정보 보호 담당부서 :&nbsp;행정팀 김태섭
               <ul>
                  <li>연락처 : 031)481-4016</li>
                  <li>팩스번호 : 031)481-4019</li>
                                                <li>이메일 : artansan@hanmail.net</li>
               </ul>
            </li>
         </ul>
      </li>
      <li>나. 정보주체는‘재단’의 서비스(예매등)를 이용하시면서 발생한 모든 개인 정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. ‘재단’은  정보주체의 문의에 대해 지체없이 답변 및 처리해드릴 것입니다.</li>
   </ul>
</div>
                     
                     </div>
                  </div>
                  
                  <div class="agree_txt">
                     <div>
                        <p>이용약관 동의</p>
                        <span><input type="checkbox" class="chk" id="agree1" name="agree1" value="Y" ><label for="agree1">이용약관에 동의합니다.</label></span>
                     </div>
                     <div class="con">
                        <div class="section1"> 
                           <h4>개인정보 수집 및 이용약관</h4>
                           <p>kh아트센터에서 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집ㆍ보유 및 처리되고 있습니다. 『공공기관의개인정보보호에관한법률』은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 전당에서는 이러한 법령의 규정에 따라 수집?보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다.</p>
                           <p>또한, 관련법령에서 규정한 바에 따라 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 여러분의 권익을 존중하며, 여러분의 이러한 법령상 권익의 침해등에 대하여 행정심판법에서 정하는 바에 따라 행정심판을 청구할 수 있습니다.</p>
                           <p>다음은 전당의 개인정보보호방침을 설명 드리겠습니다. 전당의 개인정보보호방침은 전당이 운영하는 홈페이지에서 이용자 여러분의 개인정보를 보호하기 위한 「홈페이지 이용자의 개인정보보호」와 소관업무를 수행하는데 필요한 개인정보 취급에 대한 「컴퓨터에 의해 처리되는 개인정보보호」 두 가지로 구성되어 있습니다.</p>
                           <ul class="type1">
                              <li>1. 성명, 주민등록번호, 아이디, 비밀번호, 본인확인문답, 이메일 주소, 주소, 연락처, 연락처<br>- 자동수집항목 : IP Address, 서비스 이용기록, 브라우저 종류 및 OS, 방문일시, 방문할때 거친 웹사이트</li>
                              <li>2. 위와 같이 자동 수집ㆍ저장되는 정보는 이용자에게 보다 나은 서비스를 제공하기 위해 이용자와 웹사이트간의 원활한 의사소통, 홈페이지의 개선과 보완을 위한 통계분석 등을 위해 사용됩니다. 단, 법령의 규정에 따라 이러한 정보를 제출하게 될 경우도 있음을 유념하시기 바랍니다.</li>
                           </ul>
                           
                           <h4>개인정보의 수집 및 이용 목적</h4>
                           <p>이름, 계정, 비밀번호, 주민등록번호, 주소, 연락처, 이메일 : 서비스 이용에 따른 민원사항의 처리를 위한 본인식별, 신용평가기관을 통한 실명 확인, 중복가입확인</p>
                           <ul class="type1">
                              <li>- e-mail, 전화번호, 주소 : 공연안내 이벤트 정보 등 최신 정보 뉴스레터 이메일링, SMS안내, 티켓 상품배송 시 정확한 배송지의 확보, 관심 공연장르별 분석자료(이용자의 연령별, 성별, 지역별 통계분석)로 사용됩니다.</li>
                              <li>- 이용자의 IP주소, 방문 일시 : 불량회원의 부정 이용방지와 비인가 사용방지, 통계학적 분석에 사용됩니다. 전당은 보유하고 있는 이용자의 개인정보를 관계법령에 따라 적법하고 적정하게 처리하여, 권익이 침해받지 않도록 노력할 것입니다.</li>
                           </ul>
                           
                           <h4>개인정보의 보유 및 이용 기간</h4>
                           <p>개인이 "회원탈퇴"를 하기 전 까지의 개인정보는 전당에서 정보를 보관하되, "회원탈퇴" 신청시에는 신청자의 모든 정보를 삭제합니다.</p>
                           <p>관계법령의 규정에 의하여 보존할 필요가 있는 경우 전당의 관계법령이 정한 일정한 기간 동안 회원정보를 보관합니다.</p>
                           <ul class="type1">
                              <li>- 방문에 관한 기록 : 3년</li>
                              <li>- 공연예매 기록 : 3년</li>
                           </ul>   
                        </div>
                     
                     </div>
                  </div>
                  
                  <div class="agree_txt">
                     <div>
                        <p>개인정보 취급위탁</p>
                        <span><input type="checkbox" class="chk" id="agree3" name="agree3" value="Y"><label for="agree3" onclick="chk()">개인정보 취급위탁에 동의합니다.</label></span>
                     </div>
                     <div class="con">
                        <div class="section1"> 
                           <h4>개인정보의 취급위탁</h4>
                           <p>전당은 서비스 향상을 위해서 이용자들의 개인정보를 외부전문업체에 위탁하여 처리할 수 있습니다. 개인정보의 처리를 위탁 하는 경우에는 미리 그 사실을 이용자에게 공지할 것입니다. 또한 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시 엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담 등을 명확히 규정하고 당해 계약내용을 서면 또는 전자적으로 보관하여 이용자의 권익을 보호하고 있습니다.</p>
                           <ul class="type1">
                              <li>- 수탁자 : (주)인터파크 INT
                                 <ul>
                                    <li>위탁업무내용 : 공연, 전시 티켓 예매 및 발권</li>
                                    <li>위탁기간 : 위탁 계약 종료 시까지</li>
                                 </ul>
                              </li>
                              <li>개인정보 취급위탁에 동의 거부시 불이익
                                 <ul>
                                    <li>kh아트센터 기획공연 20%할인 불가</li>
                                    <li>기획공연 예매시 마일리지 적립 불가</li>
                                    <li>뉴스레터 및 문자서비스 혜택 불가</li>
                                 </ul>
                              </li>
                           </ul>   
                        </div>
                     </div>
                  </div>
                  
      <div>
            <span><input type="checkbox" class="all-chk" id="all-agree" name="all-agree" value="Y" ><label for="agree2">모두 동의합니다</label></span>
      </div>
               </div>
               
               
               <div class="reg_button">
            <a class="btn btn-danger px-3" href="http://localhost:8088/join/joinForm">
               <i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>가입하기
            </a>
         </div><br>
               
<c:import url="/WEB-INF/views/footer.jsp" />
</body>
</html>