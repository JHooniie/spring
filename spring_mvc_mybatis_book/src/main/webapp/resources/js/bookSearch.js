/**
 * bookSearch2.jsp
 */
 
 $(document).ready(function(){

    $('#bookSearchFrm').on('submit', function(){
    
        // submit 이벤트 기본 기능 : 페이지 새로 고침
        // 기본 기능 중단
        event.preventDefault();
        
        //serialize() : 폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환
        // type=bookName&keywork=노트북
        var formData = $(this).serialize();
        
        $.ajax({
            type:"post",
            url:"bookSearch", // /mybatis/book/bookSearch
            data:formData,
            success:function(result){ 
                // 반환된 결과를 searchResultBox <div>에 삽입
                //alert(result);
                $('#searchResultBox').html(result); 			
            },
            error:function(){
                // 오류있을 경우 수행되는 함수
                alert("전송 실패");
            },
            complete:function(){
                //alert("작업완료");
            }			
        }); 	// ajax 끝
    }); // submit 끝 
});  // ready 끝