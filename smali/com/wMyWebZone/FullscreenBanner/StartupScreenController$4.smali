.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;
.super Ljava/lang/Object;
.source "StartupScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->loadBanner()V
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
    .line 214
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$300(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/Views/BrowserWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$4;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onStartBannerUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$400(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 218
    return-void
.end method
