.class Lcom/wMyWebZone/Utils/JavascriptInterface$6;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->showLoadingDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$6;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$6;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$6;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-static {v1}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$400(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$6;->val$text:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$302(Lcom/wMyWebZone/Utils/JavascriptInterface;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 205
    return-void
.end method
