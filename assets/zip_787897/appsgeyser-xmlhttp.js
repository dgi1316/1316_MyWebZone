function AppsgeyserXmlHttpRequest() {
	this.method = 'get';
	this.url = "";
	this.async = true;
	this.asyncCallback = null;
	this.readyState = 0;
	this.status = null;
	this.responseText = "";

	this.open = function(method, url, async){
		this.method = method;//TODO: method and status support
		this.url = url;
		this.async = async;
		this.readyState = 0;
		this.status = null;
		this.responseText = "";
	};

	this.generateCallbackName = function(){
		this.asyncCallback = "asyncCallback" + (Math.round(Math.random()*10000000000000000));
		return this.asyncCallback;
	};

	this.sendAsync = function(body){
		var that = this;
		var callback = this.generateCallbackName();
		window[callback] = function(response){
			that.responseText = response;
			that.readyState = 4;
			if(that.responseText.length > 0){
				that.status = 200;
			} else {
				that.status = 400;
			}
			if(typeof that.onreadystatechange == 'function') that.onreadystatechange();
		};
		AppsgeyserJSInterface.sendXMLHTTPRequest(this.url, callback);
	};

	this.sendSync = function(body){
		this.responseText = AppsgeyserJSInterface.sendXMLHTTPRequestSync(this.url);
		this.readyState = 4;
		if(this.responseText.length > 0){
			this.status = 200;
		} else {
			this.status = 400;
		}
		if(typeof this.onreadystatechange == 'function') this.onreadystatechange();
	};

	this.send = function(body){
		if(this.async){
			this.sendAsync(body);
		} else {
			this.sendSync(body);
		}
	};
}