.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;
.super Ljava/lang/Object;
.source "StartupScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_keepAliveCalled:Z
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$000(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeBanner()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wMyWebZone/MainNavigationActivity;->getApplicationState()Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    new-instance v1, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1$1;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1$1;-><init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$1;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
