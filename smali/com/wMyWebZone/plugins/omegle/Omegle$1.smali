.class Lcom/wMyWebZone/plugins/omegle/Omegle$1;
.super Ljava/lang/Object;
.source "Omegle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/plugins/omegle/Omegle;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/plugins/omegle/Omegle;

.field final synthetic val$session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/plugins/omegle/Omegle;Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wMyWebZone/plugins/omegle/Omegle$1;->this$0:Lcom/wMyWebZone/plugins/omegle/Omegle;

    iput-object p2, p0, Lcom/wMyWebZone/plugins/omegle/Omegle$1;->val$session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle$1;->val$session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->checkEvents()V

    .line 128
    return-void
.end method
