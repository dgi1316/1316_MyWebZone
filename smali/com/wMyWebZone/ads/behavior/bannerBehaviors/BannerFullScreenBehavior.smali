.class public Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerFullScreenBehavior;
.super Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;
.source "BannerFullScreenBehavior.java"


# instance fields
.field private _isFullScreen:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isFullScreen"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerFullScreenBehavior;->_isFullScreen:Z

    .line 10
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/BottomBannerLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerFullScreenBehavior;->_isFullScreen:Z

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->setFullscreenMode(Z)V

    .line 15
    return-void
.end method
