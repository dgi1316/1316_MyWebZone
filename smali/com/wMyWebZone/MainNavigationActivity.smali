.class public Lcom/wMyWebZone/MainNavigationActivity;
.super Landroid/app/Activity;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;
.implements Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;
.implements Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;,
        Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    }
.end annotation


# static fields
.field public static final ADS_SLEEP_PARAM:Ljava/lang/String; = "adsSleep"

.field public static final APPMODE_PARAM:Ljava/lang/String; = "applicationMode"

.field public static final BANNER_JS_PARAM:Ljava/lang/String; = "bannerJs"

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "AppsgeyserPrefs"

.field private static volatile applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;


# instance fields
.field _activity:Lcom/wMyWebZone/MainNavigationActivity;

.field _adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

.field _config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field _connectionErrorDialog:Landroid/app/Dialog;

.field private _currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

.field _serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

.field _startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

.field _tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

.field private adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

.field private bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

.field mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mStartupScreenViewContainer:Landroid/widget/FrameLayout;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideo:Landroid/widget/VideoView;

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 118
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 83
    iput-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    .line 103
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    return-void
.end method

.method private _applyBehaviors(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, behaviors:Ljava/util/List;,"Ljava/util/List<Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;

    .line 823
    .local v1, visitor:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-virtual {p0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V

    .line 824
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2, v1}, Lcom/wMyWebZone/ads/AdsLoader;->acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V

    .line 825
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v2, v1}, Lcom/wMyWebZone/ads/BottomBannerLayout;->acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V

    goto :goto_0

    .line 827
    .end local v1           #visitor:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :cond_0
    return-void
.end method

.method private _init()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 214
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wMyWebZone/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/wMyWebZone/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 216
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 217
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 218
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 220
    new-instance v2, Lcom/wMyWebZone/Views/AboutDialog;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    const/high16 v4, 0x7f09

    invoke-direct {v2, v3, v4}, Lcom/wMyWebZone/Views/AboutDialog;-><init>(Lcom/wMyWebZone/MainNavigationActivity;I)V

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    .line 223
    new-instance v2, Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {v2}, Lcom/wMyWebZone/ads/AdsLoader;-><init>()V

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    .line 224
    new-instance v2, Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-direct {v2}, Lcom/wMyWebZone/ads/BottomBannerLayout;-><init>()V

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    .line 225
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2, p0, v3}, Lcom/wMyWebZone/ads/BottomBannerLayout;->init(Landroid/app/Activity;Lcom/wMyWebZone/ads/AdsLoader;)V

    .line 226
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getBannerPosition()Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/ads/BottomBannerLayout;->setPosition(Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;)V

    .line 227
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-virtual {v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->GetBannerUrl()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, bannerUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2, v0, p0}, Lcom/wMyWebZone/ads/AdsLoader;->init(Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 229
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2, p0}, Lcom/wMyWebZone/ads/AdsLoader;->setAdsLoadingFinishedListener(Lcom/wMyWebZone/ads/AdsLoader$AdsLoadingFinishedListener;)V

    .line 230
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2, p0}, Lcom/wMyWebZone/ads/AdsLoader;->setHeaderReceiver(Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;)V

    .line 231
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/ads/AdsLoader;->setBottomBannerLayout(Lcom/wMyWebZone/ads/BottomBannerLayout;)V

    .line 232
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2}, Lcom/wMyWebZone/ads/AdsLoader;->reload()V

    .line 233
    return-void
.end method

.method static synthetic access$002(Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-object p0, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    return-object p0
.end method

.method static synthetic access$102(Lcom/wMyWebZone/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method private callHiddenWebViewMethod(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "name"
    .parameter "browser"

    .prologue
    .line 430
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 431
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 442
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
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

    .line 436
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 437
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

    .line 439
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 440
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

.method public static getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    return-object v0
.end method


# virtual methods
.method public acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 831
    invoke-interface {p1, p0}, Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;->visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V

    .line 832
    return-void
.end method

.method public getAdMobFSBannerController()Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    return-object v0
.end method

.method public getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 630
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 631
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    .line 633
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method public invoke(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "origin"
    .parameter "allow"
    .parameter "remember"

    .prologue
    .line 626
    return-void
.end method

.method public isCurrentStartupAdView()Z
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPreviousApplicationMode()V
    .locals 4

    .prologue
    .line 294
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/wMyWebZone/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "applicationMode"

    sget-object v3, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v3}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, mode:I
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 297
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 302
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Views/AboutDialog;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V

    .line 304
    :cond_1
    return-void

    .line 299
    :cond_2
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 300
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 319
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 324
    .local v0, result:Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 325
    iput-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 322
    .end local v0           #result:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onAdHeadersReceived(Ljava/util/Map;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 796
    new-instance v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;

    invoke-direct {v0}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;-><init>()V

    .line 798
    .local v0, factory:Lcom/wMyWebZone/ads/behavior/BehaviorFactory;
    invoke-virtual {v0, p1}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->createPreloadBehaviors(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 799
    .local v2, preloadBehaviors:Ljava/util/List;,"Ljava/util/List<Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;>;"
    invoke-direct {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->_applyBehaviors(Ljava/util/List;)V

    .line 802
    const-string v8, "AppsgeyserPrefs"

    invoke-virtual {p0, v8, v7}, Lcom/wMyWebZone/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 803
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v8, "adsSleep"

    const-wide/16 v9, 0x0

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 804
    .local v5, sleepMsecs:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 805
    .local v1, now:Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 806
    .local v4, sleepDate:Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v8

    if-gez v8, :cond_0

    .line 810
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public onAdLoadFinished()V
    .locals 3

    .prologue
    .line 815
    new-instance v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;

    invoke-direct {v0}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;-><init>()V

    .line 817
    .local v0, factory:Lcom/wMyWebZone/ads/behavior/BehaviorFactory;
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v2}, Lcom/wMyWebZone/ads/AdsLoader;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->createPostloadBehaviors(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 818
    .local v1, postloadBehaviors:Ljava/util/List;,"Ljava/util/List<Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;>;"
    invoke-direct {p0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->_applyBehaviors(Ljava/util/List;)V

    .line 819
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 696
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 697
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->onHideCustomView()V

    .line 698
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 580
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v3, 0x100

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->requestWindowFeature(I)Z

    .line 153
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 154
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->setContentView(I)V

    .line 156
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    sput-object v2, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    .line 158
    iput-object p0, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 159
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Factory/Factory;->Init(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 161
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    move-result-object v0

    .line 164
    .local v0, manager:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0, v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 166
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    .line 168
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-virtual {v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->SendAfterInstallInfo()V

    .line 170
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-virtual {v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->SendUsageInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->loadPreviousApplicationMode()V

    .line 177
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-virtual {v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->GetApplicationMode()V

    .line 179
    const v2, 0x7f0b0012

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    .line 180
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 182
    const v2, 0x7f0b0013

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 183
    const v2, 0x7f0b0014

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    .line 185
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, p0}, Lcom/wMyWebZone/Factory/Factory;->getStartupScreenController(Landroid/view/ViewGroup;Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    .line 186
    new-instance v2, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    .line 188
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isSplashScreenEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getSplashScreenImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->showSplashScreen(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getFullscreenBannerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    sput-object v2, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    .line 195
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->loadBanner()V

    .line 205
    :goto_1
    invoke-direct {p0}, Lcom/wMyWebZone/MainNavigationActivity;->_init()V

    .line 207
    new-instance v1, Lcom/wMyWebZone/pull/PullServerController;

    invoke-direct {v1}, Lcom/wMyWebZone/pull/PullServerController;-><init>()V

    .line 208
    .local v1, receiver:Lcom/wMyWebZone/pull/PullServerController;
    invoke-virtual {v1, p0}, Lcom/wMyWebZone/pull/PullServerController;->reScheduleNotification(Landroid/content/Context;)V

    .line 209
    return-void

    .line 197
    .end local v1           #receiver:Lcom/wMyWebZone/pull/PullServerController;
    :cond_1
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isSplashScreenEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeOnTimeout(J)V

    goto :goto_1

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeBanner()V

    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 494
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 495
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 451
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 454
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 663
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 673
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 676
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 478
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->onHideCustomView()V

    .line 487
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabsController;->onBackKeyDown()V

    goto :goto_0

    .line 487
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 459
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/MainNavigationActivity;->setIntent(Landroid/content/Intent;)V

    .line 419
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 420
    .local v1, url:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v2}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 422
    .local v0, currentView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 423
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 426
    .end local v0           #currentView:Landroid/webkit/WebView;
    .end local v1           #url:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 534
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 537
    :pswitch_0
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->showCloseAppDialog()V

    goto :goto_0

    .line 541
    :pswitch_1
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 544
    :pswitch_2
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    invoke-virtual {v5}, Lcom/wMyWebZone/Views/AboutDialog;->showDialog()V

    goto :goto_0

    .line 547
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v7}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 549
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5, v1}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 552
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, sharingIntent:Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v5

    sget-object v6, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne v5, v6, :cond_0

    .line 557
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v5

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, bodyText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, subjectText:Ljava/lang/String;
    :goto_1
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v5, "Share using"

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 560
    .end local v0           #bodyText:Ljava/lang/String;
    .end local v3           #subjectText:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAffiliateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .restart local v0       #bodyText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #subjectText:Ljava/lang/String;
    goto :goto_1

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b003b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 334
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/wMyWebZone/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 335
    .local v0, kgMgr:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 336
    .local v1, showing:Z
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/wMyWebZone/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 338
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->pauseBrowser()V

    .line 342
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->pauseBrowser()V

    .line 346
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0b003c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0b003f

    .line 500
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    sget-object v4, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    if-ne v3, v4, :cond_1

    .line 501
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 502
    .local v2, itemShare:Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    :goto_0
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getIsAboutScreenEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 511
    .local v1, itemAbout:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 513
    .end local v1           #itemAbout:Landroid/view/MenuItem;
    :cond_0
    const v3, 0x7f0b003d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 514
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getRateItemVisibility()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 516
    const v3, 0x7f0b003b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 517
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getShowRefreshMenuItem()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    const v3, 0x7f0b003e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 520
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getShowExitMenuItem()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 522
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 523
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getShowShareMenuItem()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 526
    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getShowAboutMenuItem()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    return v7

    .line 505
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v2           #itemShare:Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 506
    .restart local v2       #itemShare:Landroid/view/MenuItem;
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 368
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 369
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 371
    .local v4, url:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 372
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 377
    .end local v4           #url:Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v5

    if-nez v5, :cond_4

    .line 378
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPushAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 379
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->updatePushAccount()V

    .line 394
    :cond_1
    :goto_0
    const v5, 0x7f0b0007

    invoke-virtual {p0, v5}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/BrowserWebView;

    .line 395
    .local v0, bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;
    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Lcom/wMyWebZone/Views/BrowserWebView;->resumeTimers()V

    .line 397
    const-string v5, "onResume"

    invoke-direct {p0, v5, v0}, Lcom/wMyWebZone/MainNavigationActivity;->callHiddenWebViewMethod(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 399
    :cond_2
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    if-eqz v5, :cond_3

    .line 400
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabsController;->onResume()V

    .line 402
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 404
    .end local v0           #bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;
    :cond_4
    return-void

    .line 384
    :cond_5
    invoke-static {p0}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, regId:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 386
    new-instance v2, Lcom/wMyWebZone/Server/PushServerClient;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/Server/PushServerClient;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 387
    .local v2, pushClient:Lcom/wMyWebZone/Server/PushServerClient;
    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Server/PushServerClient;->sendRegisteredId(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v2           #pushClient:Lcom/wMyWebZone/Server/PushServerClient;
    :cond_6
    iget-object v5, p0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPushAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/wMyWebZone/MainNavigationActivity;->registerC2DM(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 639
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 640
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 660
    :goto_0
    return-void

    .line 643
    :cond_0
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 644
    check-cast v0, Landroid/widget/FrameLayout;

    .line 645
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    .line 647
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 648
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 652
    .end local v0           #frame:Landroid/widget/FrameLayout;
    :cond_1
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 654
    iput-object p2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 656
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 658
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 659
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const-string p2, "*/*"

    .line 313
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "File Chooser"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 315
    return-void
.end method

.method public pauseBrowser()V
    .locals 3

    .prologue
    .line 349
    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/BrowserWebView;

    .line 350
    .local v0, bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;
    if-eqz v0, :cond_1

    .line 351
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    invoke-virtual {v1}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/wMyWebZone/Views/BrowserWebView;->pauseTimers()V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_adMobFSBannerController:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->setActive(Z)V

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabsController;->onPause()V

    .line 361
    :cond_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 362
    return-void
.end method

.method public registerC2DM(Ljava/lang/String;)V
    .locals 0
    .parameter "pushAccount"

    .prologue
    .line 412
    invoke-static {p0, p1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 280
    sget-object v2, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    if-eq v2, p1, :cond_0

    .line 281
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/wMyWebZone/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 282
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "applicationMode"

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v3}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 288
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->mAboutDialog:Lcom/wMyWebZone/Views/AboutDialog;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity;->_currentMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Views/AboutDialog;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V

    .line 291
    :cond_1
    return-void
.end method

.method public setApplicationState(Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;)V
    .locals 0
    .parameter "applicationState"

    .prologue
    .line 139
    sput-object p1, Lcom/wMyWebZone/MainNavigationActivity;->applicationState:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    .line 140
    return-void
.end method

.method public setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "webView"
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    return-void
.end method

.method public setMStartupScreenViewContainer(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter "mStartupScreenViewContainer"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    .line 145
    return-void
.end method

.method public showCloseAppDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v1, "Do you really want to exit application?"

    new-instance v2, Lcom/wMyWebZone/MainNavigationActivity$1;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/MainNavigationActivity$1;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-static {v3, v1, p0, v2, v3}, Lcom/wMyWebZone/Utils/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 254
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 255
    return-void
.end method

.method public showConnectionErrorDialog()V
    .locals 4

    .prologue
    .line 593
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 621
    :goto_0
    return-void

    .line 595
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    const/high16 v3, 0x7f09

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 596
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 597
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 598
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 600
    .local v0, btn:Landroid/widget/Button;
    const-string v2, "Try Again"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    new-instance v2, Lcom/wMyWebZone/MainNavigationActivity$3;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/MainNavigationActivity$3;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const/4 v0, 0x0

    .line 610
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 611
    .restart local v0       #btn:Landroid/widget/Button;
    const-string v2, "Exit"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 612
    new-instance v2, Lcom/wMyWebZone/MainNavigationActivity$4;

    invoke-direct {v2, p0}, Lcom/wMyWebZone/MainNavigationActivity$4;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 620
    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showContentView()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 685
    return-void
.end method

.method public showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .parameter "webView"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"
    .parameter "title"
    .parameter "name"
    .parameter "password"
    .parameter "focusId"

    .prologue
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getHttpAccessLogin()Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, login:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getHttpAccessPassword()Ljava/lang/String;

    move-result-object v7

    .local v7, pass:Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 717
    invoke-virtual/range {v2 .. v7}, Lcom/wMyWebZone/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .end local v6           #login:Ljava/lang/String;
    .end local v7           #pass:Ljava/lang/String;
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 723
    .local v16, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 724
    .local v10, v:Landroid/view/View;
    if-eqz p6, :cond_1

    .line 725
    const v2, 0x7f0b000f

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_1
    if-eqz p7, :cond_2

    .line 728
    const v2, 0x7f0b0011

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :cond_2
    move-object/from16 v17, p5

    .line 732
    .local v17, titleText:Ljava/lang/String;
    if-nez v17, :cond_3

    .line 733
    const v2, 0x7f080030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/wMyWebZone/MainNavigationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s1"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s2"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 736
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 737
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Sign in"

    new-instance v8, Lcom/wMyWebZone/MainNavigationActivity$7;

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/wMyWebZone/MainNavigationActivity$7;-><init>(Lcom/wMyWebZone/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/wMyWebZone/MainNavigationActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$6;-><init>(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wMyWebZone/MainNavigationActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$5;-><init>(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    .line 763
    .local v15, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 764
    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 765
    if-eqz p8, :cond_4

    .line 766
    move/from16 v0, p8

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 771
    :goto_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 769
    :cond_4
    const v2, 0x7f0b000f

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    const-string v2, "ok"

    new-instance v3, Lcom/wMyWebZone/MainNavigationActivity$2;

    invoke-direct {v3, p0}, Lcom/wMyWebZone/MainNavigationActivity$2;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 266
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 267
    return-void
.end method

.method public showPausedContentInfo()V
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    if-nez v1, :cond_0

    .line 271
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 273
    :cond_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v0

    .line 274
    .local v0, widgetCtrlr:Lcom/wMyWebZone/Controllers/IWidgetsController;
    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/IWidgetsController;->removeAll()V

    .line 275
    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    invoke-static {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->createDefaultWidget(Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;)Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wMyWebZone/Controllers/IWidgetsController;->addWidget(Lcom/wMyWebZone/Model/WidgetEntity;)V

    .line 276
    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/wMyWebZone/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 277
    return-void
.end method

.method public showStartupScreenView()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity;->mStartupScreenViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 692
    return-void
.end method

.method public updatePushAccount()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/wMyWebZone/Server/PushServerClient;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Server/PushServerClient;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 408
    .local v0, pushClient:Lcom/wMyWebZone/Server/PushServerClient;
    invoke-virtual {v0}, Lcom/wMyWebZone/Server/PushServerClient;->loadPushAccount()V

    .line 409
    return-void
.end method
