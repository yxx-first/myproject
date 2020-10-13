define([], function() {
    return {
        fdj: ! function() {
            const sp = $('.sp');
            const bf = $('.bf');
            sp.hover(function() {
                bf.show();
                bf.hover(function() {
                    $(this).show();
                }, function() {
                    $(this).hide();
                });
            }, function() {
                bf.hide();
            });
            // const oLi = $('.pic-listwraper li');
            // console.log(oLi);
            // oLi.on('click', function() {
            //     console.log($(this));
            //     console.log($(this).css('src'));
            //     sp.find('img').css('src', $(this).find('img').css('src'));
            // })
        }()
    }
})