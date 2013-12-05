.class public Lcom/wMyWebZone/pull/PullServerController;
.super Landroid/content/BroadcastReceiver;
.source "PullServerController.java"

# interfaces
.implements Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;


# instance fields
.field private final ALARM_PERIOD:J

.field private final LAST_ALARM_TIME_KEY:Ljava/lang/String;

.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "last_alarm_time"

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerController;->LAST_ALARM_TIME_KEY:Ljava/lang/String;

    .line 17
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/wMyWebZone/pull/PullServerController;->ALARM_PERIOD:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    return-void
.end method

.method private _getLastAlarmTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 67
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "last_alarm_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private _pullMessage(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Lcom/wMyWebZone/pull/PullServerClient;

    invoke-direct {v0, p1, p0}, Lcom/wMyWebZone/pull/PullServerClient;-><init>(Landroid/content/Context;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V

    .line 63
    .local v0, client:Lcom/wMyWebZone/pull/PullServerClient;
    invoke-virtual {v0}, Lcom/wMyWebZone/pull/PullServerClient;->tryLoadMessageAsync()V

    .line 64
    return-void
.end method

.method private _setLastAlarmTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "newTime"

    .prologue
    .line 72
    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_alarm_time"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method


# virtual methods
.method public onMessage([Lcom/wMyWebZone/pull/PullServerClient$Response;)V
    .locals 11
    .parameter "responses"

    .prologue
    .line 78
    move-object v0, p1

    .local v0, arr$:[Lcom/wMyWebZone/pull/PullServerClient$Response;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v6, v0, v1

    .line 79
    .local v6, r:Lcom/wMyWebZone/pull/PullServerClient$Response;
    iget-object v9, v6, Lcom/wMyWebZone/pull/PullServerClient$Response;->url:Ljava/lang/String;

    .line 80
    .local v9, url:Ljava/lang/String;
    iget-object v5, v6, Lcom/wMyWebZone/pull/PullServerClient$Response;->message:Ljava/lang/String;

    .line 81
    .local v5, message:Ljava/lang/String;
    iget-object v8, v6, Lcom/wMyWebZone/pull/PullServerClient$Response;->title:Ljava/lang/String;

    .line 82
    .local v8, title:Ljava/lang/String;
    iget-object v3, v6, Lcom/wMyWebZone/pull/PullServerClient$Response;->launchMain:Ljava/lang/String;

    .line 84
    .local v3, launchMain:Ljava/lang/String;
    iget-object v10, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    invoke-static {v10, v8, v9, v3}, Lcom/wMyWebZone/Utils/AppNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, launchIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    invoke-static {v10, v5, v8, v2}, Lcom/wMyWebZone/Utils/AppNotificationManager;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 87
    new-instance v7, Lcom/wMyWebZone/pull/StatServerClient;

    iget-object v10, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/wMyWebZone/pull/StatServerClient;-><init>(Landroid/content/Context;)V

    .line 88
    .local v7, statClient:Lcom/wMyWebZone/pull/StatServerClient;
    invoke-virtual {v7, v9}, Lcom/wMyWebZone/pull/StatServerClient;->sendMessageAcceptedAsync(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v2           #launchIntent:Landroid/content/Intent;
    .end local v3           #launchMain:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #r:Lcom/wMyWebZone/pull/PullServerClient$Response;
    .end local v7           #statClient:Lcom/wMyWebZone/pull/StatServerClient;
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/wMyWebZone/pull/PullServerController;->_getLastAlarmTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 25
    .local v2, lastAlarmTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    .local v0, currentTime:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/wMyWebZone/pull/PullServerController;->_setLastAlarmTime(Landroid/content/Context;J)V

    .line 31
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/wMyWebZone/pull/PullServerController;->_pullMessage(Landroid/content/Context;)V

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/pull/PullServerController;->reScheduleNotification(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public reScheduleNotification(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const-wide/32 v11, 0xdbba00

    const/high16 v10, 0x1000

    const/4 v9, 0x0

    .line 40
    iput-object p1, p0, Lcom/wMyWebZone/pull/PullServerController;->_context:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/wMyWebZone/pull/PullServerController;->_getLastAlarmTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 42
    .local v2, lastAlarmTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v11

    cmp-long v7, v2, v7

    if-gez v7, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/wMyWebZone/pull/PullServerController;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 47
    .local v4, pendingIntent0:Landroid/app/PendingIntent;
    const/4 v7, 0x1

    invoke-static {p1, v7, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 48
    .local v5, pendingIntent1:Landroid/app/PendingIntent;
    const/4 v7, 0x2

    invoke-static {p1, v7, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 50
    .local v6, pendingIntent2:Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 51
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 52
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 53
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 56
    add-long v7, v2, v11

    invoke-virtual {v0, v9, v7, v8, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 57
    const-wide/32 v7, 0x1b77400

    add-long/2addr v7, v2

    invoke-virtual {v0, v9, v7, v8, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 58
    const-wide/32 v7, 0xa4cb800

    add-long/2addr v7, v2

    invoke-virtual {v0, v9, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 59
    return-void
.end method
