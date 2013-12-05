.class public Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderClickBehavior;
.super Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;
.source "LoaderClickBehavior.java"


# instance fields
.field _clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;)V
    .locals 0
    .parameter "behavior"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderBehavior;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderClickBehavior;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 11
    return-void
.end method


# virtual methods
.method public visit(Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderClickBehavior;->_clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-virtual {p1, v0}, Lcom/wMyWebZone/ads/AdsLoader;->changeClickBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;)V

    .line 16
    return-void
.end method
