/**
 * ix框架
 * @param $ jQuery对象
 * @param window Window对象
 * @param undefined undefined未定义
 */
(function($, window, undefined) {
var
    defaults = {
    },
    files = [
        '../css/ix.css',
        'ix.util.js',
        'ix.scroll.js',
        'ix.layer.js',
        'ix.ajax.js',
        'ix.form.js',
        'ix.list.js'
    ],
    ix_clazz = [
        'page',
        'dialog',
        'tip',
        'error',
        'body',
        'header',
        'footer',
        'content',
        'cells'
    ],
    jsfiles = document.scripts,
    jsPath = jsfiles[jsfiles.length - 1].src,
    dir = jsPath.substring(0, jsPath.lastIndexOf("/") + 1),
    fn_arr2obj = function(clazz, prefix) {
        prefix = prefix || '';
        return eval("({" + $.map(clazz, function(v) {
            return "'" + v + "':'" + prefix + v + "'";
        }).join(',') + "})");
    };

var IX = {
    clazz : fn_arr2obj(ix_clazz, 'ui-'),
    selector : fn_arr2obj(ix_clazz, '.ui-'),
    init : function(options) {
        options = $.extend({}, defaults, options);
        this.unscroll(document.body)
            .scroll(document.querySelector(this.selector.body));
        return this;
    },
    extend : function(obj) {
        return $.extend(this, obj);
    },
    import : function(path) {
        path = dir + path;
        if (path.match(/.*\.js$/)) {
            document.write('<script src="' + path + '"></script>');
        } else if(path.match(/.*\.css$/)) {
            document.write('<link rel="stylesheet" href="' + path + '">');
        }
        return this;
    },
    imports : function(paths) {
        $.each(paths, function(i, f) {
            IX.import(f);
        });
        return this;
    }
};

window.ix = window.IX = IX;
IX.imports(files);

$(function() {
    IX.load();
    IX.init();
});
$(window).load(function() {
    IX.close();
});
})(jQuery, window);

