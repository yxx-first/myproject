define([], function() {
    return {
        render: ! function() {
            $.ajax({
                url: 'http://192.168.11.55/ocj_project/php/getdata.php',
                dataType: 'json'
            }).done(function(data) {
                console.log(data);
                const oUl = $('.loftBoxA .loftBox-right ul');
                let str = '';
                $.each(data, function(index, value) {
                    str += `                      
                      <li>
                    <div class="loftBox-right-pic">
                        <a href="#">
                            <img src="${value.picurl}" alt="">
                        </a>
                    </div>
                    <div class="loftBox-right-title">
                        <b>${value.discription}</b> ${value.title}
                    </div>
                    <div class="loftBox-right-money">
                        <span>￥</span> ${value.price}
                        <del>${value.oldprice}</del>
                    </div>
                </li>
                    `;
                })
                oUl.html(str);
            })
        }(),
        loft: ! function() {
            //1.滚轮事件控制左侧楼梯的显示和隐藏
            //直接刷新，满足情况
            function scroll() {
                let top = $(window).scrollTop(); //滚动条的top值。
                $('.loftBox').each(function(index, element) {
                    let loucengtop = $(this).offset().top; //每一个楼层的top值
                    if (loucengtop >= top) {
                        $('.floor-list-content').removeClass('active');
                        $('.floor-list-content').eq($(this).index()).addClass('active');
                        return false; //返回 'false' 将停止循环，有一个满足条件终止循环。
                    }
                });
            }
            scroll();
            //滚轮事件触发
            $(window).on('scroll', function() {
                scroll();
            });

            //2.点击左侧楼梯上面的按钮，右侧楼层运动到对应的位置。
            //求每一个楼层top位置。将固定的top值给滚动条的top值。document.documentElement.scrollTop

            $('.floor-list-content').on('click', function() {
                $(this).addClass('active').siblings().removeClass('active');
                let loucengtop = $('.loftBox').eq($(this).index()).offset().top; //获取楼梯对应楼层固定的top值。
                $('html').animate({
                    scrollTop: loucengtop //运动不仅可以改变css，还可以设置html属性
                });
            });

            // 4.回到顶部。
            $('.gotop').on('click', function() {
                $('html').animate({
                    scrollTop: 0 //运动不仅可以改变css，还可以设置html属性
                });
            });
        }(),
        // 1.鼠标移入lunbo,显示左右箭头，反之隐藏
        // 2.点击对应得小圆圈，当前点击的小圆圈添加类名，其他的隐藏（和小圆圈对应的图片显示）
        // 3.点击左右箭头进行图片切换
        // 4.自动轮播
        // 5.鼠标移入lunbo,停止。

        lunbo: ! function() {
            class Lunbo {
                constructor() {
                    this.lunbo = $('.lunbo-container');
                    this.piclist = $('.lunbo-all-connent-list');
                    this.btnlist = $('.lunbo-container ul li');
                    this.leftarrow = $('.slick-prev');
                    this.rightarrow = $('.slick-next');
                    this.spanl = $('.slickL span');
                    this.spanr = $('.slickR span');
                    this.index = 0;
                    this.timer = null;
                }
                init() {
                    let _this = this;
                    // 1.鼠标移入lunbo,显示左右箭头，反之隐藏
                    this.lunbo.hover(function() {
                        _this.leftarrow.show();
                        _this.rightarrow.show();
                        // 5.鼠标移入lunbo,停止。
                        clearInterval(_this.timer);
                    }, function() {
                        _this.leftarrow.hide();
                        _this.rightarrow.hide();
                        clearInterval(_this.timer);
                        this.timer = window.setInterval(function() {
                            _this.rightarrowclick();
                        }, 3000);
                    });
                    this.leftarrow.hover(function() {
                        $(this).stop(true).animate({
                            width: 73
                        })
                    }, function() {
                        $(this).stop(true).animate({
                            width: 23
                        });
                    })
                    this.rightarrow.hover(function() {
                        $(this).stop(true).animate({
                            width: 73
                        })
                    }, function() {
                        $(this).stop(true).animate({
                            width: 23
                        });
                    });
                    // 2.点击对应得小圆圈，当前点击的小圆圈添加类名，其他的隐藏（和小圆圈对应的图片显示）
                    this.btnlist.on('click', function() {
                        _this.index = $(this).index(); //将当前按钮对应的索引存储下来
                        _this.tabswitch();
                    });
                    //3.点击左右箭头进行图片切换
                    this.rightarrow.on('click', function() {
                        _this.rightarrowclick();
                    });

                    this.leftarrow.on('click', function() {
                        _this.leftarrowclick();
                    });
                    this.spanl.html(this.btnlist.size());
                    this.spanr.html(2);
                    //4.自动轮播
                    this.timer = window.setInterval(function() {
                        _this.rightarrowclick();
                    }, 3000);
                }
                tabswitch() {
                    this.btnlist.eq(this.index).addClass('active').siblings().removeClass('active');
                    this.spanl.html(this.index);
                    this.spanr.html(this.index + 2);
                    this.piclist.eq(this.index).stop(true).animate({
                        opacity: 1
                    }).siblings().stop(true).animate({
                        opacity: 0
                    });
                }
                rightarrowclick() {
                    this.index++;
                    if (this.index > this.btnlist.size() - 1) {
                        this.index = 0;
                    }
                    this.tabswitch();
                }

                leftarrowclick() {
                    this.index--;
                    if (this.index < 0) {
                        this.index = this.btnlist.size() - 1;
                    }
                    this.tabswitch();
                }

            }
            new Lunbo().init();
        }(),
        tab: ! function() {
            const oLi = $('.banner_left_box');
            const oModule = $('.secondmodule');
            oLi.hover(function() {
                $(this).addClass('active').siblings().removeClass('active');
                oModule.eq($(this).index()).css({
                    'opacity': '1',
                    'z-index': '666'
                })

            }, function() {
                $(this).removeClass('active');
                oModule.eq($(this).index()).css({
                    'opacity': '0',
                    'z-index': '0'
                })

            })
        }(),
        // search: ! function() {
        //     const search_bar = $('.search_bar form');
        //     const search = $('.search_bar input');
        //     const list = $('.search_bar ul');

        //     function hello(data) {
        //         console.log(data);
        //         let arr = data.result;
        //         let str = '';
        //         // for (let value of arr) {
        //         //     str += `
        //         //         <li>${value[0]}</li>
        //         //     `;
        //         // }
        //         // list.innerHTML = str;
        //         $.each(arr, function(index, value) {
        //             str += `<li>${value[0]}</li>`;
        //         })
        //         list.html(str);
        //     }

        //     search_bar.on('input propertychange', search, function() {
        //         //随着用户的输入，数据接口发送变化。
        //         let scriptelement = $('#scriptelement');
        //         //如果存在上面的元素对象，带有此id名的script已经创建了。
        //         if (scriptelement) { //如果存在script元素，删除
        //             $('body').remove(scriptelement);
        //         }
        //         let cS = '';
        //         cS += `<script id="scriptelement" src="https://suggest.taobao.com/sug?code=utf-8&q${$(this).value}&_ksTS=1600326651998_256&callback=taobao"></script>`
        //         $('body').html(cS);
        //     })
        // }()
    }
})