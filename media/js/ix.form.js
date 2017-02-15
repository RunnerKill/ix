(function($, window) {
/**
 * 普通ajax表单提交
 * @param {Object} form
 * @param {String} confirmMsg 提示确认信息
 */
window.callbackForm = function(form, confirmMsg) {
	var $form = $(form);
    if(!!form.submitting) return false; // 防止重复提交
	if($form.is(".validate") && !$form.valid()) {
	    ix.error('请填写完整表单信息!');
	    $form.find('.error').each(function() {
	        $(this).closest('.box').addClass('err');
	    });
		return false;
	}
    if(!form.ajax) { // 递归实现confirm阻塞
        form.ajax = true;
    } else {
        form.submitting = true;
        return true;
    }
    var _submit = function() {
        $form.submit();
    };
	if (confirmMsg) {
		ix.confirm(confirmMsg, function() {
		    _submit();
		}, function() {
		    form.ajax = false;
		});
	} else {
	    _submit();
	}
	return false;
};

/**
 * 执行自定义script回调
 * @param {Object} form
 * @param {String} confirmMsg 提示确认信息
 */
window.callbackScript = function(form, confirmMsg) {
	var $form = $(form);
	if ($form.is(".validate") && !$form.valid()) {
		return false;
	}
	var _submitFn = function(){
		_Ajax.request({
			url : $form.attr("action"),
			type : form.method || 'POST',
			data : $form.serializeArray(),
			dataType : "script",
			callback : function(script) {
//				if(_Util.isIE(8)) $document.append('<script>' + script + '</script>');
			}
		});
	};
	if (confirmMsg) {
		_Layer.confirm(confirmMsg, _submitFn);
	} else {
		_submitFn();
	}
	return false;
};

/**
 * 带文件上传的ajax表单提交
 * @param {Object} form
 * @param {String} confirmMsg 提示确认信息
 * @param {Function} callback 上传回调
 */
window.callbackFile = function(form, confirmMsg, callback){
	var $form = $(form), $iframe = $("#callbackframe"), $document = $(document), group = arguments[3], index;
	if($form.is(".validate") && !$form.valid()) {
		return false;
	}
	if(!form.ajax) {
		$form.append('<input type="hidden" name="ajax" value="1" />');
	} else {
		return true;
	}
	if ($iframe.size() == 0) {
		$iframe = $("<iframe id='callbackframe' name='callbackframe' src='about:blank' style='display:none'></iframe>").appendTo("body");
	}
	form.target = "callbackframe";
	$iframe.bind("load", function(event){
		_Layer.close(index);
		$iframe.unbind("load");
		$form.find('input[name="ajax"]').remove();
		var iframe = $iframe[0];
		if (iframe.src == "javascript:'%3Chtml%3E%3C/html%3E';" || // For Safari
			iframe.src == "javascript:'<html></html>';") { // For FF, IE
			return;
		}
		var doc = iframe.contentDocument || iframe.document;
		// fixing Opera 9.26,10.00
		if (doc.readyState && doc.readyState != 'complete') return; 
		// fixing Opera 9.64
		if (doc.body && doc.body.innerHTML == "false") return;
		var response;
		if (doc.body){
			try{
				response = $iframe.contents().find("body").text();
				response = $.parseJSON(response);
			} catch (e){ // response is html document or plain text
				response = doc.body.innerHTML;
			}
		}
		if(group) { // bringback
		    if(typeof response == 'string') response = eval("(" + response + ")");
		    callback(group, response);
		} else if(callback && $.isFunction(callback)) { // customize
		    callback(response);
		} else { // default
            if(typeof response == 'string') response = eval("(" + response + ")");
			_Ajax.callbackJson($form, response);
		}
	});
	var _submitFn = function(){
		index = _Layer.load('加载中...');
		$form.submit();
	};
	if (confirmMsg) {
		_Layer.confirm(confirmMsg, _submitFn);
	} else {
		_submitFn();
	}
};

/**
 * 处理列表页上的查询, 会重新载入当前page
 * @param {Object} form
 */
window.callbackSearch = function(form){
	var $form = $(form);
	$form.parentPage().forward({
		url : $form.attr('action'),
		data : $form.serializeArray()
	});
	return false;
}
})(jQuery, window);
