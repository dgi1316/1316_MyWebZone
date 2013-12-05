.class public Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;
.super Lcom/wMyWebZone/Utils/BaseSecureJsInterface;
.source "FullscreenBannerJsInterface.java"


# static fields
.field public static JS_INTERFACE_NAME:Ljava/lang/String; = null

.field private static final LOADING_SCREEN_DEFAULT_TIMEOUT:I = 0x1388


# instance fields
.field private _startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "AppsgeyserBanner"

    sput-object v0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wMyWebZone/Utils/BaseSecureJsInterface;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeBanner()V

    .line 49
    return-void
.end method

.method public dismissAdMobOnTimeout(Ljava/lang/String;)V
    .locals 5
    .parameter "receivedTimeout"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 30
    const-wide/16 v1, 0x0

    .line 32
    .local v1, timeout:J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v3, v1, v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->dismissAdMobFSOnTimeout(J)V

    .line 44
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x1388

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    sget-object v3, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "clickUrl"
    .parameter "hashCode"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p2}, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v0, p1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->setClickUrl(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public showAdMobFullScreenBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "adUnitID"
    .parameter "keywords"
    .parameter "genderString"
    .parameter "birthday"
    .parameter "latitude"
    .parameter "longtitude"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->showAdMobFSBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public stayAlive()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/FullscreenBannerJsInterface;->_startupController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->stayAlive()V

    .line 21
    return-void
.end method
