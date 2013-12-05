.class public Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;
.super Ljava/lang/Object;
.source "AdMobFSBannerController.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _active:Z

.field private _dismissAdMobFSRunnable:Ljava/lang/Runnable;

.field private _handler:Landroid/os/Handler;

.field private _interstitial:Lcom/google/ads/InterstitialAd;

.field private _mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _timeoutExpired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 2
    .parameter "mainActivity"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    .line 22
    iput-boolean v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_active:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_handler:Landroid/os/Handler;

    .line 24
    iput-boolean v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_timeoutExpired:Z

    .line 38
    new-instance v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;-><init>(Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;)V

    iput-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_dismissAdMobFSRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;)Lcom/wMyWebZone/MainNavigationActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    return-object v0
.end method


# virtual methods
.method public dismissAdMobFSOnTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_dismissAdMobFSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_active:Z

    return v0
.end method

.method public isTimeoutExpired()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_timeoutExpired:Z

    return v0
.end method

.method public loadAdMobFSBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "adUnitID"
    .parameter "keywords"
    .parameter "genderString"
    .parameter "birthday"
    .parameter "latitude"
    .parameter "longtitude"

    .prologue
    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->setTimeoutExpired(Z)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string p1, ""

    .line 113
    :cond_0
    new-instance v1, Lcom/google/ads/InterstitialAd;

    iget-object v2, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v1, v2, p1}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    .line 116
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, p0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 118
    new-instance v0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;
    new-instance v7, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-direct {v7, v1, v0}, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;-><init>(Lcom/google/ads/AdRequest;Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V

    .line 122
    .local v7, parameterizedRequest:Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v7}, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->getRequest()Lcom/google/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 123
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 57
    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    .line 60
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .parameter "ad"
    .parameter "errorCode"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Utils/ProgressDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->dismissProgressDialog()V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    sget-object v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/ads/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    .line 71
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 76
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 81
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 85
    sget-object v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->TAG:Ljava/lang/String;

    const-string v1, "Received ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Utils/ProgressDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->dismissProgressDialog()V

    .line 88
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->setActive(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->isTimeoutExpired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->TAG:Ljava/lang/String;

    const-string v1, "Received ad, but timeout expired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_active:Z

    .line 131
    return-void
.end method

.method public setTimeoutExpired(Z)V
    .locals 0
    .parameter "timeoutExpired"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_timeoutExpired:Z

    .line 32
    return-void
.end method
