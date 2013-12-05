.class Lcom/wMyWebZone/MainNavigationActivity$4;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/MainNavigationActivity;->showConnectionErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity$4;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$4;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 615
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$4;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 616
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$4;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    .line 617
    return-void
.end method
