.class Lcom/wMyWebZone/ads/AdsLoader$4;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 147
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader$4;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wMyWebZone/ads/AdsLoader$4;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    iget-object v0, v0, Lcom/wMyWebZone/ads/AdsLoader;->_bannerLayout:Lcom/wMyWebZone/ads/BottomBannerLayout;

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->switchToHtmlAd()V

    .line 151
    return-void
.end method
