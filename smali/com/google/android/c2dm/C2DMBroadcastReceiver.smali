.class public Lcom/google/android/c2dm/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-static {p1, p2}, Lcom/google/android/c2dm/C2DMBaseReceiver;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    return-void
.end method
