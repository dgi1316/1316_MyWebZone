.class Lcom/wMyWebZone/ads/AdsLoader$6;
.super Ljava/util/TimerTask;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/ads/AdsLoader;->setRefreshTimeout(F)V
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
    .line 193
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader$6;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$6;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/AdsLoader;->reload()V

    .line 197
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$6;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v0, v0, Lcom/wMyWebZone/ads/AdsLoader;->_refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 198
    return-void
.end method
