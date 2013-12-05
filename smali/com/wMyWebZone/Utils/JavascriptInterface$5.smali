.class Lcom/wMyWebZone/Utils/JavascriptInterface$5;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->zoomIn()V
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
    .line 186
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$5;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$5;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$000(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Controllers/WebContentController;->zoomIn()V

    .line 189
    return-void
.end method
