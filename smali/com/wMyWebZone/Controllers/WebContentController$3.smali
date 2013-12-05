.class Lcom/wMyWebZone/Controllers/WebContentController$3;
.super Landroid/os/HandlerThread;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Controllers/WebContentController;->setProgressBarState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/WebContentController$3;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WebContentController$3;->this$0:Lcom/wMyWebZone/Controllers/WebContentController;

    #getter for: Lcom/wMyWebZone/Controllers/WebContentController;->_webContent:Lcom/wMyWebZone/Views/WebContent;
    invoke-static {v0}, Lcom/wMyWebZone/Controllers/WebContentController;->access$100(Lcom/wMyWebZone/Controllers/WebContentController;)Lcom/wMyWebZone/Views/WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/WebContent;->hideProgressBarPanel()V

    .line 223
    return-void
.end method
