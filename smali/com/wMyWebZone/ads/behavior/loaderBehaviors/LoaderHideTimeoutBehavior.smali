.class public Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;
.super Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
.source "LoaderHideTimeoutBehavior.java"


# instance fields
.field _timeOut:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;-><init>()V

    .line 9
    iput p1, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;->_timeOut:F

    .line 10
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 14
    iget v0, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;->_timeOut:F

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/AdsLoader;->setHideTimeout(F)V

    .line 15
    return-void
.end method
