.class public abstract Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;
.super Ljava/lang/Object;
.source "BannerLayoutBehavior.java"

# interfaces
.implements Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract visit(Lcom/wMyWebZone/ads/BottomBannerLayout;)V
.end method

.method public visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V
    .locals 1
    .parameter "acceptor"

    .prologue
    .line 10
    instance-of v0, p1, Lcom/wMyWebZone/ads/BottomBannerLayout;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lcom/wMyWebZone/ads/BottomBannerLayout;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;->visit(Lcom/wMyWebZone/ads/BottomBannerLayout;)V

    .line 13
    :cond_0
    return-void
.end method
