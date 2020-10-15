require.config({
    // baseUrl: '', //公共的路径，基路径，所有模块共有的路径
    paths: {
        'jquery': 'https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.min',
        'jq_cookie': 'https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.0/jquery.cookie.min',
        'jq_lazyload': 'https://cdn.bootcdn.net/ajax/libs/jquery.lazyload/1.8.3/jquery.lazyload.min'

    },
    shim: { //不支持AMD模块，支持AMD
        'jq_cookie': {
            deps: ['jquery'], //模块的依赖
            exports: 'jq_cookie'
        },
        'jq_lazyload': {
            deps: ['jquery'], //模块的依赖
            exports: 'jq_lazyload'
        }
    }
});

// 加载模块
require(['jquery', 'jq_lazyload', 'jq_cookie'], function() {
    require(['index_module']);
    require(['jquery.pagination']);
    require(['list_module']);
    require(['detail_module']);
    require(['fdj']);
    require(['product_num']);
    require(['car_module']);
    require(['registry_tab']);
});
require(['ajax']);
require(['registry_check']);
require(['registry_data']);
require(['cookie']);