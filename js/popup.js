$(function() {
	// $(window).load(function(){
	// 	new_imgshow_popup();
	// });
	new_imgshow_popup();
});
function new_imgshow_popup(){
	$('.imgshow_popup').each(imgshow_popup);
	function imgshow_popup(){
		var _this = $(this),
			closebtn = _this.find('.closebtn'),
			prevbtn = _this.find('.prevbtn'),
			nextbtn = _this.find('.nextbtn'),
			cover = _this.find('.cover'),
			bigImg = _this.find('.bigImg'),
			imgclick = $('#content #itemContainer li'),
			nowShow = 0;

		imgclick.on('click',function(e){
			e.preventDefault();
			nowShow = $(this).index();
			bigImg_show(true);
		});
		prevbtn.on('click',function(){
			nowShow -= 1;
			bigImg_show(true);
		});
		nextbtn.on('click',function(){
			nowShow += 1;
			bigImg_show(true);
		});
		closebtn.on('click',function(){
			bigImg_show(false);
		});
		cover.on('click',function(){
			bigImg_show(false);
		});

		function bigImg_show(_t){
			if(_t){
				if(nowShow>=$('#content #itemContainer li').length) nowShow = 0;
				else if(nowShow<0) nowShow = $('#content #itemContainer li').length - 1;

				var _src = $('#content #itemContainer li').eq(nowShow).find('img').attr('big');

				console.log('nowShow:'+nowShow);
				console.log('src:'+_src);

				bigImg.fadeOut(300,function(){
					bigImg.attr('src',_src).fadeIn();
				});
				
				_this.fadeIn();
			}else _this.fadeOut();
		}
	}
}
