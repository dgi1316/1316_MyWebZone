.class Lcom/wMyWebZone/Utils/JavascriptInterface$4;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->setScaleForPageWithSize(II)V
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
    .line 124
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$000(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v0

    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalHeight:I
    invoke-static {v1}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$100(Lcom/wMyWebZone/Utils/JavascriptInterface;)I

    move-result v1

    iget-object v2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalWidth:I
    invoke-static {v2}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$200(Lcom/wMyWebZone/Utils/JavascriptInterface;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wMyWebZone/Controllers/WebContentController;->setScaleForPageWithSize(II)V

    .line 127
    return-void
.end method
