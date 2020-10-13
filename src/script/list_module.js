define([], function() {
    return {
        render: ! function() {
            console.log(1);
            //前端传递对应的页面给后端，后端根据页面返回对应的数据。
            //注意：一开始应该渲染第一页的数据(接口)
            //约定每页的数据条数。
            //总的数据计算分页。


            //排序
            let array_default = []; //排序前的li数组
            let array = []; //排序中的数组
            //冒泡排序，比较相邻的两个数字。
            let prev = null; //前一个商品价格
            let next = null; //后一个商品价格
            //1.渲染列表页的数据-默认渲染第一页
            const list = $('.layer-inner  .render-list');
            $.ajax({
                url: 'http://192.168.11.55/ocj_project/php/listdata.php',
                dataType: 'json'
            }).done(function(data) {
                console.log(data);
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
                list.html(str);
                $(function() {
                    $("img.lazy").lazyload({ effect: "fadeIn" });
                });

                //将页面的li元素加载到两个数组中
                $('.render-list .item').each(function(index, element) {
                    array[index] = $(this);
                    array_default[index] = $(this);
                });
            });


            //2.分页思路:根据传输的页码，后端返回对应的接口数据，渲染出来。
            $('.page').pagination({
                pageCount: 3, //总的页数
                jump: true, //是否开启跳转到指定的页数，布尔值。
                prevContent: '上一页', //将图标改成上一页下一页。
                nextContent: '下一页',
                callback: function(api) {
                    console.log(api.getCurrent()); //获取当前的点击的页码。
                    $.ajax({
                        url: 'http://192.168.11.55/ocj_project/php/listdata.php',
                        data: {
                            page: api.getCurrent() //传输数据
                        },
                        dataType: 'json'
                    }).done(function(data) {
                        let str = '';
                        $.each(data, function(index, value) {
                            str += ` 
                            <div class="item">
                            <div class="img">
                                <a href="#"><img class="lazy" data-original="${value.url}" alt=""></a>
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
                        });
                        list.html(str);
                        $(function() {
                            $("img.lazy").lazyload({ effect: "fadeIn" });
                        });

                        //将页面的li元素加载到两个数组中
                        $('.render-list .item').each(function(index, element) {
                            array[index] = $(this);
                            array_default[index] = $(this);
                        });
                    });
                }

            });

            console.log($('.button'));

            //3.排序，排序前的数组都已经具有li元素
            // 默认
            $('.button').eq(0).on('click', function() {
                $.each(array_default, function(index, value) {
                    list.append(value);
                    console.log(value);
                });
                return;
            });
            // 升序
            $('.button').eq(1).on('click', function() {
                for (let i = 0; i < array.length - 1; i++) {
                    for (let j = 0; j < array.length - i - 1; j++) {
                        prev = parseFloat(array[j].find('.price em').html()); //取上个价格
                        next = parseFloat(array[j + 1].find('.price em').html()); //下一个的价格
                        //通过价格的判断，改变的是数组li的位置。
                        if (prev > next) {
                            let temp = array[j];
                            array[j] = array[j + 1];
                            array[j + 1] = temp;
                        }
                    }
                }

                $.each(array, function(index, value) {
                    list.append(value);
                });
            });
            // 降序
            $('.button').eq(2).on('click', function() {
                for (let i = 0; i < array.length - 1; i++) {
                    for (let j = 0; j < array.length - i - 1; j++) {
                        prev = parseFloat(array[j].find('.price em').html()); //取上个价格
                        next = parseFloat(array[j + 1].find('.price em').html()); //下一个的价格
                        //通过价格的判断，改变的是数组li的位置。
                        if (prev < next) {
                            let temp = array[j];
                            array[j] = array[j + 1];
                            array[j + 1] = temp;
                        }
                    }
                }

                $.each(array, function(index, value) {
                    list.append(value);
                });
            });

        }()
    }
})