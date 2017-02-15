(function($) {
var
    shadeClose = false,
    className = 'ui-layer',
    indexs = []; // 弹层索引栈
IX.extend({
    load : function(text) {
        indexs.push(layer.open({
            type : 2,
            shadeClose : shadeClose,
            content : text || '加载中...',
            className : className
        }));
        return this;
    },
    tip : function(text) {
        var _self = this;
        layer.open({
            shade : false,
            content : text || '提示文字',
            time : 3,
            className : className + ' ' + _self.clazz.tip
        });
        return this;
    },
    alert : function(text) {
        layer.open({
            shadeClose : shadeClose,
            content : text || '',
            btn : '确定',
            className : className
        });
        return this;
    },
    confirm : function(text, cbyes, cbno) {
        var yes = function(index) {
            layer.close(index);
            if(cbyes && $.isFunction(cbyes)) cbyes();
        };
        var no = function(index) {
            layer.close(index);
            if(cbno && $.isFunction(cbno)) cbno();
        };
        if(!IX.browser.ios) {
            layer.open({
                shadeClose : shadeClose,
                className : className,
                content : text || '确定操作？',
                btn : [ '取消', '确定' ],
                skin : 'footer',
                no : yes,
                yes : no
            });
        } else {
            layer.open({
                shadeClose : shadeClose,
                content : text || '确定操作？',
                className : className,
                btn : [ '确定', '取消' ],
                yes : yes,
                no : no
            });
        }
        return this;
    },
    error : function(text) {
        var _self = this;
        layer.open({
            content : text || '页面错误',
            time : 3,
            anim : 'down',
            shade : false,
            fixed : false,
            top : 0,
            className : className + ' ' + _self.clazz.error
        });
        return this;
    },
    open : function(url, anim) {
        var _self = this;
        _self.load().post({
            url : url,
            dataType : 'html',
            callback : function(html) {
                indexs.push(layer.open({
                    type : 1,
                    shadeClose : shadeClose,
                    content : html,
                    anim : anim || false,
                    className : className + ' ' + _self.clazz.dialog,
                    success : function(layer) {
                        var $layer = $(layer);
                        ix.scroll($layer.find(_self.selector.body)[0]);
                        _self.close();
                        $layer.find('script').each(function() {
                            eval($(this).html()); // 动态执行弹层js代码
                        });
                    }
                }));
            }
        });
        return this;
    },
    pop : function(url) {
        return this.open(url, 'scale');
    },
    slide : function(url, direction) {
        return this.open(url, direction);
    },
    close : function() {
        layer.close(indexs.pop());
    }
});
})(jQuery);
