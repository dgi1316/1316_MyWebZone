.class Lcom/wMyWebZone/Controllers/WebContentController$2;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Controllers/WebContentController;->addAdditionalProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController$2;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 200
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController$2;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    #getter for: Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->access$000(Lcom/wMyWebZone/Controllers/WebContentController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 201
    .local v0, additionalProgress:I
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController$2;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    #getter for: Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->access$000(Lcom/wMyWebZone/Controllers/WebContentController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    .line 202
    .local v1, progress:I
    if-le v0, v1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WebContentController$2;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    #getter for: Lcom/wMyWebZone/Controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->access$000(Lcom/wMyWebZone/Controllers/WebContentController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 206
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 207
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x28

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_1
    return-void
.end method
