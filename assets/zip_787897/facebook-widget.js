var facebookAppConfig = {
	'request_url' : 'http://graph.facebook.com/oauth/authorize',
	'authorize_url' : 'https://graph.facebook.com/oauth/authorize',
	'access_url' : 'https://graph.facebook.com/oauth/access_token',
	'client_key' : '1401552240079881',
	'app_name' : 'Social Browser',
	'FacebookExOAuthcallback': 'true',
	'oauth_scope': "read_mailbox, read_requests, manage_notifications",
	//"installed, read_stream, read_requests, read_mailbox, offline_access, manage_notifications",
	'callback_page': "https://www.facebook.com/connect/login_success.html?client_key=1401552240079881"
};

var facebookQueries = {
	'unreadInbox' : 'SELECT thread_id, unread FROM thread WHERE folder_id = 0',
	'unreadRequests' : 'SELECT unread, uid_from from friend_request WHERE uid_to=me()',
	'notifications' : 'SELECT is_unread, app_id from notification WHERE recipient_id = me()'
};

var facebookData = {
	inbox: {

	},
	friendRequests:{

	},
	notifications:{

	}
};

function isInApp(){
	return typeof AppsgeyserJSInterface != 'undefined';
}

function getItem(key){
	if(isInApp()){
		return AppsgeyserJSInterface.getItem(key);
	}
	return '';
}

function setItem(key,value){
	if(isInApp()){
		AppsgeyserJSInterface.setItem(key,value);
	}
	return '';
}

var zipPath = '';
zipPath = getItem('zipPath') || '';
if(zipPath == '' && location.href.toLowerCase().indexOf('file://') == 0){
	if(location.href.indexOf('zip_') != -1){
		var parts = location.href.split('/');
		for(var i in parts){
			if(parts[i].indexOf('zip_') == 0){
				zipPath = parts[i] + '/';
				setItem('zipPath',zipPath);
				break;
			}
		}
	}
}

if(window.location.href.indexOf('facebook.com/') != -1 && document.querySelectorAll('input[type=password]').length > 0){
	authAcquired = false;
	setItem('authAcquired','false');
	updateIcon(0);
}

var authDeclined;
var authAcquired;
var accessToken;
window.facebookWidgetButtonPressed = function(){
	authDeclined = getItem('authDeclined') == 'true';
	authAcquired = getItem('authAcquired') == 'true';
	//if(authDeclined){
	//	window.location.href = 'https://touch.facebook.com';
	//} else {
		if(authAcquired){
			redirectToNotification();
		} else {
			requestAuth();
		}

	//}
};

function redirectToNotification(){
	if(countNotifications() == 0){
		window.location.href = 'https://touch.facebook.com';
	} else {
		if(facebookData.inbox){
			var inbox = facebookData.inbox;
			for(var thread in inbox){
				if(parseInt(inbox[thread].unread) != 0){
					window.location.href = 'https://touch.facebook.com/messages/read/?tid=' + inbox[thread].thread_id;
					return;
				}
			}
		}
		if(facebookData.friendRequests){
			var requests = facebookData.friendRequests;
			for(var request in requests){
				if(requests[request].unread == true){
					window.location.href = 'https://touch.facebook.com/findfriends/browser/?fc_tab=requests';
					return;
				}
			}
		}

		if(facebookData.notifications){
			var notifications = facebookData.notifications;
			for(var notification in notifications){
				if(notifications[notification].is_unread){
					window.location.href = 'https://touch.facebook.com/notifications.php';
					return;
				}
			}
		}
	}
}

function requestAuth(){
	if(confirm('Sign in with your facebook account to get realtime updates right in your browser! Do you want to sign in now?')){
		authStart();
	} else {
		setItem('authDeclined','true');
	}
}

function authStart(){
	var optArgs = {
		'client_id':facebookAppConfig.client_key,
		'type':'user_agent',
		'scope':facebookAppConfig.oauth_scope,
		'display':'page',
		'redirect_uri':facebookAppConfig.callback_page
	};
	window.location.href = addURLParam(facebookAppConfig.request_url, optArgs);
}

function addURLParam (url, key, value) {
	var sep = (url.indexOf('?') >= 0) ? "&" : "?";
	if(typeof(key) == 'string')
		return url + sep + encodeURIComponent(key) + "=" + encodeURIComponent(value);
	else {
		for(realkey in key){
			if(!key.hasOwnProperty(realkey)) continue;
			url = addURLParam(url, realkey, key[realkey]);
		}
		return url;
	}
}

function checkSuccessPage(){//TODO: check error/cancel
	if((window.location.href.indexOf('https://www.facebook.com/connect/login_success.html') == 0) &&
		(window.location.href.indexOf(facebookAppConfig.client_key) != -1)){
		var params = getQueryStringParams(window.location.href);
		if(params.access_token && params.access_token.length > 0){
			accessToken = params.access_token;
			setItem('accessToken',accessToken);
			setItem('authAcquired','true');
			authAcquired = true;
			alert('You have successfully authorised and will now receive updates inside the facebook button!');
			window.location.href = 'https://touch.facebook.com'
		} else {
			document.write('Error authorizing :(');
		}
	}
}
checkSuccessPage();

function getQueryStringParams(url) {
	var urlParts = url.split("#");
	if (urlParts.length >= 2) {
		var queryString = urlParts.slice(1).join("#");
		return formDecode(queryString);
	}
	return {};
}

function formDecode(encoded) {
	var params = encoded.split("&");
	var decoded = {};
	for (var i = 0, param; param = params[i]; i++) {
		var keyVal = param.split("=");
		if (keyVal.length == 2) {
			decoded[decodeURIComponent(keyVal[0])] = decodeURIComponent(keyVal[1]);
		}
	}
	return decoded;
}

function checkForUpdates(){
	if(isInApp())authAcquired = getItem('authAcquired') == 'true';
	if(authAcquired){
		if(isInApp())accessToken = getItem('accessToken');
		if(!accessToken){
			authAcquired = false;
			setItem('authAcquired','false');
			return;
		}
		var queries = { query1:facebookQueries.unreadInbox,
			query2:facebookQueries.unreadRequests,
			query3:facebookQueries.notifications
		};
		fbQuery(JSON.stringify(queries),parseFbInfo);
	}
}
setInterval(checkForUpdates,10000);
setTimeout(checkForUpdates,1000);

function parseFbInfo(dataStr){
	var data = JSON.parse(dataStr);
	if(data && !data.error){
		updateIcon(true);
	} else {
		updateIcon(false);
	}
	facebookData.inbox = data.data[0].fql_result_set;
	facebookData.friendRequests = data.data[1].fql_result_set;
	facebookData.notifications = data.data[2].fql_result_set;
	var notificationsCount = countNotifications();
	updateButton(notificationsCount);
}

function countNotifications(){
	var count = 0;
	if(facebookData.inbox){
		var inbox = facebookData.inbox;
		for(var thread in inbox){
			count += parseInt(inbox[thread].unread);
		}
	}

	if(facebookData.friendRequests){
		var requests = facebookData.friendRequests;
		for(var request in requests){
			count += requests[request].unread == true? 1 : 0;
		}
	}

	if(facebookData.notifications){
		var notifications = facebookData.notifications;
		for(var notification in notifications){
			count += notifications[notification].is_unread? 1 : 0;
		}
	}
	return count;
}

function updateButton(count){
	if(isInApp()){
		if(count == 0) count = '';
		AppsgeyserJSInterface.updateIconBadge('Facebook',count.toString());
	} else {
		alert('number on button: ' + count);
	}
}

function updateIcon(active){
	if(isInApp()){
		AppsgeyserJSInterface.updateIcon('Facebook',zipPath + (active ? 'facebook.png' : 'facebook-gray.png'));
	} else {
		alert('button is active: ' + active);
	}
}

function fbQuery(query, callback){
	return fbRequest('fql',callback,{'q':query});
}

function fbRequest(r, _callback, params, methodArg, dataArg) {
	if (!authAcquired)
		return false;
	var method = 'GET';
	var data = {};
	if (dataArg)
		data = dataArg;
	if (typeof(methodArg) != 'undefined' && methodArg)
		method = methodArg;
	var item;
	var paramsStr = '';
	if (typeof(params) == 'object') {
		for(item in params) {
			paramsStr = paramsStr + '&'+encodeURIComponent(item)+'='+encodeURIComponent(params[item]);
		}
	}
	var url = 'https://graph.facebook.com/' + r + '?access_token=' + accessToken + paramsStr;
	var xhr = isInApp()? new AppsgeyserXmlHttpRequest() : new XMLHttpRequest();
	xhr.open(method,url,true);
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			_callback(xhr.responseText);
		}
	};
	xhr.send(null);
	return true;
}

authAcquired = getItem('authAcquired') == 'true';
updateIcon(authAcquired ? 1 : 0);