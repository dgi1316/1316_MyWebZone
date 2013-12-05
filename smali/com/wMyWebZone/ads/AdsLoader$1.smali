.class Lcom/wMyWebZone/ads/AdsLoader$1;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/ads/AdsLoader;->init(Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/ads/AdsLoader;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wMyWebZone/ads/AdsLoader$1;->this$0:Lcom/wMyWebZone/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 75
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
