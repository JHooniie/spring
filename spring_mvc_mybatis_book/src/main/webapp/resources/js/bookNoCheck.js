/**
 * 
 */
 $(document).ready(function(){
    $('#bookCheckBtn').on('click',function(){
    
    event.preventDefault();


       if($('#bookNo').val() == ""){
            alert("도서번호를 입력하세요");
            return false;
        } else {	 		
            $.ajax({
                type:"post",
                url:"/book/books/bookNoCheck",   // /book/books/bookNoCheck
                data:{"bookNo": $('#bookNo').val()},
                dataType:"text",
                success:function(result){

                    if(result == "no_use")
                        alert("사용할 수 없는 도서번호입니다");
                    else
                        alert("사용 가능한 도서번호입니다"); 	
                },
                error:function(){

                    alert("전송 실패");
                },
                complete:function(){
                    //alert("작업완료");
                }			
            }); 	// ajax 끝
        }
    });
});