.class Lcom/wMyWebZone/ads/AdsLoader$5;
.super Ljava/lang/Thread;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/ads/AdsLoader;->reload()V
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
    .line 156
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v1, v1, Lcom/wMyWebZone/ads/AdsLoader;->_serverClient:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v2, v2, Lcom/wMyWebZone/ads/AdsLoader;->_bannerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->loadHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 159
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iput-object v0, v1, Lcom/wMyWebZone/ads/AdsLoader;->_lastResponseHeaders:Ljava/util/Map;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v1, v1, Lcom/wMyWebZone/ads/AdsLoader;->_headersReceiver:Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v1, v1, Lcom/wMyWebZone/ads/AdsLoader;->_headersReceiver:Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;

    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v2, v2, Lcom/wMyWebZone/ads/AdsLoader;->_lastResponseHeaders:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;->onAdHeadersReceived(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v1, v1, Lcom/wMyWebZone/ads/AdsLoader;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    iget-object v2, p0, Lcom/wMyWebZone/ads/AdsLoader$5;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v2, v2, Lcom/wMyWebZone/ads/AdsLoader;->_bannerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
