define([], function() {
    return {
        click: ! function() {
            const oLi = $('.registry-title li');
            oLi.not('.last').on('click', function() {
                $(this).addClass('active').siblings().removeClass('active');
            });
        }()
    }
})