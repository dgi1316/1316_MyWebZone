.class public Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;
.super Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
.source "LoaderRefreshTimeoutBehavior.java"


# instance fields
.field _timeOut:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;-><init>()V

    .line 10
    iput p1, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;->_timeOut:F

    .line 11
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 15
    iget v0, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;->_timeOut:F

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/AdsLoader;->setRefreshTimeout(F)V

    .line 16
    return-void
.end method
