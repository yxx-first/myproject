define([], function() {
    return {
        render: ! function() {
            $.ajax({
                url: 'http://192.168.11.55/ocj_project/php/list_render.php',
                dataType: 'json'
            }).done(function(data) {
                console.log(data);
                const oUl = $('.layer-inner  .render-list');
                let str = '';
                $.each(data, function(index, value) {
                    str += ` 
                    <div class="item">
                    <div class="img">
                        <a href="#"><img src="${value.url}" alt=""></a>
                    </div>
                    <p></p>
                    <div class="title">${value.title}</div>
                    <div class="price del_price">
                        <span><del>${value.oldprice}</del></span> ￥
                        <em>${value.price}</em>
                    </div>
                    <div class="buycar">
                        <span>加入购物车</span>
                    </div>
                </div>
                    `;
                })
                oUl.html(str);
            })

        }()
    }
})