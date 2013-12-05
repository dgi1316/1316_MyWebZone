.class public Lcom/wMyWebZone/Utils/AppNotificationManager;
.super Ljava/lang/Object;
.source "AppNotificationManager.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "msg"
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 71
    const v1, 0x7f020011

    .line 72
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 74
    .local v5, when:J
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, v1, p2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 75
    .local v3, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xfffffff

    and-long/2addr v7, v9

    long-to-int v0, v7

    .line 76
    .local v0, iUniqueId:I
    const/4 v7, 0x0

    invoke-static {p0, v0, p3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, p0, p2, p1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 77
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v4, v7

    .line 81
    .local v4, notificatonID:I
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 82
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    invoke-static {p0}, Lcom/wMyWebZone/Utils/AppNotificationManager;->playNotificationSound(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "url"
    .parameter "launchMain"

    .prologue
    .line 28
    if-eqz p3, :cond_0

    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/wMyWebZone/Utils/AppNotificationManager;->getLaunchMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/wMyWebZone/Utils/AppNotificationManager;->getLaunchMessageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLaunchMainIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wMyWebZone/Utils/AppNotificationManager;->getLaunchMainIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLaunchMainIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    :cond_0
    return-object v0
.end method

.method public static getLaunchMessageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wMyWebZone/MessageViewer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    return-object v1
.end method

.method public static playNotificationSound(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 90
    .local v0, rt:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 91
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 92
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 95
    .end local v0           #rt:Landroid/media/Ringtone;
    :cond_0
    return-void
.end method
