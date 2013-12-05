(function() {
	var css;

	var overlayCss = ".colors .color {width: 40px;height: 40px;display: inline-block;vertical-align: top; margin: 20px; border: 3px solid #666; border-radius: 5px;}" +
		".colors {display: none; position: fixed; top: 50px; left: 50px; right: 50px; padding: 20px; z-index: 99999; background:white; border: 3px solid #666;}" +
		".colors-wrapper { display:none; position: fixed; width: 100%; height: 100%; top:0; left:0; z-index: 99998; background:rgba(0,0,0,0.5);} " +
		".colors-close{display:block; position:absolute; right: 10px; top: 5px;}";

	var buttonStyle = 'background: url(data:image/png;base64,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) 5px 6px no-repeat;';

	function setStyle(header1,header2,bg,btnText,btn1,btn2){
		css = '.touch ._52z5, .chromeBar.acb {' +
			'	background-image: -webkit-linear-gradient('+header1+', '+header2+') !important;' +
			'}' +
			' .touch._fzu .mHomeNewsfeed, .touch._fzu .structuredPublisher, ' +
			'.touch._fzu .groupChromeView.feedRevamp, .touch._fzu._2v9s, ' +
			'.touch._fzu ._2v9s, .touch._fzu .wallFilter.fullwidth, .touch._fzu div.fullwidthMore, ' +
			'.touch._fzu #mAjaxLoader, .touch._fzu #mErrorView , .timeline .timelinePublisher, ' +
			'.touch ._5dy4, .tlBody, .timeline .feed, .timeline .tlPrelude, .timeline .tlFeedPlaceholder, ' +
			'.touch .composerLinksArea, .touch .inlineStatusBoxContainer, .tablet.touch .storyStream._2v9s{' +
			'	background: '+bg+' !important;' +
			'}' +
			' .touch .btn.btnD.bgb, .touch .btn.btnC, .touch .btn.btnI.bgb, .touch .btn.btnS, .touch .btn.btnN, .touch .btn.btnD, .touch .btn.btnC.bgb, .touch .btn.btnI  {' +
			'	color: '+btnText+' !important;' +
			'}' +
			' .touch .btnC, .touch .btnI.bgb, .touch .btnD, .touch .btnI  {' +
			'	background-image: -webkit-linear-gradient('+btn1+', '+btn2+') !important;' +
			'}' +

			'.tablet.touch #m_stream_stories > .story.carded:first-child, .tablet.touch .storyStream > .carded, .tablet.touch .storyStream > div > .carded, .touch._fzu .storyStream > .carded, .touch._fzu .storyStream > div > .carded, .touch._fzu .groupChromeView.feedRevamp .carded, .touch._fzu .storyStream .permalinkBottom {'+
			'border-image: url("/rsrc.php/v2/yY/r/MbRYPTTBBUR.png") 4 4 6 4 repeat repeat !important;'+
			'border-width: 4px 4px 6px !important;'+
			'margin: 0 8px 9px !important;'+
			'}';
		return css;
	}

	function setStyleArray(array){
		return setStyle.apply(this,array);
	}

	var colorSchemes = {orange:['#e28a00', '#e24e00', '#ffbe7d', '#fff', '#e28a00', '#e24e00'],
		pink:['#ff0072', '#980036', '#ffacd1', '#fff', '#ff0072', '#980036'],
		green:['#09b800', '#125600', '#a9ffa5', '#fff', '#09b800', '#125600'],
		black:['#333', '#000', '#c9c9c9', '#fff', '#333', '#000'],
		white:['#fff', '#aaa', '#fff', '#fff', '#666', '#333'],
		default:['rgb(115, 138, 186)','rgb(44, 73, 135)']};

	function applyCss(css,id){
		var style = document.getElementById(id);
		if(style) style.parentNode.removeChild(style);

		var heads = document.getElementsByTagName("head");
		if (heads.length > 0) {
			var node = document.createElement("style");
			node.type = "text/css";
			node.id = id;
			node.appendChild(document.createTextNode(css));
			heads[0].appendChild(node);
		}
	}

	function applyStyle(){
		applyCss(css,'fbStyle');
	}

	window.showOverlay = function (){
		document.getElementsByClassName('colors-wrapper')[0].setAttribute('style','display:block');
		document.getElementsByClassName('colors')[0].setAttribute('style','display:block');
	};

	window.hideOverlay = function (){
		document.getElementsByClassName('colors-wrapper')[0].setAttribute('style','display:none');
		document.getElementsByClassName('colors')[0].setAttribute('style','display:none');
	};

	window.selectStyle = function(name){
		setStyleArray(colorSchemes[name]);
		applyStyle();
		if(typeof AppsgeyserJSInterface != 'undefined'){
			AppsgeyserJSInterface.setItem('currentFbStyle',name);
		}
		hideOverlay();
	};

	function appendOverlay(){
		var overlay = document.createElement('div');
		overlay.className = 'colors-wrapper';
		overlay.setAttribute('onclick','hideOverlay()');
		document.body.appendChild(overlay);
		var colors = document.createElement('div');
		colors.className = 'colors';
		for(var i in colorSchemes){
			if(!colorSchemes.hasOwnProperty(i)) continue;
			colors.innerHTML += '<div class="color" onclick="selectStyle(\'' + i + '\')" style="background-image:-webkit-linear-gradient('+colorSchemes[i][0]+', '+colorSchemes[i][1]+')"></div>'
		}
		colors.innerHTML += '<a href="#" class="colors-close" onclick="hideOverlay()">Close</a>';
		document.body.appendChild(colors);
	}

	function appendButton(){
		var container = document.getElementById('mJewelNav');
		if(container){
			var button = document.createElement('div');
			button.setAttribute('id','appsgeyser-change-color');
			button.setAttribute('class','_59te jewel noCount');
			button.setAttribute('style',buttonStyle);
			button.innerHTML = '<a class="_59tf touchable">';
			button.setAttribute('onclick','showOverlay()');
			container.appendChild(button);
		}
	}

	window.fbColorChangerInit = false;
	function init(){
		if(window.fbColorChangerInit|| document.getElementById('appsgeyser-change-color')) return;
		window.fbColorChangerInit = true;
		var currentStyle = 'orange';
		if(typeof AppsgeyserJSInterface != 'undefined'){
			currentStyle = AppsgeyserJSInterface.getItem('currentFbStyle');
			if(!currentStyle) currentStyle = 'orange';
		}
		applyCss(overlayCss,'colorsSelect');
		setStyleArray(colorSchemes[currentStyle]);
		applyStyle();

		appendButton();
		appendOverlay();
	}
	init();

})();