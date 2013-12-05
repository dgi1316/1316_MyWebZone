.class Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;
.super Lcom/wMyWebZone/plugins/omegle/event/OmegleEventAdaptor;
.source "OmgelePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->startChat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    invoke-direct {p0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public chatConnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "chatConnected"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$000(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public chatMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "message"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "chatMessage"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public chatWaiting(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "chatWaiting"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$000(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public commonLikes(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "string"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "commonLikes"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "string"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "messageSent"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public omegleError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "string"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "omegleError"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public recaptchaRejected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
    .locals 4
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, variables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v2, "recaptchaRejected"

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public recaptchaRequired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
    .locals 4
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, variables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v2, "recaptchaRequired"

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public strangerDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "strangerDisconnected"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$000(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public strangerTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;->this$0:Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    const-string v1, "strangerTyping"

    #calls: Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->access$000(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;)V

    .line 66
    return-void
.end method
