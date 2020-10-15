    define([], function() {
        return {
            check: ! function() {
                console.log(111111111111111111);
                // window.onload = function() {
                var register = document.querySelector('#register');
                var usename = document.querySelector('.usename');
                var setpassword = document.querySelector('.setpassword');
                var truepassword = document.querySelector('.truepassword');
                var phonenumber = document.querySelector('.phonenumber');
                var code = document.querySelector('.code');
                var phonecode = document.querySelector('.phonecode');
                var message = document.querySelectorAll('#register p');
                var span = document.querySelector('#code span');
                //1.用户名
                var usenameflag = true;
                usename.onfocus = function() {
                    message[0].innerHTML = '支持中文、数字、字母、"_"和"-"的组合，4-20个字符';
                    message[0].style.color = '#999';
                };
                usename.onblur = function() {
                    if (usename.value !== '') {
                        var reg = /^[\da-zA-Z\u4e00-\u9fa5\-]\w{3,19}$/g;
                        var len = this.value.replace(/[\u4e00-\u9fa5]/g, '**').length;
                        if (len >= 4 && len <= 20) {
                            if (reg.test(usename.value)) {
                                message[0].innerHTML = '√';
                                message[0].style.color = 'green';
                                usenameflag = true;
                            } else {
                                message[0].innerHTML = '输入格式不正确';
                                message[0].style.color = 'red';
                                usenameflag = false;
                            }
                        } else {
                            message[0].innerHTML = '用户名长度不符'
                            message[0].style.color = 'red';
                            usenameflag = false;
                        }
                    } else {
                        message[0].innerHTML = '用户名不能为空';
                        message[0].style.color = 'red';
                        usenameflag = false;
                    }
                };
                // 2.设置密码
                var passwordflag = true;
                setpassword.onfocus = function() {
                    message[1].innerHTML = `建议使用数字、字母和符号两种及以上的组合,6-20个字符`;
                    message[1].style.color = '#999'
                };
                setpassword.oninput = function() {
                    var len = this.value.length;
                    if (len >= 6 && len <= 20) {
                        var regnum = /[0-9]/;
                        var reglowercase = /[a-z]/;
                        var reguppercase = /[A-Z]/;
                        var regother = /\W\_/;
                        var count = 0;

                        if (regnum.test(this.value)) {
                            count++;
                        }

                        if (reguppercase.test(this.value)) {
                            count++;
                        }

                        if (reglowercase.test(this.value)) {
                            count++;
                        }

                        if (regother.test(this.value)) {
                            count++;
                        }
                        switch (count) {
                            case 1:
                                message[1].innerHTML = '弱：有被盗风险,建议使用字母、数字和符号两种及以上组合';
                                message[1].style.color = 'red';
                                passwordflag = false
                                break;
                            case 2:
                            case 3:
                                message[1].innerHTML = '中：安全强度适中，可以使用三种以上的组合来提高安全强度';
                                message[1].style.color = 'orange';
                                passwordflag = false;
                                break;
                            case 4:
                                message[1].innerHTML = '强：你的密码很安全';
                                message[1].style.color = 'green';
                                passwordflag = true;
                                console.log(1);
                                break;
                        }
                    } else {
                        message[1].innerHTML = '密码长度不符'
                        message[1].style.color = 'red';
                        passwordflag = false;
                    }
                }
                setpassword.onblur = function() {
                    if (setpassword.value === '') {
                        message[1].innerHTML = '密码不能为空';
                        message[1].style.color = 'red';
                        passwordflag = false;
                    };
                    if (passwordflag) {
                        message[1].innerHTML = '√';
                        message[1].style.color = 'green';
                        passwordflag = true;
                    }
                };
                //3.确认密码
                var truepasswordflag = true;
                truepassword.onclick = function() {
                    message[2].innerHTML = '请再次输入密码';
                    message[2].style.color = '#999';
                };
                truepassword.onblur = function() {
                    if (truepassword.value !== '') {
                        if (truepassword.value === setpassword.value) {
                            message[2].innerHTML = '√';
                            message[2].style.color = 'green';
                            truepasswordflag = true;
                        } else {
                            message[2].innerHTML = '两次密码输入不一致';
                            message[2].style.color = 'red';
                            truepasswordflag = false;
                        }
                    } else {
                        message[2].innerHTML = '确认密码不能为空';
                        message[2].style.color = 'red';
                        truepasswordflag = false;
                    }
                };
                //4.手机号码
                var phonenumberflag = true;
                phonenumber.onfocus = function() {
                    message[3].innerHTML = '请正确输入手机号码';
                    message[3].style.color = '#999';
                }
                phonenumber.onblur = function() {
                    if (this.value !== '') {
                        var reg = /^1[3578]\d{9}$/g
                        if (reg.test(this.value)) {
                            message[3].innerHTML = '√';
                            message[3].style.color = 'green';
                            phonenumberflag = true;
                        } else {
                            message[3].innerHTML = '格式不符';
                            message[3].style.color = 'red';
                            phonenumberflag = false;
                        }
                    } else {
                        message[3].innerHTML = '手机号码不能为空';
                        message[3].style.color = 'red';
                        phonenumberflag = false;
                    }
                };

                //5 验证码
                var codeflag = true;
                // 汉字：[0x4e00, 0x9fa5]（ 或十进制[19968, 40869]）
                // 数字：[0x30, 0x39]（ 或十进制[48, 57]）
                // 小写字母：[0x61, 0x7a]（ 或十进制[97, 122]）
                // 大写字母：[0x41, 0x5a]（ 或十进制[65, 90]）
                function getCode() {
                    /*随机生成4位验证码*/
                    /*step1:将所有字母，数字装入一个数组备用*/
                    var codes = [];
                    //数字:48-57;unicode编码
                    for (var i = 48; i <= 57; codes.push(i), i++);
                    /*console.log(codes);*/
                    //大写字母:65-90;unicode编码
                    for (var i = 65; i <= 90; codes.push(i), i++);
                    //小写字母:97-122;unicode编码
                    for (var i = 97; i <= 122; codes.push(i), i++);
                    var arr = [];
                    for (var i = 0; i < 4; i++) { //从0-61之间取随机数
                        var index = Math.floor(Math.random() * (61 - 0 + 1) + 0);
                        var char = String.fromCharCode(codes[index]);
                        arr.push(char);
                    }
                    /*console.log(arr);*/
                    var code = arr.join("");
                    return code;
                }
                span.onclick = function() {
                    this.innerHTML = getCode();
                }
                code.onfocus = function() {
                    message[4].innerHTML = '请正确输入验证码';
                    message[4].style.color = '#999';
                };
                code.onblur = function() {
                    if (code.value === span.innerHTML) {
                        message[4].innerHTML = '√';
                        message[4].style.color = 'green';
                        codeflag = true;
                    } else {
                        message[4].innerHTML = '验证码输入不正确';
                        message[4].style.color = 'red';
                        codeflag = false;
                    }
                };
                //手机验证码
                var phonecodeflag = true;
                phonecode.onclick = function() {
                    message[5].innerHTML = '请输入手机验证码';
                    message[5].style.color = '#999';
                };
                phonecode.onblur = function() {
                    if (phonecode.value !== '') {
                        if (phonecode.value === span.innerHTML) {
                            message[5].innerHTML = '√';
                            message[5].style.color = 'green';
                            phonecodeflag = true;
                        } else {
                            message[5].innerHTML = '手机验证码不正确';
                            message[5].style.color = 'red';
                            phonecodeflag = false;
                        }
                    } else {
                        message[5].innerHTML = '手机验证码不能为空';
                        message[5].style.color = 'red';
                        phonecodeflag = false;
                    }
                };
                //表单提交
                register.onsubmit = function(ev) {
                        var ev = ev || event;
                        console.log(1);
                        // if (username.value === '') {
                        //     message[0].innerHTML = '用户名不能为空';
                        //     message[0].style.color = 'red';
                        //     usenameflag = false;
                        // }
                        // if (setpassword.value === '') {
                        //     message[1].innerHTML = '密码不能为空';
                        //     message[1].style.color = 'red';
                        //     passwordflag = false;
                        // }
                        // if (truepassword.value === '') {
                        //     message[2].innerHTML = '确认密码不能为空';
                        //     message[2].style.color = 'red';
                        //     truepasswordflag = false;
                        // }
                        // if (phonenumber.value === '') {
                        //     message[3].innerHTML = '手机号不能为空';
                        //     message[3].style.color = 'red';
                        //     phonenumberflag = false;
                        // }
                        // if (code.value === '') {
                        //     message[4].innerHTML = '验证码不能为空';
                        //     message[4].style.color = 'red';
                        //     codeflag = false;
                        // }
                        // if (phonecode.value === '') {
                        //     message[5].innerHTML = '手机号不能为空';
                        //     message[5].style.color = 'red';
                        //     phonecodeflag = false;
                        // }
                        if (!usenameflag || !passwordflag || !truepasswordflag || !codeflag || !phonenumberflag || !phonecodeflag) {
                            ev.preventDefault();
                        }
                        return false;
                    }
                    // }
            }()
        }
    })