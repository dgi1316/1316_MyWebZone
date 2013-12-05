.class Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;
.super Ljava/lang/Object;
.source "OmegleSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->send(Ljava/lang/String;Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

.field final synthetic val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->this$0:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    iput-object p2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->this$0:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->send(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->this$0:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    iget-object v3, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;->messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->val$callback:Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;

    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;->this$0:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1, v2, v0}, Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;->messageError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleException;)V

    goto :goto_0
.end method
