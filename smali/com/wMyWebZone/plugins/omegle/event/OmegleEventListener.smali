.class public interface abstract Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
.super Ljava/lang/Object;
.source "OmegleEventListener.java"


# virtual methods
.method public abstract chatConnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method

.method public abstract chatDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method

.method public abstract chatMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
.end method

.method public abstract chatWaiting(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method

.method public abstract commonLikes(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
.end method

.method public abstract count(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;I)V
.end method

.method public abstract eventFired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Lorg/json/JSONArray;)V
.end method

.method public abstract messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
.end method

.method public abstract omegleError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
.end method

.method public abstract question(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
.end method

.method public abstract recaptchaRejected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
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
.end method

.method public abstract recaptchaRequired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V
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
.end method

.method public abstract spyDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
.end method

.method public abstract spyMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;Ljava/lang/String;)V
.end method

.method public abstract spyStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
.end method

.method public abstract spyTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V
.end method

.method public abstract strangerDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method

.method public abstract strangerStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method

.method public abstract strangerTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
.end method
