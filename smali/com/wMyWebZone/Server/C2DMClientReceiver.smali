.class public Lcom/wMyWebZone/Server/C2DMClientReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMClientReceiver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 19
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPushAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 41
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 42
    .local v0, activity:Lcom/wMyWebZone/MainNavigationActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    move-result-object v3

    .line 44
    .local v3, manager:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    const/4 v1, 0x0

    .line 46
    .local v1, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 37
    const-string v0, "push"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 59
    const-string v8, "url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, url:Ljava/lang/String;
    const-string v8, "message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, message:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, title:Ljava/lang/String;
    const-string v8, "launchMain"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, launchMain:Ljava/lang/String;
    invoke-static {p1, v6, v7, v3}, Lcom/wMyWebZone/Utils/AppNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, launchIntent:Landroid/content/Intent;
    invoke-static {p1, v4, v6, v2}, Lcom/wMyWebZone/Utils/AppNotificationManager;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, TAG:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got incoming push message, url is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v8, "Sending feedback to Appsgeyser..."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v5, Lcom/wMyWebZone/pull/StatServerClient;

    invoke-direct {v5, p1}, Lcom/wMyWebZone/pull/StatServerClient;-><init>(Landroid/content/Context;)V

    .line 71
    .local v5, statServerClient:Lcom/wMyWebZone/pull/StatServerClient;
    invoke-virtual {v5, v7}, Lcom/wMyWebZone/pull/StatServerClient;->sendPushReceivedAsync(Ljava/lang/String;)V

    .line 74
    .end local v0           #TAG:Ljava/lang/String;
    .end local v2           #launchIntent:Landroid/content/Intent;
    .end local v3           #launchMain:Ljava/lang/String;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #statServerClient:Lcom/wMyWebZone/pull/StatServerClient;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "registration"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Server/C2DMClientReceiver;->resolveConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 24
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    new-instance v1, Lcom/wMyWebZone/Server/PushServerClient;

    invoke-direct {v1, p1, v0}, Lcom/wMyWebZone/Server/PushServerClient;-><init>(Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;)V

    .line 25
    .local v1, pushClient:Lcom/wMyWebZone/Server/PushServerClient;
    invoke-virtual {v1, p2}, Lcom/wMyWebZone/Server/PushServerClient;->sendRegisteredId(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "registration"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Server/C2DMClientReceiver;->resolveConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 31
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    new-instance v1, Lcom/wMyWebZone/Server/PushServerClient;

    invoke-direct {v1, p1, v0}, Lcom/wMyWebZone/Server/PushServerClient;-><init>(Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;)V

    .line 32
    .local v1, pushClient:Lcom/wMyWebZone/Server/PushServerClient;
    invoke-virtual {v1, p2}, Lcom/wMyWebZone/Server/PushServerClient;->sendUnregisteredId(Ljava/lang/String;)V

    .line 33
    return-void
.end method
