.class public abstract Lcom/google/android/c2dm/C2DMBaseReceiver;
.super Landroid/app/IntentService;
.source "C2DMBaseReceiver.java"


# static fields
.field private static final C2DM_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final C2DM_RETRY:Ljava/lang/String; = "com.google.android.c2dm.intent.RETRY"

.field public static final ERR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field public static final ERR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field public static final ERR_INVALID_PARAMETERS:Ljava/lang/String; = "INVALID_PARAMETERS"

.field public static final ERR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field public static final ERR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field public static final ERR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERR_TOO_MANY_REGISTRATIONS:Ljava/lang/String; = "TOO_MANY_REGISTRATIONS"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field public static final REGISTRATION_CALLBACK_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final TAG:Ljava/lang/String; = "C2DM"


# instance fields
.field private _context:Landroid/content/Context;

.field private final senderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "senderId"
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->senderId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 157
    const-string v9, "registration_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, registrationId:Ljava/lang/String;
    const-string v9, "error"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, error:Ljava/lang/String;
    const-string v9, "unregistered"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, removed:Ljava/lang/String;
    const-string v9, "C2DM"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 162
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dmControl: registrationId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", removed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    if-eqz v6, :cond_2

    .line 168
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    if-eqz v3, :cond_3

    .line 173
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 175
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Registration error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1, v3}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onError(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    const-string v9, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 178
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->getBackoff(Landroid/content/Context;)J

    move-result-wide v1

    .line 180
    .local v1, backoffTimeMs:J
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling registration retry, backoff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, retryIntent:Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 185
    .local v8, retryPIntent:Landroid/app/PendingIntent;
    const-string v9, "alarm"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v1, v2, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 190
    const-wide/16 v9, 0x2

    mul-long/2addr v1, v9

    .line 191
    invoke-static {p1, v1, v2}, Lcom/google/android/c2dm/C2DMessaging;->setBackoff(Landroid/content/Context;J)V

    goto :goto_0

    .line 195
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #backoffTimeMs:J
    .end local v7           #retryIntent:Landroid/content/Intent;
    .end local v8           #retryPIntent:Landroid/app/PendingIntent;
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    invoke-static {p1, v5}, Lcom/google/android/c2dm/C2DMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v4

    .line 198
    .local v4, ex:Ljava/io/IOException;
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Registration error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    new-instance v0, Lcom/wMyWebZone/Server/C2DMClientReceiver;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Server/C2DMClientReceiver;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, reciever:Lcom/wMyWebZone/Server/C2DMClientReceiver;
    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Server/C2DMClientReceiver;->onHandleIntent(Landroid/content/Intent;)V

    .line 153
    return-void
.end method


# virtual methods
.method public abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    throw v0

    .line 113
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/c2dm/C2DMBaseReceiver;->senderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "registrationId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "registration"

    .prologue
    .line 101
    return-void
.end method
