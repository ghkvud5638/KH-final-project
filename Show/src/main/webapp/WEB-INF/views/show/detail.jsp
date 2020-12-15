<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:import url="/WEB-INF/views/header.jsp" /> 
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  



<style type="text/css">

th{
width: 100px;
}
.showview {

	width : 350px;
	height : 450px;
	margin : 0 auto;

}
.show-view-cover
{
	margin-left : 150px;  
}
/* // 이미지 간의 간격 */
.left {

	float:left;
 	margin : 0 auto; 

}

.right {

	margin-left : 500px;
}

/* // footer과 table간의 간격 */

/* .right{
	margin-left : 20px;
} */
/* .show-view-cover{
	display: inline-block; 
	
}
 */
 
.notice {
/*  	margin: 0 auto;  */
 	 
 }
 
.button {
/*  	margin: 0 auto;  */
   	text-align: center; 	
 }

</style>


<script type="text/javascript">
$(document).ready(function() {
	$("#book").on("click",function(){

		console.log("here")
		var url = "/show/book?show_id="+${View.show_id};
        var name = "popup test";
        var option = "width = 560, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);	
    
	})
});
</script>

<div class="container">

<h1 class="pull-left">공연 상세보기</h1>

<div class="clearfix"></div>
<hr>

<div class="show-view-cover" id="show-view-cover">

	
	<div class="left">
 	<div class="show-view-img" id="show-view-img" > 
 		<img src="${View.show_image }" width="450" height="450"/>
 	</div> 
 	</div>

	<div class="right" id="right">
	
	<table class="showview" id="showview" >
		<tr></tr>
		<th>공연명</th>
		<td>${View.show_name}</td>		
	
		<tr></tr>
		<th>기간</th>
		<td><fmt:formatDate value="${View.show_start }" pattern="yyyy-MM-dd"/></td>
		
		<tr> </tr>
		<th > </th>
		<td><fmt:formatDate value="${View.show_end }" pattern="yyyy-MM-dd"/></td>
		
		<tr></tr>
		<th>시간</th>
		<td>${View.show_time}</td>
		
		<tr></tr>
		<th>장소</th>
		<td>${View.show_place}</td>
		
		<tr></tr>
		<th>티켓 R석 금액</th>
		<td>${View.show_rprice}</td>		

		<tr></tr>
		<th>티켓 S석 금액</th>
		<td>${View.show_sprice}</td>	
		
		<tr></tr>
		<th>출연진</th>
		<td>${View.show_cast}</td>
		
		<tr></tr>
		<th>장르</th>
		<td>${View.show_genre}</td>
		
		<tr></tr>
		<th>관람연령</th>
		<td>${View.show_age}</td>
		
		<tr></tr>
		<th>장소</th>
		<td>${View.show_addr}</td>		
		
		<tr></tr>
		<th>문의</th>
		<td>${View.show_call}</td>
<!-- 		<tr></tr> -->
<!-- 		<td><button id="book">예약</button></td>		 -->
	</table>
	
	</div><br>
	

	
	<div class ="button">
		<button id="book">공연 예약</button>
	</div><hr>

</div><br>

<!-- ----------------------------------------------- -->
	
	
	
	<div class = "notice" id="notice">
	
	<div class="copynotice" id="copynotice">
	<br>
	<h2>유의사항</h2>
	<hr>
	- 공연 당일은 교환(취소, 변경) 및 환불이 되지 않습니다.<br>
	- 1, 2열은 무대높이로 인해 관람에 불편이 있을수 있습니다. 좌석선택시 참고하시기 바랍니다.<br>
	- 본 공연은 초등학생 이상 관람가능한 공연으로 공연을 예매하셨더라도 미취학 아동분은 입장하실 수 없습니다.<br>
	- 관람(입장) 연령을 필히 지켜주시기 바라며, 아이를 무릎에 앉히고 공연을 관람하실 수 없습니다. (1인 1티켓 1좌석)<br>
	- 장애인 및 국가 유공자 할인 예매시 공연 당일 본인이 반드시 관람하셔야 하며,<br>
	예매티켓 수령시 복지카드 또는 국가보훈자증을 제시하셔야 합니다 (증빙자료 미 지참시 현장에서 차액 지불).<br>
	<br>- 모든 할인 예매시, 공연 당일 본인이 반드시 관람하셔야 하며, 적절한 증빙자료를 반드시 지참하셔야 합니다<br>
	(증빙자료 미 지참시 현장에서 차액 지불해야 함)<br>
	- 예매자 인적사항(이름, 핸드폰) 또는 예매번호로 티켓을 수령하실 수 있습니다.<br>
	- 예매자 인적사항이 정확하지 않을 시 티켓수령이 불가해 입장이 지연되거나 불가한 경우가 발생하오니,<br>
	타인 양도시 정확한 예매내역을 안내해 주시기 바랍니다.<br>
	<br>- 공연 시작 후에는 입장 제한 및 운영요원의 안내에 따라야 함을 양해 바랍니다.<br>
	- 공연 당일에는 혼잡할 수 있으니, 가급적 대중교통 이용을 권장드립니다.<br>
	<br><hr>
	</div>
	
	<div class="imgnotice" id="imgnotice">
		<img src="/resources/images/notice.jpg" width="850" height="850"/>
	</div>
	
	</div><br><br>
	


</div><!-- .container -->


<c:import url="/WEB-INF/views/footer.jsp" />

<!-- 디테일 수정 -->


