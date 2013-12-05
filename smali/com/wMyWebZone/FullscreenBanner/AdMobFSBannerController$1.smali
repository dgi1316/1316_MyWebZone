.class Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;
.super Ljava/lang/Object;
.source "AdMobFSBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->access$000(Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->access$000(Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Utils/ProgressDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->dismissProgressDialog()V

    .line 44
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->setTimeoutExpired(Z)V

    .line 52
    :cond_0
    return-void
.end method
