define([], function() {
    return {
        product_num: ! function() {
            const num = $('.number');
            const sub = $('.number .sub');
            const add = $('.number .add');
            const input = $('.number input');
            add.on('click', function() {
                let a = input.val();
                a++;
                input.val(a);
            })
            sub.on('click', function() {
                let b = input.val();
                b--;
                if (b < 0) {
                    b = 0;
                }
                input.val(b);
            })
        }()
    }
})