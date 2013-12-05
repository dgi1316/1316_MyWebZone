.class public abstract Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;
.super Ljava/lang/Object;
.source "MessageSendCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleException;)V
    .locals 0
    .parameter "session"
    .parameter "exception"

    .prologue
    .line 54
    return-void
.end method

.method public messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "message"

    .prologue
    .line 41
    return-void
.end method
