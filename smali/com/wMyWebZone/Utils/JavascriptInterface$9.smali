.class Lcom/wMyWebZone/Utils/JavascriptInterface$9;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->showTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$9;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$9;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v1}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$400(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, tagPanel:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void
.end method
