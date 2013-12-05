.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;
.super Ljava/lang/Object;
.source "StartupScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->showAdMobFSBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

.field final synthetic val$adUnitID:Ljava/lang/String;

.field final synthetic val$birthday:Ljava/lang/String;

.field final synthetic val$genderString:Ljava/lang/String;

.field final synthetic val$keywords:Ljava/lang/String;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longtitude:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    iput-object p2, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$adUnitID:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$keywords:Ljava/lang/String;

    iput-object p4, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$genderString:Ljava/lang/String;

    iput-object p5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$birthday:Ljava/lang/String;

    iput-object p6, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$latitude:Ljava/lang/String;

    iput-object p7, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$longtitude:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Utils/ProgressDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;->showProgressDialog()V

    .line 285
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getAdMobFSBannerController()Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;

    move-result-object v0

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$adUnitID:Ljava/lang/String;

    iget-object v2, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$keywords:Ljava/lang/String;

    iget-object v3, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$genderString:Ljava/lang/String;

    iget-object v4, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$birthday:Ljava/lang/String;

    iget-object v5, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$latitude:Ljava/lang/String;

    iget-object v6, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->val$longtitude:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/wMyWebZone/FullscreenBanner/AdMobFSBannerController;->loadAdMobFSBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$7;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->showContentView()V

    .line 287
    return-void
.end method
