//Modal Function from other jsp
$(function(){
    $("#popbutton").click(function(){
        $('div.modal').modal({remote : '/waxingShop/example/ex_modal.jsp'});
    })
})

function go(){
	window.opener.location.href="http://www.naver.com";
}
