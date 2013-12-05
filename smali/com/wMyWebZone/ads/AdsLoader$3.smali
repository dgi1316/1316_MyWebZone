.class Lcom/wMyWebZone/ads/AdsLoader$3;
.super Ljava/lang/Thread;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/ads/AdsLoader;->init(Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/ads/AdsLoader;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader$3;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$3;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v0, v0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$3;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v0, v0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/BrowserWebView;->stopLoading()V

    .line 116
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$3;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v0, v0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->hideBanner()V

    .line 117
    return-void
.end method
