define([], function() {
    return {
        ajax: ! function() {
            // 封装ajax函数
            function ajax(obj) {
                let ajax = new XMLHttpRequest();
                // 1.请求类型
                obj.type = (obj.type || 'get').toLowerCase();
                // 2.请求路径
                if (!obj.url) {
                    throw new Error('路径不能为空');
                }
                // 3.异步还是同步
                if (obj.async === 'false' || obj.async === false) {
                    obj.async = false;
                } else {
                    obj.async = true;
                }
                // 4.发送数据
                // 4.1 数据转换函数
                function objtostring(obj) {
                    let objarr = [];
                    for (var i in obj) {
                        objarr.push(i + '=' + obj[i]);
                    }
                    return objarr.join('&');
                }
                // 4.2 数据存在则进行数据转换
                if (obj.data) {
                    if (Object.prototype.toString.call(obj.data) === '[object Object]') {
                        obj.data = objtostring(obj.data);
                    }
                }
                //4.3 发送数据方式是get时数据处理
                if (obj.data && obj.type === 'get') {
                    obj.url = obj.url + '?' + obj.data;
                }
                ajax.open(obj.type, obj.url, obj.async);
                // 5 发送数据方式为post时数据处理
                if (obj.data && obj.type === 'post') {
                    ajax.setRequestHeader('content-type', 'application/x-www-form-urlencoded'); //设置请求头
                    ajax.send(obj.data);
                } else {
                    ajax.send();
                }

                if (obj.async) { //异步
                    ajax.onreadystatechange = function() {
                        if (ajax.readyState === 4) {
                            if (ajax.status === 200) {
                                let data = ajax.responseText;
                                if (obj.datatype === 'json') {
                                    data = JSON.parse(data);
                                }
                                obj.success && typeof obj.success === 'function' && obj.success(data);
                            } else {
                                obj.error && typeof obj.error === 'function' && obj.error('接口地址有误' + ajax.status);
                            }
                        }
                    }
                } else { //同步
                    if (ajax.status === 200) {
                        let data = ajax.responseText;
                        if (obj.datatype === 'json') {
                            data = JSON.parse(data);
                        }
                        obj.success && typeof obj.success === 'function' && obj.success(data);
                    } else {
                        throw new Error('接口地址有误' + ajax.status);
                    }

                }
            }
        }()
    }
})