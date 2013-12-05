.class public Lcom/wMyWebZone/plugins/omegle/Omegle;
.super Ljava/lang/Object;
.source "Omegle.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static BASE_URL:Ljava/lang/String;

.field public static DISCONNECT_URL:Ljava/net/URL;

.field public static EVENT_URL:Ljava/net/URL;

.field public static OPEN_URL:Ljava/net/URL;

.field public static RECAPTCHA_SEND_URL:Ljava/net/URL;

.field public static SEND_URL:Ljava/net/URL;

.field public static STOP_LOOKING_FOR_COMMON_LIKES_URL:Ljava/net/URL;

.field public static TYPING_URL:Ljava/net/URL;


# instance fields
.field private eventParseDelay:J

.field private firstEvents:Z

.field private service:Ljava/util/concurrent/ExecutorService;

.field private sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const-string v1, "http://omegle.com"

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    .line 78
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->OPEN_URL:Ljava/net/URL;

    .line 79
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->DISCONNECT_URL:Ljava/net/URL;

    .line 80
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->EVENT_URL:Ljava/net/URL;

    .line 81
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/send"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->SEND_URL:Ljava/net/URL;

    .line 82
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/typing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->TYPING_URL:Ljava/net/URL;

    .line 83
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stoplookingforcommonlikes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->STOP_LOOKING_FOR_COMMON_LIKES_URL:Ljava/net/URL;

    .line 84
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recaptcha"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/wMyWebZone/plugins/omegle/Omegle;->RECAPTCHA_SEND_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_0
    return-void

    .line 85
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_0
    move-exception v0

    .line 86
    .restart local v0       #e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->service:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->firstEvents:Z

    .line 108
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->eventParseDelay:J

    .line 114
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method


# virtual methods
.method public addSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openSession()Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/wMyWebZone/plugins/omegle/Omegle;->openSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;[Ljava/lang/Object;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    move-result-object v0

    return-object v0
.end method

.method public varargs openSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;[Ljava/lang/Object;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    .locals 13
    .parameter "mode"
    .parameter "objs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v10, vars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "rcs"

    const-string v12, "1"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v12, "firstevents"

    iget-boolean v11, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->firstEvents:Z

    if-eqz v11, :cond_2

    const-string v11, "1"

    :goto_0
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    if-ne p1, v11, :cond_3

    .line 190
    const-string v11, "wantsspy"

    const-string v12, "1"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    :goto_1
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v5, v1, v3

    .line 206
    .local v5, obj:Ljava/lang/Object;
    instance-of v11, v5, Ljava/util/Collection;

    if-eqz v11, :cond_6

    .line 207
    const-string v11, "topics"

    new-instance v12, Lorg/json/JSONArray;

    check-cast v5, Ljava/util/Collection;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-direct {v12, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    const-string v11, "0"

    goto :goto_0

    .line 191
    :cond_3
    sget-object v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY_QUESTION:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    if-ne p1, v11, :cond_0

    .line 192
    array-length v11, p2

    if-lez v11, :cond_5

    .line 193
    const/4 v11, 0x0

    aget-object v11, p2, v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 194
    const-string v11, "ask"

    const/4 v12, 0x0

    aget-object v12, p2, v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 242
    .end local v10           #vars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 243
    .local v2, e:Ljava/io/IOException;
    new-instance v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v11, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 196
    .end local v2           #e:Ljava/io/IOException;
    .restart local v10       #vars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :try_start_1
    new-instance v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    const-string v12, "The question MUST be passed as the first parameter!"

    invoke-direct {v11, v12}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .end local v10           #vars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    .line 245
    .local v2, e:Lorg/json/JSONException;
    new-instance v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v11, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 200
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v10       #vars:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :try_start_2
    new-instance v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    const-string v12, "You cannot open a spy question session without a question!"

    invoke-direct {v11, v12}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 208
    .restart local v1       #arr$:[Ljava/lang/Object;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_6
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-lez v11, :cond_1

    .line 210
    :try_start_3
    new-instance v8, Lorg/json/JSONArray;

    check-cast v5, Ljava/lang/String;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-direct {v8, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 211
    .local v8, topics:Lorg/json/JSONArray;
    const-string v11, "topics"

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 212
    .end local v8           #topics:Lorg/json/JSONArray;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 216
    :cond_7
    :try_start_4
    new-instance v9, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/wMyWebZone/plugins/omegle/Omegle;->OPEN_URL:Ljava/net/URL;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->implode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v9, url:Ljava/net/URL;
    new-instance v6, Lorg/json/JSONObject;

    const-string v11, ""

    invoke-static {v9, v11}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v6, resp:Lorg/json/JSONObject;
    const-string v11, "clientID"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 221
    new-instance v11, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    const-string v12, "Omegle didn\'t return a client id!"

    invoke-direct {v11, v12}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 224
    :cond_8
    new-instance v7, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    const-string v11, "clientID"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, p0, v11}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;-><init>(Lcom/wMyWebZone/plugins/omegle/Omegle;Ljava/lang/String;)V

    .line 227
    .local v7, session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    move-object v1, p2

    array-length v4, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_a

    aget-object v5, v1, v3

    .line 228
    .restart local v5       #obj:Ljava/lang/Object;
    instance-of v11, v5, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    if-eqz v11, :cond_9

    .line 229
    check-cast v5, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->addListener(Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;)V

    .line 227
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 233
    :cond_a
    const-string v11, "events"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 234
    const-string v11, "events"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->parseEvents(Lorg/json/JSONArray;)V

    .line 237
    :cond_b
    iget-object v12, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    monitor-enter v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 238
    :try_start_5
    iget-object v11, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v12

    .line 241
    return-object v7

    .line 239
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public varargs openSession([Ljava/lang/Object;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    .locals 1
    .parameter "objs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    invoke-virtual {p0, v0, p1}, Lcom/wMyWebZone/plugins/omegle/Omegle;->openSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;[Ljava/lang/Object;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    move-result-object v0

    return-object v0
.end method

.method public removeSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 122
    :goto_0
    iget-object v3, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    monitor-enter v3

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;

    .line 125
    .local v1, session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/wMyWebZone/plugins/omegle/Omegle$1;

    invoke-direct {v4, p0, v1}, Lcom/wMyWebZone/plugins/omegle/Omegle$1;-><init>(Lcom/wMyWebZone/plugins/omegle/Omegle;Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 131
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #session:Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    iget-wide v2, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->eventParseDelay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setEventParseDelay(J)V
    .locals 0
    .parameter "eventParseDelay"

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->eventParseDelay:J

    .line 293
    return-void
.end method

.method public setFirstEvents(Z)V
    .locals 0
    .parameter "firstEvents"

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/wMyWebZone/plugins/omegle/Omegle;->firstEvents:Z

    .line 282
    return-void
.end method
