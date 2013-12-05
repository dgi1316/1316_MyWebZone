.class Lcom/wMyWebZone/Views/AboutDialog$1;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Views/AboutDialog;->init(Lcom/wMyWebZone/MainNavigationActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Views/AboutDialog;

.field final synthetic val$activity:Lcom/wMyWebZone/MainNavigationActivity;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Views/AboutDialog;Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wMyWebZone/Views/AboutDialog$1;->this$0:Lcom/wMyWebZone/Views/AboutDialog;

    iput-object p2, p0, Lcom/wMyWebZone/Views/AboutDialog$1;->val$link:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Views/AboutDialog$1;->val$activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 53
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/wMyWebZone/Views/AboutDialog$1;->val$link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wMyWebZone/Views/AboutDialog$1;->val$activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
