.class public Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;
.super Ljava/lang/Object;
.source "OmgelePlugin.java"

# interfaces
.implements Lcom/wMyWebZone/plugins/IApplicationPlugin;


# static fields
.field private static final JS_CALLBACK_FUNCTION:Ljava/lang/String; = "OmeglePlugin.onEvent"

.field private static final JS_INTERFACE_NAME:Ljava/lang/String; = "OmeglePlugin"


# instance fields
.field private _context:Landroid/content/Context;

.field private _omegleApi:Lcom/wMyWebZone/plugins/omegle/Omegle;

.field private _session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/Omegle;

    invoke-direct {v0}, Lcom/wMyWebZone/plugins/omegle/Omegle;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_omegleApi:Lcom/wMyWebZone/plugins/omegle/Omegle;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callJsCallback(Ljava/lang/String;)V
    .locals 1
    .parameter "function"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/util/Collection;)V

    .line 41
    return-void
.end method

.method private callJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "function"
    .parameter "string"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, arguments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->callJsCallback(Ljava/lang/String;Ljava/util/Collection;)V

    .line 36
    return-void
.end method

.method private callJsCallback(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .parameter "event"
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, arguments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:OmeglePlugin.onEvent(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, command:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, argument:Ljava/lang/String;
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    .end local v0           #argument:Ljava/lang/String;
    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v3, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->disconnect()V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method

.method public load(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/wMyWebZone/plugins/IApplicationPlugin;
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_webView:Landroid/webkit/WebView;

    .line 27
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_webView:Landroid/webkit/WebView;

    const-string v1, "OmeglePlugin"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    return-object p0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1, p1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendTyping()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->typing()V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 6
    .parameter "topics"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_omegleApi:Lcom/wMyWebZone/plugins/omegle/Omegle;

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;

    invoke-direct {v5, p0}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin$1;-><init>(Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/wMyWebZone/plugins/omegle/Omegle;->openSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;[Ljava/lang/Object;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopLookingForCommonInterests()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->stopLookingForCommonLikes()V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method

.method public submitRecaptcha(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "challenge"
    .parameter "response"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;->_session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    invoke-virtual {v1, p1, p2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->submitRecaptcha(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/wMyWebZone/plugins/omegle/core/OmegleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
    invoke-virtual {v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;->printStackTrace()V

    goto :goto_0
.end method
