.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;
.super Lcom/wMyWebZone/Utils/SimpleWebViewClient;
.source "StartupScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenBannerWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    .line 70
    invoke-direct {p0, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method private _handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onStartBannerUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$400(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_onExitBannerUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$500(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeBanner()V

    .line 99
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$600(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$600(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v1}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$100(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_clickHandlerUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$600(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->SendClickInfo(Ljava/lang/String;)V

    .line 102
    :cond_0
    const/4 v1, 0x1

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_splashScreenContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$200(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    #getter for: Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;
    invoke-static {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->access$300(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)Lcom/wMyWebZone/Views/BrowserWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/BrowserWebView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->closeOnTimeout(J)V

    .line 79
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->_handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 85
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$FullScreenBannerWebViewClient;->_handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
