.class public Lcom/wMyWebZone/Utils/BrowserWebViewClient;
.super Lcom/wMyWebZone/Utils/SimpleWebViewClient;
.source "BrowserWebViewClient.java"


# instance fields
.field private _isRedirectEnabled:Z

.field private _mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _webContentController:Lcom/wMyWebZone/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;)V
    .locals 2
    .parameter "webContentController"

    .prologue
    .line 35
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    .line 36
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 37
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    .line 39
    invoke-static {}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->getInstance()Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wMyWebZone/Controllers/WebContentController;->getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->addUrl(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getIsRedirectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    .line 43
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    iput-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_activity:Landroid/app/Activity;

    .line 44
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, currentUrl:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v4, p2}, Lcom/wMyWebZone/Controllers/WebContentController;->getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, content:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:(function(){ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " })()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    const-string v4, "https://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v4}, Lcom/wMyWebZone/Controllers/WebContentController;->getBannerInjectionJs()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, bannerJs:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:(function(){ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " })()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    .end local v0           #bannerJs:Ljava/lang/String;
    .end local v1           #content:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 61
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    iget-boolean v4, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    if-eqz v4, :cond_1

    .line 65
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v4

    invoke-interface {v4}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/Controllers/WebContentController;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v3

    .line 66
    .local v3, navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;
    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {v3, p1, p2}, Lcom/wMyWebZone/Model/NavigationWidget;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    .end local v3           #navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 75
    iget-boolean v6, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    if-nez v6, :cond_1

    invoke-static {}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->getInstance()Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->isDefaultUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 79
    iget-object v6, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v6}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 80
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 81
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 83
    iget-object v6, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v6, v1}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "ActivityNotFoundException"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPageStarted() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 92
    iget-object v6, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v6}, Lcom/wMyWebZone/Controllers/WebContentController;->showProgressBarPanel()V

    .line 94
    iget-object v6, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v6}, Lcom/wMyWebZone/Controllers/WebContentController;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v2

    .line 95
    .local v2, navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;
    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2, p1, p2}, Lcom/wMyWebZone/Model/NavigationWidget;->onPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string v6, "file:///android_asset/content"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 100
    .local v5, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 101
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 102
    invoke-virtual {p1, v8}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 103
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 107
    .end local v5           #settings:Landroid/webkit/WebSettings;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 115
    .local v0, navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;
    iget-boolean v2, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_isRedirectEnabled:Z

    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v2

    invoke-interface {v2}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v0

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    :cond_1
    const/4 v2, -0x8

    if-ne p2, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->showConnectionErrorDialog()V

    .line 124
    :cond_2
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 143
    const/4 v15, 0x0

    .line 144
    .local v15, username:Ljava/lang/String;
    const/4 v13, 0x0

    .line 146
    .local v13, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v14

    .line 148
    .local v14, reuseHttpAuthUsernamePassword:Z
    if-eqz v14, :cond_0

    if-eqz p1, :cond_0

    .line 149
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, credentials:[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v3, v12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 151
    const/4 v3, 0x0

    aget-object v15, v12, v3

    .line 152
    const/4 v3, 0x1

    aget-object v13, v12, v3

    .line 156
    .end local v12           #credentials:[Ljava/lang/String;
    :cond_0
    if-eqz v15, :cond_1

    if-eqz v13, :cond_1

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v13}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wMyWebZone/Utils/BrowserWebViewClient;->_webContentController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v4}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Lcom/wMyWebZone/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 129
    return-void
.end method
