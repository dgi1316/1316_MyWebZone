.class Lcom/wMyWebZone/Utils/JavascriptInterface$7;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->hideLoadingDialog()V
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
    .line 210
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$7;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$7;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$300(Lcom/wMyWebZone/Utils/JavascriptInterface;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$7;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$300(Lcom/wMyWebZone/Utils/JavascriptInterface;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 215
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$7;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    const/4 v1, 0x0

    #setter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$302(Lcom/wMyWebZone/Utils/JavascriptInterface;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 217
    :cond_0
    return-void
.end method
