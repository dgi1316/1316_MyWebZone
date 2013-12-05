.class public Lcom/wMyWebZone/Utils/BannerJavascriptInterface;
.super Lcom/wMyWebZone/Utils/BaseSecureJsInterface;
.source "BannerJavascriptInterface.java"


# static fields
.field public static JS_INTERFACE_NAME:Ljava/lang/String;


# instance fields
.field private _adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

.field private _androidId:Ljava/lang/String;

.field private _layout:Lcom/wMyWebZone/ads/BottomBannerLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "AppsgeyserBanner"

    sput-object v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/ads/BottomBannerLayout;Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 2
    .parameter "layout"
    .parameter "loader"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/wMyWebZone/Utils/BaseSecureJsInterface;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_layout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    .line 20
    iput-object p2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    .line 22
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$1;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$1;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)V

    .line 28
    .local v0, androidIdRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_androidId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)Lcom/wMyWebZone/ads/BottomBannerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_layout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)Lcom/wMyWebZone/ads/AdsLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_adsLoader:Lcom/wMyWebZone/ads/AdsLoader;

    return-object v0
.end method


# virtual methods
.method public addJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "jsCode"
    .parameter "hash"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v0, injectRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$2;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$2;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)V

    .line 39
    .local v0, closeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public getAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hash"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_androidId:Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public reload(Ljava/lang/String;)V
    .locals 2
    .parameter "hash"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$6;

    invoke-direct {v0, p0, p1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$6;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;)V

    .line 100
    .local v0, clickUrlRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "hash"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, clickUrlRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public showAdMobAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "publisherId"
    .parameter "keywords"
    .parameter "genderString"
    .parameter "birthday"
    .parameter "latitude"
    .parameter "longtitude"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;-><init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, switchToAdMobRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
