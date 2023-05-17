    $(function(){
        $('li').click(function(){
            var idx = $(this).index();
            var dist = idx*-200;
            $('#imgs').animate({left:dist},300);
            $('li').removeClass('selected');
            $('li').eq(idx).addClass('selected');
        });
        $('li:first').addClass('selected');
    });
