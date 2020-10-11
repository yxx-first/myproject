;
! function() {
    const search = document.querySelector('.search_bar input');
    const list = document.querySelector('.search_bar ul');

    search.oninput = function() {

        console.log(1);
        //随着用户的输入，数据接口发送变化。
        let scriptelement = document.querySelector('#scriptelement');
        //如果存在上面的元素对象，带有此id名的script已经创建了。
        if (scriptelement) { //如果存在script元素，删除
            document.body.removeChild(scriptelement);
        }
        console.log(2);
        let cS = document.createElement('script');
        console.log(3);
        console.log(cS);
        cS.src = 'https://suggest.taobao.com/sug?code=utf-8&q=' + this.value + '&_ksTS=1600326651998_256&callback=hello';
        cS.id = 'scriptelement';
        document.body.appendChild(cS);
    };

    function hello(data) {
        console.log(data);
        let arr = data.result;
        let str = '';
        for (let value of arr) {
            str += `
            <li>${value[0]}</li>
        `;
        }
        list.innerHTML = str;
    }

}();