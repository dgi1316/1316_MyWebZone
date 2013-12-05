.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$3;
.super Ljava/lang/Object;
.source "StartupScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->showSplashScreen(Ljava/lang/String;)V
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
    .line 194
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$3;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$3;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->showStartupScreenView()V

    .line 199
    return-void
.end method
