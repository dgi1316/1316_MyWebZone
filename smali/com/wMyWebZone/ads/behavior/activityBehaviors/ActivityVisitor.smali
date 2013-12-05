.class public abstract Lcom/wMyWebZone/ads/behavior/activityBehaviors/ActivityVisitor;
.super Ljava/lang/Object;
.source "ActivityVisitor.java"

# interfaces
.implements Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract visit(Landroid/app/Activity;)V
.end method

.method public visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V
    .locals 1
    .parameter "acceptor"

    .prologue
    .line 12
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/ads/behavior/activityBehaviors/ActivityVisitor;->visit(Landroid/app/Activity;)V

    .line 15
    :cond_0
    return-void
.end method
