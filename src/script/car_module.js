define([], function() {
    return {
        car_render: ! function() {
            //1.渲染购物车列表
            //获取cookie，进行渲染。
            if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在,获取cookie转成数组
                let sid = $.cookie('cookiesid').split(','); //[1,2,3]
                let num = $.cookie('cookienum').split(','); //[100,200,300]
                for (let i = 0; i < sid.length; i++) {
                    rendercart(sid[i], num[i])
                }
            }
            //封装函数实现渲染。
            function rendercart(sid, num) { //sid:渲染的商品编号    num:渲染的商品的数量。
                $.ajax({
                    url: 'http://192.168.11.55/ocj_project/php/listdata.php',
                    dataType: 'json'
                }).done(function(data) {
                    console.log(data);
                    $.each(data, function(index, value) {
                        if (value.sid == sid) { //数据接口的sid和当前商品的sid进行比较，如果相等，直接赋值。
                            let strhtml = '';
                            strhtml += `                
                            <div class="product-list">
                            <div class="pll">
                                <div class="listwraper">
                                    <div class="list">
                                        <div class="cols1">
                                            <div class="fl">
                                                <input type="checkbox" checked>
                                            </div>
                                            <div class="pic" sid="${value.sid}">
                                                <a href=""><img src="${value.url} " alt=""></a>
                                            </div>
                                            <div class="datail">
                                                <p class="name">
                                                    <em></em>
                                                    <a href="#">
                                                            ${value.title}</a>
                                                </p>
                                                <p class="info">
                                                    颜色/种类：
                                                    <em>黑色/48</em>
                                                </p>
                                                <img src="https://cdnimg.ocj.com.cn/common/theme/v1/images/cart/dealer.png" alt="">
        
                                            </div>
                                        </div>
                                        <div class="cols2">
                                            <div class="product-jf">
                                                <span>7.99</span>
                                            </div>
                                        </div>
                                        <div class="cols3 price">
                                            <span>￥
                                                    <b>${value.price}</b>
                                                </span>
                                        </div>
                                        <div class="cols4 product-num">
                                            <span class="sub">-</span>
                                            <input type="text" value="${num}">
                                            <span class="add">+</span>
                                        </div>
                                        <div class="cols5 price-total">
                                            <span>￥
                                                    <b class="">${(value.price*num).toFixed(2)}</b>
                                                </span>
                                        </div>
                                        <div class="cols6 buy-del">
                                            <span class="buy-now"></span>
                                            <span class="del">删除</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="plr">
                            </div>
                        </div>
                `;
                            $('.shopcar-product').append(strhtml);
                            calcprice(); //总算总价
                        }
                    });
                })
            }


            //2.购物车其他功能的控制.
            //计算总的商品件数和总价。
            // console.log($('.goods-item').length); //0  渲染出来的，异步的，无法获取
            // function calc() {
            //     let allprice = 0; //总价
            //     let allcount = 0; //总的数量
            //     $('.product-list').each(function(index, element) {
            //         if ($(this).find('.fl input').prop('checked')) { //复选框选中。
            //             allcount += parseInt($(this).find('.product-num input').val()); //总的件数
            //             allprice += parseInt($(this).find('.price-total b').html()); //总价
            //         }
            //     });
            //     $('.footerm h6 b').html(allcount);
            //     $('.footerm p em').html(allprice.toFixed(2));
            // }

            // 3. 计算总价--使用次数很多--函数封装

            function calcprice() {
                let $sum = 0; //商品的件数
                let $count = 0; //商品的总价
                $('.product-list:visible').each(function(index, ele) {
                    if ($(ele).find('.fl input').prop('checked')) { //复选框勾选
                        $sum += parseInt($(ele).find('.product-num input').val());
                        $count += parseFloat($(ele).find('.price-total b').html());
                    }
                });
                $('.footerm h6').find('b').html($sum);
                $('.footerm p em').html($count.toFixed(2));
            }

            //4.全选
            $('.allselect').on('change', function() {
                $('.product-list:visible').find(':checkbox').prop('checked', $(this).prop('checked'));
                // $('.allselect').prop('checked', $(this).prop('checked'));
                calcprice(); //计算总价

            });
            let $inputs = $('.product-list:visible').find(':checkbox');
            $('.shopcar-product').on('change', $inputs, function() {
                //$(this):被委托的元素，checkbox
                if ($('.product-list:visible').find(':checkbox').length === $('.product-list:visible').find('input:checked').size()) {
                    $('.allselect').prop('checked', true);
                } else {
                    $('.allselect').prop('checked', false);
                }
                calcprice(); //计算总价
            });


            //5.数量的改变
            // 按钮加
            $('.shopcar-product').on('click', '.add', function() {
                console.log(1);
                let $num = $(this).parents('.product-num').find('input').val();
                $num++;
                $(this).parents('.product-num').find('input').val($num);

                $(this).parents('.product-list').find('.price-total b').html(calcsingleprice($(this)));
                calcprice(); //计算总价
                setcookie($(this));
            });
            // 按钮减
            $('.shopcar-product').on('click', '.sub', function() {
                console.log(2);
                let $num = $(this).parents('.product-num').find('input').val();
                $num--;
                if ($num < 1) {
                    $num = 1;
                }
                $(this).parents('.product-num').find('input').val($num);
                $(this).parents('.product-list').find('.price-total b').html(calcsingleprice($(this)));
                calcprice(); //计算总价
                setcookie($(this));
            });

            // 输入框改变
            $('.shopcar-product').on('change', '.product -num input ', function() {
                let $reg = /^\d+$/g; //只能输入数字
                let $value = $(this).val();
                if (!$reg.test($value)) { //不是数字
                    $(this).val(1);
                }
                $(this).parents('.product-list').find('.price-total b').html(calcsingleprice($(this)));
                calcprice(); //计算总价
                setcookie($(this));
            });

            //计算单价
            function calcsingleprice(obj) { //obj元素对象
                let $dj = parseFloat(obj.parents('.product-list').find('.price b').html());
                let $num = parseInt(obj.parents('.product-list').find('.product-num  input').val());
                return ($dj * $num).toFixed(2)
            }


            //将改变后的数量存放到cookie中
            let arrsid = []; //存储商品的编号。
            let arrnum = []; //存储商品的数量。
            function cookietoarray() {
                if (getcookie('cookiesid') && getcookie('cookienum')) {
                    arrsid = getcookie('cookiesid').split(','); //获取cookie 同时转换成数组。[1,2,3,4]
                    arrnum = getcookie('cookienum').split(','); //获取cookie 同时转换成数组。[12,13,14,15]
                } else {
                    arrsid = [];
                    arrnum = [];
                }
            }

            function setcookie(obj) {
                cookietoarray();
                let $sid = obj.parents('.product-list').find('.pic').attr('sid');
                arrnum[$.inArray($sid, arrsid)] = obj.parents('.product-list').find('.product-num  input').val();
                addcookie('cookienum', arrnum, 10);
            }



            //6.删除
            function delcookie(sid, arrsid) { //sid:当前删除的sid  arrsid:存放sid的数组[3,5,6,7]
                let $index = -1; //删除的索引位置
                $.each(arrsid, function(index, value) {
                    if (sid === value) {
                        $index = index;
                    }
                });
                arrsid.splice($index, 1);
                arrnum.splice($index, 1);

                addcookie('cookiesid', arrsid, 10);
                addcookie('cookienum', arrnum, 10);
            }
            $('.shopcar-product').on('click', '.buy-del .del', function() {
                cookietoarray();
                if (window.confirm('你确定要删除吗?')) {
                    $(this).parents('.product-list').remove();
                    delcookie($(this).parents('.product-list').find('.pic').attr('sid'), arrsid);
                    calcprice(); //计算总价
                }
            });

            $('.clearallcar').on('click', function() {
                cookietoarray();
                if (window.confirm('你确定要清空购物车吗?')) {
                    $('.product-list:visible').each(function() {
                        if ($(this).find(':checkbox').is(':checked')) { //判断复选框是否选中
                            $(this).remove();
                            delcookie($(this).find('.pic').attr('sid'), arrsid);
                        }
                    });
                    calcprice(); //计算总价
                }
            });

        }()
    }
})