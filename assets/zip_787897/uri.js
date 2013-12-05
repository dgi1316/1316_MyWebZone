var UriParser = function(href){
	var el;

	this.init = function(href){
		this.el = document.createElement('a');
		this.el.href = href;
	};

	this.hostname = function(){return this.el.hostname};
	this.protocol = function(){return this.el.protocol};
	this.pathname = function(){return this.el.pathname};
	this.origin = function(){return this.protocol() + '//' + this.hostname()};

	this.init(href);
};