.class public Lcom/wMyWebZone/ads/AdsBannerWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdsBannerWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;,
        Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;
    }
.end annotation


# instance fields
.field _onPageFinishedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;

.field _onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageFinishedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageFinishedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;->loadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;->loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOnPageFinishedListener(Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageFinishedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageFinishedListener;

    .line 22
    return-void
.end method

.method public setOnPageStartedListener(Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;

    .line 26
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsBannerWebViewClient;->_onPageStartedlistener:Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/wMyWebZone/ads/AdsBannerWebViewClient$OnPageStartedListener;->loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
