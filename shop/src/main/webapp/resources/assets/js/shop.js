$(function(){
	$('.product-action-3').click(function(){
		//이미지1 가져옴
		var img1 = $(this).prev().children().attr('src');
		//상품이름
		var pdName = $(this).next().val();
		//상품가격
		var pdPrice = $(this).next().next().val();
		//사이즈, 컬러
		
		//modal main img-1
		$('#modal1').children().attr('src', img1)
								.css({'width':'320px', 'height':'380px'});
		//modal sub img-1
		$('.quick-view-list a').eq(0).children().attr('src', img1);
		$('.qwick-pd-name').text(pdName);
		var pdPrice2 = pdPrice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')+" won";
		$('.qwick-pd-price').text(pdPrice2);		
	})
})