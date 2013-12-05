.class public Lcom/wMyWebZone/pull/StatServerClient;
.super Ljava/lang/Object;
.source "StatServerClient.java"


# instance fields
.field private _config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    .line 23
    iget-object v2, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    move-result-object v1

    .line 25
    .local v1, manager:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/pull/StatServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _createStatPushUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "action"
    .parameter "messageUrl"

    .prologue
    .line 75
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, statDomain:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, guid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "push.php?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wMyWebZone/pull/StatServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&guid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, url:Ljava/lang/String;
    return-object v2
.end method

.method private _createStatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "action"
    .parameter "messageUrl"

    .prologue
    .line 61
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, statDomain:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_context:Landroid/content/Context;

    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/StatServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, guid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pull.php?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wMyWebZone/pull/StatServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&guid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, url:Ljava/lang/String;
    return-object v2
.end method

.method private _sendRequestAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "requestUrl"

    .prologue
    .line 91
    new-instance v0, Lcom/wMyWebZone/pull/StatServerClient$1;

    invoke-direct {v0, p0, p1}, Lcom/wMyWebZone/pull/StatServerClient$1;-><init>(Lcom/wMyWebZone/pull/StatServerClient;Ljava/lang/String;)V

    .line 105
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method


# virtual methods
.method public senMessageClickedAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "messageUrl"

    .prologue
    .line 53
    :try_start_0
    const-string v1, "click"

    invoke-direct {p0, v1, p1}, Lcom/wMyWebZone/pull/StatServerClient;->_createStatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wMyWebZone/pull/StatServerClient;->_sendRequestAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessageAcceptedAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "messageUrl"

    .prologue
    .line 35
    :try_start_0
    const-string v1, "request"

    invoke-direct {p0, v1, p1}, Lcom/wMyWebZone/pull/StatServerClient;->_createStatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wMyWebZone/pull/StatServerClient;->_sendRequestAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPushReceivedAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "messageUrl"

    .prologue
    .line 44
    :try_start_0
    const-string v1, "request"

    invoke-direct {p0, v1, p1}, Lcom/wMyWebZone/pull/StatServerClient;->_createStatPushUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wMyWebZone/pull/StatServerClient;->_sendRequestAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
