.class public Lcom/wMyWebZone/pull/PullServerClient;
.super Ljava/lang/Object;
.source "PullServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/pull/PullServerClient$Response;,
        Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;
    }
.end annotation


# instance fields
.field private final DOMAIN_URL_KEY:Ljava/lang/String;

.field private final LAST_REQUEST_TIME_KEY:Ljava/lang/String;

.field private final OK_RESPONSE:I

.field private _context:Landroid/content/Context;

.field private _listener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/wMyWebZone/pull/PullServerClient;->OK_RESPONSE:I

    .line 25
    const-string v0, "last_pull_request_time"

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient;->LAST_REQUEST_TIME_KEY:Ljava/lang/String;

    .line 26
    const-string v0, "domain_url"

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient;->DOMAIN_URL_KEY:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/wMyWebZone/pull/PullServerClient;->_listener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;

    .line 46
    return-void
.end method

.method private _getDomainUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 153
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "domain_url"

    iget-object v2, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private _getLastRequestTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 123
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "last_pull_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private _rotateDomainUrls(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/wMyWebZone/pull/PullServerClient;->_getDomainUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, currentUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, url1:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, url2:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, url3:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-direct {p0, p1, v2}, Lcom/wMyWebZone/pull/PullServerClient;->_setDomainUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    invoke-direct {p0, p1, v3}, Lcom/wMyWebZone/pull/PullServerClient;->_setDomainUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/wMyWebZone/pull/PullServerClient;->_setDomainUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/wMyWebZone/pull/PullServerClient;->_setDomainUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _sendRequestAsync(Ljava/lang/String;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V
    .locals 1
    .parameter "requestUrl"
    .parameter "onResponseListener"

    .prologue
    .line 77
    new-instance v0, Lcom/wMyWebZone/pull/PullServerClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/wMyWebZone/pull/PullServerClient$1;-><init>(Lcom/wMyWebZone/pull/PullServerClient;Ljava/lang/String;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V

    .line 119
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method private _setDomainUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "newUrl"

    .prologue
    .line 158
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "domain_url"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method private _setLastRequestTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "newTime"

    .prologue
    .line 128
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_pull_request_time"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/pull/PullServerClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/pull/PullServerClient;Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/wMyWebZone/pull/PullServerClient;->_setLastRequestTime(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/wMyWebZone/pull/PullServerClient;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/wMyWebZone/pull/PullServerClient;->_rotateDomainUrls(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public tryLoadMessageAsync()V
    .locals 10

    .prologue
    .line 50
    :try_start_0
    iget-object v7, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-static {v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    move-result-object v3

    .line 51
    .local v3, manager:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    iget-object v7, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 53
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    iget-object v7, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/wMyWebZone/pull/PullServerClient;->_getDomainUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, pullServerUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    const v8, 0x7f08002f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, version:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, guid:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "get_message.php?app_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&last_request_timestamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/wMyWebZone/pull/PullServerClient;->_getLastRequestTime(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&guid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, requestUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/wMyWebZone/pull/PullServerClient;->_listener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;

    invoke-direct {p0, v5, v7}, Lcom/wMyWebZone/pull/PullServerClient;->_sendRequestAsync(Ljava/lang/String;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .end local v2           #guid:Ljava/lang/String;
    .end local v3           #manager:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    .end local v4           #pullServerUrl:Ljava/lang/String;
    .end local v5           #requestUrl:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
