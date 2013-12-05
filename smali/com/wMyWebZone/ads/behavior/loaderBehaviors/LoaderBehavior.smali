.class public abstract Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
.super Ljava/lang/Object;
.source "LoaderBehavior.java"

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
.method abstract visit(Lcom/wMyWebZone/ads/AdsLoader;)V
.end method

.method public visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 11
    instance-of v0, p1, Lcom/wMyWebZone/ads/AdsLoader;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/wMyWebZone/ads/AdsLoader;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;->visit(Lcom/wMyWebZone/ads/AdsLoader;)V

    .line 14
    :cond_0
    return-void
.end method
