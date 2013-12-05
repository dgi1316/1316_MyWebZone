.class public Lcom/wMyWebZone/plugins/omegle/event/OmegleEventAdaptor;
.super Ljava/lang/Object;
.source "OmegleEventAdaptor.java"

# interfaces
.implements Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chatConnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 49
    return-void
.end method

.method public chatDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 129
    return-void
.end method

.method public chatMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "message"

    .prologue
    .line 54
    return-void
.end method

.method public chatWaiting(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 44
    return-void
.end method

.method public commonLikes(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "string"

    .prologue
    .line 134
    return-void
.end method

.method public count(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;I)V
    .locals 0
    .parameter "session"
    .parameter "count"

    .prologue
    .line 86
    return-void
.end method

.method public eventFired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "session"
    .parameter "event"
    .parameter "array"

    .prologue
    .line 39
    return-void
.end method

.method public messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "string"

    .prologue
    .line 124
    return-void
.end method

.method public omegleError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "string"

    .prologue
    .line 119
    return-void
.end method

.method public question(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "question"

    .prologue
    .line 114
    return-void
.end method

.method public recaptchaRejected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
    .locals 0
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
    .line 81
    .local p2, variables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public recaptchaRequired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
    .locals 0
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
    .line 75
    .local p2, variables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public spyDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
    .locals 0
    .parameter "session"
    .parameter "stranger"

    .prologue
    .line 109
    return-void
.end method

.method public spyMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "stranger"
    .parameter "message"

    .prologue
    .line 92
    return-void
.end method

.method public spyStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
    .locals 0
    .parameter "session"
    .parameter "stranger"

    .prologue
    .line 103
    return-void
.end method

.method public spyTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
    .locals 0
    .parameter "session"
    .parameter "stranger"

    .prologue
    .line 97
    return-void
.end method

.method public strangerDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 59
    return-void
.end method

.method public strangerStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 69
    return-void
.end method

.method public strangerTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 64
    return-void
.end method
