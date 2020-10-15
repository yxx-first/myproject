define([], function() {
    return {
        data: ! function() {
            console.log(1111111111111111111111);
            window.onload = function() {
                const form = document.querySelector('#registry');
                const username = document.querySelector('.usename');
                console.log(username);
                const p = document.querySelectorAll('#registry p');
                console.log(p);
                let flag = true;


                username.onblur = function() {
                    ajax({
                        type: 'post',
                        url: 'http://192.168.11.55/ocj_project/php/registry.php',
                        data: {
                            name: this.value
                        },
                        success: function(data) {
                            if (data) {
                                p[0].innerHTML = '该用户名已存在';
                                p[0].style.color = 'red';
                                flag = false;
                            } else {
                                p[0].innerHTML = '√';
                                p[0].style.color = 'green';
                                flag = true;
                            }
                        }
                    })
                };

                form.onsubmit = function() {
                    if (username.value === '') {
                        p[0].innerHTML = '该用户名不能为空';
                        p[0].style.color = 'red';
                        flag = false;
                    }
                    if (!flag) {
                        return false; //阻止跳转
                    }
                }

            }
        }()
    }
})