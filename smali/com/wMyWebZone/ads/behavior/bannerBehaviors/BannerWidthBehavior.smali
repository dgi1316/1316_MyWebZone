.class public Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerWidthBehavior;
.super Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;
.source "BannerWidthBehavior.java"


# instance fields
.field private _width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;-><init>()V

    .line 9
    iput p1, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerWidthBehavior;->_width:I

    .line 10
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/BottomBannerLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 14
    iget v0, p0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerWidthBehavior;->_width:I

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->setWidth(I)V

    .line 15
    return-void
.end method
