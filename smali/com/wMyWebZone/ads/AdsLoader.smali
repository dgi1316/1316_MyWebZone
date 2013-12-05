.class public Lcom/wMyWebZone/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;
.implements Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;
.implements Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;,
        Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;
    }
.end annotation


# instance fields
.field final DEFAULT_HIDE_TIMEOUT:F

.field _activity:Lcom/wMyWebZone/MainNavigationActivity;

.field _bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

.field _bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

.field _bannerUrl:Ljava/lang/String;

.field _browserClient:Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

.field _clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

.field _clickUrl:Ljava/lang/String;

.field _closeBannerThread:Ljava/lang/Thread;

.field _headersReceiver:Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;

.field _lastResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field _loadingFinishedListener:Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;

.field _refreshTimer:Ljava/util/Timer;

.field _serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x476a6000

    iput v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->DEFAULT_HIDE_TIMEOUT:F

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_closeBannerThread:Ljava/lang/Thread;

    .line 62
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    return-void
.end method

.method private _setDefaults()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->showBanner()V

    .line 233
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 234
    const v0, 0x476a6000

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/ads/AdsLoader;->setHideTimeout(F)V

    .line 235
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->applyDefaultSettings()V

    .line 236
    return-void
.end method


# virtual methods
.method public acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V
    .locals 2
    .parameter "visitor"

    .prologue
    .line 213
    instance-of v1, p1, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;

    .line 215
    .local v0, behavior:Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
    invoke-virtual {v0, p0}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;->visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V

    .line 217
    .end local v0           #behavior:Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
    :cond_0
    return-void
.end method

.method public changeClickBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;)V
    .locals 0
    .parameter "clickBehavior"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 184
    return-void
.end method

.method public getBottomBannerLayout()Lcom/wMyWebZone/ads/BottomBannerLayout;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_lastResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 9
    .parameter "bannerUrl"
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 65
    iput-object p2, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 66
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v5}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v5

    iput-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    .line 68
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    const v6, 0x7f0b0007

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/wMyWebZone/Views/BrowserWebView;

    iput-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 69
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v6, Lcom/wMyWebZone/ads/AdsLoader$1;

    invoke-direct {v6, p0}, Lcom/wMyWebZone/ads/AdsLoader$1;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    new-instance v5, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

    invoke-direct {v5}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;-><init>()V

    iput-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_browserClient:Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

    .line 85
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_browserClient:Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

    invoke-virtual {v5, p0}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->setOnPageFinishedListener(Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;)V

    .line 86
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_browserClient:Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

    invoke-virtual {v5, p0}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->setOnPageStartedListener(Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;)V

    .line 87
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v6, Lcom/wMyWebZone/ads/AdsLoader$2;

    invoke-direct {v6, p0}, Lcom/wMyWebZone/ads/AdsLoader$2;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 92
    iget-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v5}, Lcom/wMyWebZone/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 93
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 95
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 96
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 97
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 98
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 99
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 100
    invoke-virtual {p2}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, ctx:Landroid/content/Context;
    const-string v5, "appcache"

    invoke-virtual {v1, v5, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, appCachePath:Ljava/lang/String;
    const-string v5, "databases"

    invoke-virtual {v1, v5, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, databasePath:Ljava/lang/String;
    const-string v5, "geolocation"

    invoke-virtual {v1, v5, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, geolocationDatabasePath:Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerUrl:Ljava/lang/String;

    .line 110
    sget-object v5, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    iput-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 112
    new-instance v5, Lcom/wMyWebZone/ads/AdsLoader$3;

    invoke-direct {v5, p0}, Lcom/wMyWebZone/ads/AdsLoader$3;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    iput-object v5, p0, Lcom/wMyWebZone/ads/AdsLoader;->_closeBannerThread:Ljava/lang/Thread;

    .line 119
    return-void
.end method

.method public loadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/wMyWebZone/ads/AdsLoader;->_setDefaults()V

    .line 224
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_loadingFinishedListener:Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_loadingFinishedListener:Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;

    invoke-interface {v0}, Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;->onAdLoadFinished()V

    .line 229
    :cond_0
    return-void
.end method

.method public loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v2, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    if-ne v1, v2, :cond_2

    .line 242
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v1}, Lcom/wMyWebZone/ads/BottomBannerLayout;->hideBanner()V

    .line 243
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 251
    const-string v1, "&nostat=1"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->SendClickInfo(Ljava/lang/String;)V

    .line 260
    :cond_1
    const/4 v1, 0x0

    .line 263
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v1

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v2, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    if-ne v1, v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/AdsLoader;->reload()V

    goto :goto_0

    .line 263
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public reload()V
    .locals 4

    .prologue
    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v3, Lcom/wMyWebZone/ads/AdsLoader$4;

    invoke-direct {v3, p0}, Lcom/wMyWebZone/ads/AdsLoader$4;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    iget-object v3, p0, Lcom/wMyWebZone/ads/AdsLoader;->_browserClient:Lcom/wMyWebZone/ads/AdsBannerWebViewClient;

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 156
    new-instance v0, Lcom/wMyWebZone/ads/AdsLoader$5;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/ads/AdsLoader$5;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    .line 171
    .local v0, bannerThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #bannerThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AdsLoader"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdsLoadingFinishedListener(Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_loadingFinishedListener:Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;

    .line 143
    return-void
.end method

.method public setBottomBannerLayout(Lcom/wMyWebZone/ads/BottomBannerLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    .line 131
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "clickUrl"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_clickUrl:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setHeaderReceiver(Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_headersReceiver:Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;

    .line 139
    return-void
.end method

.method public setHideTimeout(F)V
    .locals 5
    .parameter "seconds"

    .prologue
    .line 203
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 204
    const p1, 0x476a6000

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/TransparentPanel;

    .line 206
    .local v0, panel:Lcom/wMyWebZone/Views/TransparentPanel;
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_closeBannerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/TransparentPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader;->_closeBannerThread:Ljava/lang/Thread;

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/wMyWebZone/Views/TransparentPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method

.method public setRefreshTimeout(F)V
    .locals 6
    .parameter "seconds"

    .prologue
    .line 187
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 191
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    .line 193
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/wMyWebZone/ads/AdsLoader$6;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/ads/AdsLoader$6;-><init>(Lcom/wMyWebZone/ads/AdsLoader;)V

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
