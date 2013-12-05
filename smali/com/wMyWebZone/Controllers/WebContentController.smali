.class public Lcom/wMyWebZone/Controllers/WebContentController;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/ITabContentController;


# static fields
.field private static final APPMAXCACHESIZE:I = 0xc8


# instance fields
.field private _bannerJsInjection:Ljava/lang/String;

.field private _browser:Landroid/webkit/WebView;

.field _mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _parent:Landroid/view/ViewGroup;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabsPadding:I

.field private _webContent:Lcom/wMyWebZone/Views/WebContent;

.field private _widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Model/WidgetEntity;)V
    .locals 2
    .parameter "wdgtInfo"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    .line 37
    iput-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_tabsPadding:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 46
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/Controllers/WebContentController;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/Controllers/WebContentController;)Lcom/wMyWebZone/Views/WebContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    return-object v0
.end method

.method private calculateScale()I
    .locals 14

    .prologue
    .line 280
    const-string v10, "window"

    .line 281
    .local v10, windowServiceContext:Ljava/lang/String;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/wMyWebZone/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 285
    .local v9, windowManager:Landroid/view/WindowManager;
    const/4 v4, 0x0

    .line 286
    .local v4, dBrowserWidth:I
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x6

    if-le v11, v12, :cond_0

    .line 287
    const/16 v4, 0xa

    .line 291
    :goto_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dBrowserWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v11

    add-int/lit8 v0, v11, -0x32

    .line 294
    .local v0, browserHeight:I
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v11

    sub-int v1, v11, v4

    .line 297
    .local v1, browserWidth:I
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v11}, Lcom/wMyWebZone/Model/WidgetEntity;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    int-to-float v2, v11

    .line 298
    .local v2, contentHeight:F
    iget v11, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_tabsPadding:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 299
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v11}, Lcom/wMyWebZone/Model/WidgetEntity;->getWidth()I

    move-result v11

    int-to-float v3, v11

    .line 300
    .local v3, contentWidth:F
    int-to-float v11, v0

    div-float v5, v11, v2

    .line 301
    .local v5, dH:F
    int-to-float v11, v1

    div-float v7, v11, v3

    .line 302
    .local v7, dW:F
    const/high16 v6, 0x42c8

    .line 303
    .local v6, dScale:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v5, v11

    if-lez v11, :cond_1

    const/high16 v11, 0x3f80

    cmpl-float v11, v7, v11

    if-lez v11, :cond_1

    .line 304
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v12, 0x42c8

    mul-float v6, v11, v12

    .line 308
    :goto_1
    float-to-int v8, v6

    .line 309
    .local v8, scale:I
    return v8

    .line 289
    .end local v0           #browserHeight:I
    .end local v1           #browserWidth:I
    .end local v2           #contentHeight:F
    .end local v3           #contentWidth:F
    .end local v5           #dH:F
    .end local v6           #dScale:F
    .end local v7           #dW:F
    .end local v8           #scale:I
    :cond_0
    const/16 v4, 0x14

    goto :goto_0

    .line 306
    .restart local v0       #browserHeight:I
    .restart local v1       #browserWidth:I
    .restart local v2       #contentHeight:F
    .restart local v3       #contentWidth:F
    .restart local v5       #dH:F
    .restart local v6       #dScale:F
    .restart local v7       #dW:F
    :cond_1
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v12, 0x42c8

    mul-float v6, v11, v12

    goto :goto_1
.end method

.method private calculateScale(II)I
    .locals 7
    .parameter "contentHeight"
    .parameter "contentWidth"

    .prologue
    .line 314
    iget-object v5, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 315
    .local v0, browserHeight:I
    iget-object v5, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    .line 317
    .local v1, browserWidth:I
    int-to-float v5, v0

    int-to-float v6, p1

    div-float v2, v5, v6

    .line 318
    .local v2, dH:F
    int-to-float v5, v1

    int-to-float v6, p2

    div-float v4, v5, v6

    .line 319
    .local v4, dW:F
    const/high16 v3, 0x42c8

    .line 320
    .local v3, dScale:F
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float v3, v5, v6

    .line 322
    float-to-int v5, v3

    return v5
.end method

.method private callHiddenWebViewMethod(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 264
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 266
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 267
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation Target Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 50
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v6, p0}, Lcom/wMyWebZone/Views/WebContent;->init(Lcom/wMyWebZone/Controllers/ITabContentController;)V

    .line 52
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    iget-object v7, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v7}, Lcom/wMyWebZone/Model/WidgetEntity;->getLoadingCurtainType()Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Views/WebContent;->setLoadingCurtainType(Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;)V

    .line 53
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v6}, Lcom/wMyWebZone/Views/WebContent;->getBrowser()Landroid/webkit/WebView;

    move-result-object v6

    iput-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    .line 54
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/Controllers/WebContentController$1;

    invoke-direct {v7, p0}, Lcom/wMyWebZone/Controllers/WebContentController$1;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v6}, Lcom/wMyWebZone/Views/WebContent;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v6

    iput-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    .line 73
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 74
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/Utils/BrowserWebViewClient;

    invoke-direct {v7, p0}, Lcom/wMyWebZone/Utils/BrowserWebViewClient;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;

    invoke-direct {v7, p0}, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/Utils/BrowserDownloadListener;

    invoke-direct {v7, p0}, Lcom/wMyWebZone/Utils/BrowserDownloadListener;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 78
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/Utils/JavascriptInterface;

    invoke-direct {v7, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    const-string v8, "AppsgeyserJSInterface"

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v7, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    iget-object v8, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {v7, v8}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;-><init>(Landroid/webkit/WebView;)V

    sget-object v8, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v7, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-static {v6, v7}, Lcom/wMyWebZone/plugins/PluginsLoader;->loadPlugins(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 83
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 84
    .local v5, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 86
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 87
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 88
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 89
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 90
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 93
    const-wide/32 v6, 0xc800000

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 96
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 97
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 99
    .local v2, ctx:Landroid/content/Context;
    const-string v6, "appcache"

    invoke-virtual {v2, v6, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, appCachePath:Ljava/lang/String;
    const-string v6, "databases"

    invoke-virtual {v2, v6, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, databasePath:Ljava/lang/String;
    const-string v6, "geolocation"

    invoke-virtual {v2, v6, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, geolocationDatabasePath:Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 106
    sget-object v6, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 107
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 108
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 109
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6}, Lcom/wMyWebZone/Model/WidgetEntity;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 111
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 112
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 114
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file:///android_asset/content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 115
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/wMyWebZone/Controllers/WebContentController;->calculateScale()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 116
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 124
    :goto_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v6

    invoke-interface {v6}, Lcom/wMyWebZone/Controllers/IWidgetsController;->widgetsCount()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 125
    const/16 v6, 0x3d

    iput v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_tabsPadding:I

    .line 128
    :cond_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v6

    const-string v7, "AppsgeyserPrefs"

    invoke-virtual {v6, v7, v10}, Lcom/wMyWebZone/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, appSettings:Landroid/content/SharedPreferences;
    const-string v6, "bannerJs"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    iget-object v7, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v7}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Views/WebContent;->navigate(Ljava/lang/String;)V

    .line 133
    return-void

    .line 118
    .end local v1           #appSettings:Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 119
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 120
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 121
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addAdditionalProgress()V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/wMyWebZone/Controllers/WebContentController$2;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Controllers/WebContentController$2;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    return-void
.end method

.method public createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    sget-object v2, Lcom/wMyWebZone/Views/TabContent$ContentType;->WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Factory/Factory;->getTabContent(Lcom/wMyWebZone/Views/TabContent$ContentType;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, contentView:Landroid/view/View;
    check-cast v0, Lcom/wMyWebZone/Views/WebContent;

    .end local v0           #contentView:Landroid/view/View;
    iput-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    .line 151
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    .line 153
    invoke-direct {p0}, Lcom/wMyWebZone/Controllers/WebContentController;->init()V

    .line 155
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 185
    return-void
.end method

.method public getBannerInjectionJs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    .line 330
    const-string v5, ""

    .line 331
    .local v5, strRes:Ljava/lang/String;
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6}, Lcom/wMyWebZone/Model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v6, v7}, Lcom/wMyWebZone/Utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 334
    iget-object v6, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6}, Lcom/wMyWebZone/Model/WidgetEntity;->getInjectScripts()Ljava/util/ArrayList;

    move-result-object v4

    .line 335
    .local v4, scripts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;>;"
    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;

    .line 337
    .local v3, script:Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;
    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->getRegex()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, regex:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, pattern:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v7, v8}, Lcom/wMyWebZone/Utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 342
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {p1, v1}, Lcom/wMyWebZone/Utils/WildcardMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v7, v8}, Lcom/wMyWebZone/Utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 348
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pattern:Ljava/lang/String;
    .end local v2           #regex:Ljava/lang/String;
    .end local v3           #script:Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;
    :cond_2
    return-object v5
.end method

.method public getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/WebContent;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v0

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/WebContent;->hideProgressBarPanel()V

    .line 189
    return-void
.end method

.method public onBackKeyDown()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->isCurrentStartupAdView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->showContentView()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->showCloseAppDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/wMyWebZone/Controllers/WebContentController;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 260
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/wMyWebZone/Controllers/WebContentController;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setActiveState(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 233
    if-eqz p1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/WebContent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/wMyWebZone/Controllers/WebContentController;->onResume()V

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v1, p1}, Lcom/wMyWebZone/Views/WebContent;->setActiveState(Z)V

    .line 249
    return-void

    .line 242
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/WebContent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    .restart local v0       #parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 244
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/wMyWebZone/Controllers/WebContentController;->onPause()V

    goto :goto_0
.end method

.method public setBannerInjectionJs(Ljava/lang/String;)V
    .locals 5
    .parameter "jsCode"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 357
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 358
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function(){ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " })()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 361
    :cond_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v2

    const-string v3, "AppsgeyserPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/wMyWebZone/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 362
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bannerJs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    return-void
.end method

.method public setMainNavigationActivity(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 138
    return-void
.end method

.method public setProgressBarState(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 216
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/wMyWebZone/Controllers/WebContentController$3;

    const-string v2, "progressFinishDelay"

    invoke-direct {v1, p0, v2}, Lcom/wMyWebZone/Controllers/WebContentController$3;-><init>(Lcom/wMyWebZone/Controllers/WebContentController;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :cond_0
    return-void
.end method

.method public setScaleForPageWithSize(II)V
    .locals 2
    .parameter "iHeight"
    .parameter "iWidth"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Controllers/WebContentController;->calculateScale(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 369
    return-void
.end method

.method public showConnectionErrorDialog()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public showProgressBarPanel()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/WebContent;->showProgressBarPanel()V

    .line 193
    invoke-virtual {p0}, Lcom/wMyWebZone/Controllers/WebContentController;->addAdditionalProgress()V

    .line 194
    return-void
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 373
    return-void
.end method
