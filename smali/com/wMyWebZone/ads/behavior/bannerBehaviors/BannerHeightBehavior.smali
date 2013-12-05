.class public Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerHeightBehavior;
.super Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;
.source "BannerHeightBehavior.java"


# instance fields
.field private _height:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;-><init>()V

    .line 8
    iput p1, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerHeightBehavior;->_height:I

    .line 9
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/BottomBannerLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 13
    iget v0, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerHeightBehavior;->_height:I

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->setHeight(I)V

    .line 14
    return-void
.end method
