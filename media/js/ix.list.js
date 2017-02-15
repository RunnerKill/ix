(function($) {
var defaults = {
    url : '',       // request url
    data : {},      // request params
    page : 'page',  // the key of 'current_page_number'
    keywords : 'kw',  // the key of 'keywords'
    callback : function(lis) {  // callback function, won't request again if it return false.
        return true;
    }
};
IX.extend({
    list : function(id, options) {
        var $list = $('#' + id);
        $list = $list.length > 0 ? $list.eq(0) : null;
        if(!$list) return this;
        options = $.extend({}, defaults, options);
        var $page = $list.closest(IX.selector.page),
            $input = $page.find('input.keywords'),
            $btn = $page.find('a.refresh[target="' + id + '"]');
        // init style
        $list.empty()
            .attr('page', 0)
            .attr('url', options.url)
            .data('options', options)
            .removeClass('nomore')
            .removeClass('refreshing');
        // first init
        nextpage($list, options);
        // scroll event to load more
        $list.closest(IX.selector.body).scroll(function(e) {
            var scroll_height = $list.closest(IX.selector.content).outerHeight() - $(this).outerHeight();
            if(!$list.hasClass('refreshing')
                    && !$list.hasClass('nomore')
                    && scroll_height > 0
                    && $(this).scrollTop() >= scroll_height) {
                nextpage($list, options);
            }
        });
        // click event to refresh
        if($btn.length) {
            $btn.click(function() {
                $btn.addClass('rotating');
                newpage($list, options, function() {
                    $btn.removeClass('rotating');
                });
            });
        }
        // enter event to search
        if($input.length) {
            $input.keyup(function(e) {
                if(event.keyCode == 13) {
                    var opt = $list.data('options');
                    opt.data[opt.keywords] = function(){
                        return $input.val();
                    };
                    $list.empty();
                    newpage($list, opt);
                }
            });
        }
        return this;
    },
    refresh : function(id, cb) {
        var $list = $('#' + id);
        $list = $list.length > 0 ? $list.eq(0) : null;
        if(!$list) return this;
        newpage($list, $list.data('options'), cb);
    },
    search : function(id, data, cb) {
        var $list = $('#' + id);
        $list = $list.length > 0 ? $list.eq(0) : null;
        if(!$list) return this;
        var opt = $list.data('options');
        opt.data = $.extend(opt.data, data);
        $list.empty();
        newpage($list, opt);
    }
});
var getpage = function($list) {
    return parseInt($list.attr('page'));
};
var setpage = function($list, page) {
    return $list.attr('page', page);
};
var load = function($list, opt, curpage, cb) {
    var data = opt.data || {};
    data[opt.page] = curpage;
    if($list.hasClass('loading')) return ;
    $list.addClass('loading');
    IX.post({
        url : opt.url,
        data : data,
        dataType : 'html',
        callback : function(html) {
            $list.removeClass('loading');
            var $lis = $('<div></div>').html(html).children();
            cb($lis);
            if(opt.callback && $.isFunction(opt.callback)) {
                opt.callback.call($list, $lis);
            }
        }
    });  
};
var nextpage = function($list, options, cb) {
    var next = getpage($list) + 1;
    load($list, options, next, function(lis) {
        setpage($list, next);
        if(lis.length) {
            $list.append(lis);
        } else {
            $list.addClass('nomore');
        }
        if(cb && $.isFunction(cb)) cb();
    });
};
var newpage = function($list, options, cb) {
    load($list, options, 1, function(lis) {
        setpage($list, 1);
        $list.empty();
        if(lis.length) {
            $list.append(lis)
                .removeClass('nomore')
                .addClass('refreshing')
                .closest(IX.selector.body).animate({
                    scrollTop: 0
                }, 'fast', function() {
                    $list.removeClass('refreshing');
                });
        }
        if(cb && $.isFunction(cb)) cb();
    });
};
})(jQuery);