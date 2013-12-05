function checkCurrentPage(){
	if(document.location.href.indexOf('file:') == 0) return;

	var recentWebsitesString = AppsgeyserJSInterface.getItem('recentWebsites');
	var recentWebsites;
	if(recentWebsitesString){
		recentWebsites = JSON.parse(recentWebsitesString);
	} else {
		recentWebsites = {};
	}

	var host = document.location.host;
	if(recentWebsites[host]){
		if(recentWebsites[host].frequency != -1) recentWebsites[host].frequency++;
		recentWebsites[host].age = 0;
		if(recentWebsites[host].frequency > 6){
			recentWebsites[host].frequency = -1;
			var itemsString = AppsgeyserJSInterface.getHomePageItems();
			var items;
			if (itemsString) {
				try {
					items = JSON.parse(itemsString);
				} catch (e) {
					items = [];
				}
			}
			var found = false;
			for(var i in items){
				if(items[i].url.indexOf(document.location.host) != -1) found = true;
			}
			if(!found) AppsgeyserJSInterface.addToHomePage(document.location.host,document.location.origin);
		}
	} else {
		recentWebsites[host] = {frequency:1, age:0};
	}

	for(var i in recentWebsites){
		recentWebsites[i].age++;
	}

	if(recentWebsites.length > 100){
		recentWebsites.sort(function(a,b){return a.age - b.age});
		recentWebsites = recentWebsites.slice(0,50);
	}

	AppsgeyserJSInterface.setItem('recentWebsites',JSON.stringify(recentWebsites));
}
checkCurrentPage();
