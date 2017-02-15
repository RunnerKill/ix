(function($){
	//此处放置自己定义的一些验证方法
	// 最多输入50字节
    jQuery.validator.addMethod("textlimit", function(value, element) {
		var len = value.replace(/[^\x00-\xff]/g, 'xxx').length; // 与数据库编码一致,utf-8编码规则: 1汉字=3字节
    	return this.optional(element) || ( len <= 50 );
    }, $.validator.format("输入文字超过长度限制！"));
    
    // 汉字/英文/下划线
    jQuery.validator.addMethod("namecommon", function(value, element) {
    	var decimal = /^[_\A-Za-z\u4e00-\u9fa5]*$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("只能为汉字\\英文\\下划线！"));
    
    // 数字/汉字/英文/下划线
    jQuery.validator.addMethod("textcommon", function(value, element) {
    	var decimal = /^[_\w\u4e00-\u9fa5]*$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("只能为数字\\汉字\\英文\\下划线！"));
    
	// qq 低于12位的整数
    jQuery.validator.addMethod("qq", function(value, element) {
    	var decimal = /^\d{1,12}$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("qq号码错误"));
    
	// excel文件
	jQuery.validator.addMethod("excel", function(value, element) {
		var decimal = /^.+(\.XLSX|\.xlsx)$/;
		return this.optional(element) || (decimal.test(value));
	}, $.validator.format("请上传xlsx格式的文件"));
	
    // 手机号
    jQuery.validator.addMethod("mobile", function(value, element) {
    	var decimal = /^1[3|4|5|7|8][0-9]\d{8}$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("手机错误"));
    
    // 身份证号
    jQuery.validator.addMethod("id-num", function(value, element) {
    	var decimal = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("身份证错误"));
    
    // 电话号码
    jQuery.validator.addMethod("phone", function(value, element) {
    	return this.optional(element) || (checkPhone(value));
    }, $.validator.format("电话错误"));
    
    // 邮政编码
    jQuery.validator.addMethod("post-num", function(value, element) {
    	var decimal = /^[1-9][0-9]{5}$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("邮编错误"));
    
    // 电话或手机号码
    jQuery.validator.addMethod("tel-phone", function(value, element) {
    	var decimal = /^1[3|4|5|8][0-9]\d{8}$/;
    	return this.optional(element) || (checkPhone(value)) || (decimal.test(value));
    }, $.validator.format("号码错误"));
    
    // 非纯数字
    jQuery.validator.addMethod("uname", function(value, element) {
    	var decimal = /^\d+$/;
    	return this.optional(element) || (!decimal.test(value));
    }, $.validator.format("不能为纯数字"));
    
    // 英文/数字/下划线
    jQuery.validator.addMethod("alphanumeric", function(value, element) {
    	var decimal = /^\w+$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("只能为英文\\数字\\下划线！"));
    
    // 非负整数
    jQuery.validator.addMethod("NonNegativeNumber", function(value, element) {
    	var decimal = /^(0|[1-9]\d*)$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("只能为非负整数"));
    
    // 压缩文件
	jQuery.validator.addMethod("zip", function(value, element) {
		var decimal = /^.*?\.zip$/;
		return this.optional(element) || (decimal.test(value));
	}, $.validator.format("请上传压缩文件zip格式的文件"));
	
    //mp3文件
    jQuery.validator.addMethod("wxmaterial-audio",function(value, element) {
    	var decimal = /^.+(\.MP3|\.mp3)$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("请上传mp3格式文件"));
    
    //mp4文件
    jQuery.validator.addMethod("wxmaterial-video",function(value, element) {
    	var decimal = /^.+(\.MP4|\.mp4)$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("请上传mp4格式文件"));
    
    //jpg或png文件
    jQuery.validator.addMethod("wxmaterial-articleImg",function(value, element) {
    	var decimal = /^.+(\.JPG|\.jpg|\.PNG|\.png|\.gif|\.GIF)$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("请上传jpg或png或gif格式图片！"));

    //只能为汉字/英文/数字
    jQuery.validator.addMethod("tagscommon", function(value, element) {
    	var decimal = /^[0-9\A-Za-z\u4e00-\u9fa5]*$/;
    	return this.optional(element) || (decimal.test(value));
    }, $.validator.format("只能为英文\\数字\\汉字！"));
    
    // 检查电话号码格式
    var checkPhone = function(strPhone) {
        var phoneRegWithArea = /^[0][1-9]{2,3}-[0-9]{5,10}$/, phoneRegNoArea = /^[1-9]{1}[0-9]{5,8}$/;
        if (strPhone.length > 9) {
            if (phoneRegWithArea.test(strPhone)) {
                return true;
            } else {
                return false;
            }
        } else {
            if (phoneRegNoArea.test(strPhone)) {
                return true;
            } else {
                return false;
            }
        }
    };
})(jQuery);
