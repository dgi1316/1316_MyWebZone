.class public Lcom/wMyWebZone/Server/PushServerClient;
.super Lcom/wMyWebZone/Server/BaseServerClient;
.source "PushServerClient.java"

# interfaces
.implements Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Server/PushServerClient$RequestType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Server/BaseServerClient;-><init>(Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Server/BaseServerClient;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 24
    return-void
.end method

.method private _savePushAccount(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 72
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 73
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 74
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "accountName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, pushAccount:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v5, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->saveNewPushAccount(Ljava/lang/String;Landroid/content/Context;)V

    .line 77
    iget-object v4, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #pushAccount:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public loadPushAccount()V
    .locals 4

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "register.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->GET_PUSH_ACCOUNT:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/PushServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 99
    return-void
.end method

.method public onRequestDone(Ljava/lang/String;ILorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "requestUrl"
    .parameter "tag"
    .parameter "response"

    .prologue
    .line 59
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 60
    sget-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->REGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->GET_PUSH_ACCOUNT:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 64
    invoke-direct {p0, p3}, Lcom/wMyWebZone/Server/PushServerClient;->_savePushAccount(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method public sendRegisteredId(Ljava/lang/String;)V
    .locals 4
    .parameter "regId"

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "add_register_id.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->REGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/PushServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 43
    return-void
.end method

.method public sendUnregisteredId(Ljava/lang/String;)V
    .locals 4
    .parameter "regId"

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remove_register_id.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/PushServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->UNREGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/PushServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 55
    return-void
.end method
