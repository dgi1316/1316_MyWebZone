.class public Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;
.super Ljava/lang/Object;
.source "StartupScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;
    }
.end annotation


# static fields
.field private static final LOADING_TIMEOUT:J = 0x1388L

.field public static final SPLASH_SCREEN_TIMEOUT:J = 0x7d0L

.field private static final STAY_CALL_TIMEOUT:J = 0xc8L


# instance fields
.field private _browser:Lcom/wMyWebZone/Views/BrowserWebView;

.field private _clickHandlerUrl:Ljava/lang/String;

.field private _closeRunnable:Ljava/lang/Runnable;

.field private _handler:Landroid/os/Handler;

.field private _keepAliveCalled:Z

.field private _mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _onExitBannerUrl:Ljava/lang/String;

.field private _onStartBannerUrl:Ljava/lang/String;

.field private _progressDialog:Landroid/app/ProgressDialog;

.field private _splashScreenContainer:Landroid/view/ViewGroup;

.field private _startupScreenViewContainer:Landroid/view/ViewGroup;

.field loadingFinished:Z

.field redirect:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 4
    .parameter "container"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_handler:Landroid/os/Handler;

    .line 39
    iput-boolean v3, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_keepAliveCalled:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onStartBannerUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onExitBannerUrl:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->loadingFinished:Z

    .line 46
    iput-boolean v3, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->redirect:Z

    .line 48
    new-instance v0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_closeRunnable:Ljava/lang/Runnable;

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p2, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 114
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_startupScreenViewContainer:Landroid/view/ViewGroup;

    .line 115
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_startupScreenViewContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_splashScreenContainer:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_startupScreenViewContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/BrowserWebView;

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 120
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v1, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;

    iget-object v2, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v1, p0, v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    invoke-direct {p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_setupWebView()V

    .line 125
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v1, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    sget-object v2, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wMyWebZone/Views/BrowserWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getOnStartFullScreenBannerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onStartBannerUrl:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getOnExitFullScreenBannerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onExitBannerUrl:Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method private _setupWebView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 149
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v6, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;

    iget-object v7, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v6, p0, v7}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 151
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v6, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$2;

    invoke-direct {v6, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$2;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 158
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setScrollBarStyle(I)V

    .line 160
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    .local v1, ctx:Landroid/content/Context;
    const-string v5, "appcache"

    invoke-virtual {v1, v5, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, appCachePath:Ljava/lang/String;
    const-string v5, "databases"

    invoke-virtual {v1, v5, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, databasePath:Ljava/lang/String;
    const-string v5, "geolocation"

    invoke-virtual {v1, v5, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, geolocationDatabasePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v5}, Lcom/wMyWebZone/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 166
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 172
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 173
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 174
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 175
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 176
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_keepAliveCalled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_splashScreenContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/Views/BrowserWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onStartBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onExitBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeBanner()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$6;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$6;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    :cond_0
    return-void
.end method

.method public closeOnTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method protected closeSplashScreen()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    return-void
.end method

.method public dismissAdMobFSOnTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v1}, Lcom/wMyWebZone/MainNavigationActivity;->getAdMobFSBannerController()Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    move-result-object v0

    .line 272
    .local v0, adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1, p2}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->dismissAdMobFSOnTimeout(J)V

    .line 277
    .end local v0           #adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;
    :cond_0
    return-void
.end method

.method public loadBanner()V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    .line 212
    .local v0, applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v2, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v1}, Lcom/wMyWebZone/MainNavigationActivity;->showStartupScreenView()V

    .line 231
    :cond_0
    :goto_0
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeOnTimeout(J)V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_keepAliveCalled:Z

    .line 236
    return-void

    .line 222
    :cond_1
    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v2, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$5;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$5;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "clickUrl"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public showAdMobFSBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "adUnitID"
    .parameter "keywords"
    .parameter "genderString"
    .parameter "birthday"
    .parameter "latitude"
    .parameter "longtitude"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 281
    iget-object v8, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    :cond_0
    return-void
.end method

.method public showSplashScreen(Ljava/lang/String;)V
    .locals 7
    .parameter "imagePath"

    .prologue
    .line 180
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_startupScreenViewContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 183
    .local v3, splashScreenImageView:Landroid/widget/ImageView;
    :try_start_0
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 185
    .local v1, imageStream:Ljava/io/InputStream;
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 187
    .local v4, width:I
    invoke-static {v1, v4}, Lcom/wMyWebZone/Utils/ImageReader;->decodeFile(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    .local v2, splashBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/Views/BrowserWebView;->setVisibility(I)V

    .line 190
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_splashScreenContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_splashScreenContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->bringToFront()V

    .line 193
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v6, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$3;

    invoke-direct {v6, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$3;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V

    invoke-virtual {v5, v6}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1           #imageStream:Ljava/io/InputStream;
    .end local v2           #splashBitmap:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stayAlive()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_keepAliveCalled:Z

    .line 240
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    return-void
.end method
