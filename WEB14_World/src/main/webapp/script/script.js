    $(function(){
        $('#remote ul li').click(function(){
            var idx = $(this).index();
            var dist = idx*-1920;
            $('#main_imgs').animate({left:dist},300);
            $('#remote ul li').removeClass('selected');
            $('#remote ul li').eq(idx).addClass('selected');
        });
        $('#remote ul li:first').addClass('selected');
    });

 $(function(){
            var num =0;
            var timer;
            var flag=false;

            $('#remote ul li').click(function(){
                num = $(this).index();
                var dist = -1920 * num;
                $('#main_imgs').animate({ left : dist},500);

                $('#remote ul li').removeClass('selected');
                $('.auto').removeClass('selected');

                $(this).addClass('selected');
            });

       
            $('.auto').click(function(){
                $('#remote ul li').removeClass('selected');
                
                if(flag == false){  
                    $(this).html('■');  
                    timer = setInterval(function(){
                        flag = true;   
                        num ++;
                        if( num >7 ) num=0;
                        var dist = -1920 * num ;
                        $('#main_imgs').animate({ left : dist},500);  
                    }, 1500);
                    $('#remote ul li').off(); 
                }else{
                    flag = false;
                    clearInterval(timer);
                    $(this).html('▶');
                    $('#remote ul li').on('click',function(){
                        num = $(this).index();
                        var dist = -1920 * num;
                        $('#main_imgs').animate({ left : dist},500);
                        $('#remote ul li').removeClass('selected');     
                    }); 
                }
            });
        });
                
            
        
                    
                   