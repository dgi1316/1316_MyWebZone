.class public Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;
.super Ljava/lang/Object;
.source "OmegleSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$2;
    }
.end annotation


# instance fields
.field private active:Z

.field private encodedId:Ljava/lang/String;

.field private eventService:Ljava/util/concurrent/ExecutorService;

.field private failCount:I

.field private id:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private omegle:Lcom/wMyWebZone/plugins/omegle/Omegle;

.field private typing:Z


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/plugins/omegle/Omegle;Ljava/lang/String;)V
    .locals 3
    .parameter "omegle"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->eventService:Ljava/util/concurrent/ExecutorService;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->active:Z

    .line 74
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    .line 79
    iput-boolean v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->typing:Z

    .line 84
    iput v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->failCount:I

    .line 95
    iput-object p1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->omegle:Lcom/wMyWebZone/plugins/omegle/Omegle;

    .line 96
    iput-object p2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->id:Ljava/lang/String;

    .line 99
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->encodedId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private fireEvent(Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Ljava/lang/Object;)V
    .locals 22
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 267
    :try_start_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 268
    move-object/from16 v0, p2

    check-cast v0, Lorg/json/JSONArray;

    move-object v3, v0

    .line 273
    .local v3, arrayObj:Lorg/json/JSONArray;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 274
    .local v9, listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v9, v0, v1, v3}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->eventFired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    .end local v3           #arrayObj:Lorg/json/JSONArray;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local p2
    :catch_0
    move-exception v6

    .line 394
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 270
    .restart local p2
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 271
    .restart local v3       #arrayObj:Lorg/json/JSONArray;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 277
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v19, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$2;->$SwitchMap$com$wMyWebZone$plugins$omegle$core$OmegleEvent:[I

    invoke-virtual/range {p1 .. p1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    goto :goto_2

    .line 279
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 280
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->chatWaiting(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_3

    .line 284
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 285
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->chatConnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_4

    .line 289
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_2
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 291
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v10}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->chatMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V

    goto :goto_5

    .line 295
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v10           #message:Ljava/lang/String;
    .restart local p2
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 296
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->strangerDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_6

    .line 299
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->active:Z

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->omegle:Lcom/wMyWebZone/plugins/omegle/Omegle;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/plugins/omegle/Omegle;->removeSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto/16 :goto_2

    .line 303
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 304
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->strangerTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_7

    .line 308
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 309
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->strangerStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_8

    .line 313
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_6
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 314
    .local v13, requiredVals:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 315
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v13}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->recaptchaRequired(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V

    goto :goto_9

    .line 319
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v13           #requiredVals:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2
    :pswitch_7
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 320
    .local v12, rejectedVals:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 321
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v12}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->recaptchaRejected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/util/Map;)V

    goto :goto_a

    .line 325
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v12           #rejectedVals:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2
    :pswitch_8
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 326
    .local v4, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 327
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v4}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->count(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;I)V

    goto :goto_b

    .line 331
    .end local v4           #count:I
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .restart local p2
    :pswitch_9
    move-object/from16 v0, p2

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    .line 332
    .local v2, a:Lorg/json/JSONArray;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 333
    .local v17, strangerId:I
    invoke-static {}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->values()[Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    move-result-object v19

    add-int/lit8 v20, v17, -0x1

    aget-object v16, v19, v20

    .line 334
    .local v16, stranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 336
    .local v15, spyMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 337
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1, v15}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->spyMessage(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;Ljava/lang/String;)V

    goto :goto_c

    .line 341
    .end local v2           #a:Lorg/json/JSONArray;
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v15           #spyMessage:Ljava/lang/String;
    .end local v16           #stranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .end local v17           #strangerId:I
    :pswitch_a
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const-string v21, "_"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    move-result-object v18

    .line 343
    .local v18, typingStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 344
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->spyTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V

    goto :goto_d

    .line 348
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v18           #typingStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .restart local p2
    :pswitch_b
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const-string v21, "_"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    move-result-object v14

    .line 350
    .local v14, sTypingStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 351
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v14}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->spyStoppedTyping(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V

    goto :goto_e

    .line 355
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v14           #sTypingStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .restart local p2
    :pswitch_c
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const-string v21, "_"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    move-result-object v5

    .line 357
    .local v5, disconnectedStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 358
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v5}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->spyDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;)V

    goto :goto_f

    .line 362
    .end local v5           #disconnectedStranger:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .restart local p2
    :pswitch_d
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, question:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 365
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v11}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->question(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V

    goto :goto_10

    .line 369
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .end local v11           #question:Ljava/lang/String;
    .restart local p2
    :pswitch_e
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, errorMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 371
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0, v7}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->omegleError(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V

    goto :goto_11

    .line 375
    .end local v7           #errorMessage:Ljava/lang/String;
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    .restart local p2
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 376
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->commonLikes(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V

    goto :goto_12

    .line 381
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 382
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->messageSent(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;)V

    goto :goto_13

    .line 386
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;

    .line 387
    .restart local v9       #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;->chatDisconnected(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    goto :goto_14

    .line 389
    .end local v9           #listener:Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->active:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/wMyWebZone/plugins/omegle/event/OmegleEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public checkEvents()V
    .locals 5

    .prologue
    .line 212
    :try_start_0
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/Omegle;->EVENT_URL:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->encodedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, resp:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :cond_0
    iget v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->failCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->failCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 215
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->disconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->fireEvent(Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->omegle:Lcom/wMyWebZone/plugins/omegle/Omegle;

    invoke-virtual {v2, p0}, Lcom/wMyWebZone/plugins/omegle/Omegle;->removeSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V

    .line 227
    .end local v1           #resp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 221
    .restart local v1       #resp:Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->parseEvents(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 222
    .end local v1           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 406
    :try_start_0
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/Omegle;->DISCONNECT_URL:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->encodedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, resp:Ljava/lang/String;
    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to disconnect, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v2, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 412
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #resp:Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->disconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->fireEvent(Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Ljava/lang/Object;)V

    .line 413
    iget-object v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->omegle:Lcom/wMyWebZone/plugins/omegle/Omegle;

    invoke-virtual {v2, p0}, Lcom/wMyWebZone/plugins/omegle/Omegle;->removeSession(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->active:Z

    return v0
.end method

.method public parseEvents(Lorg/json/JSONArray;)V
    .locals 4
    .parameter "events"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 238
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 239
    .local v0, e:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 241
    .local v1, event:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    :goto_1
    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, v1, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->fireEvent(Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Ljava/lang/Object;)V

    .line 237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0           #e:Lorg/json/JSONArray;
    .end local v1           #event:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    :cond_1
    return-void

    .line 242
    .restart local v0       #e:Lorg/json/JSONArray;
    .restart local v1       #event:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->id:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v3, "msg"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :try_start_0
    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->SEND_URL:Ljava/net/URL;

    invoke-static {v3, v1}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, resp:Ljava/lang/String;
    const-string v3, "win"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    new-instance v3, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send message, response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v3, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #resp:Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->messageSent:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    invoke-direct {p0, v3, p1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->fireEvent(Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    return-void
.end method

.method public send(Ljava/lang/String;Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;)V
    .locals 2
    .parameter "text"
    .parameter "callback"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->eventService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession$1;-><init>(Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;Ljava/lang/String;Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public send(Ljava/lang/String;Z)V
    .locals 1
    .parameter "text"
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->send(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->send(Ljava/lang/String;Lcom/wMyWebZone/plugins/omegle/event/MessageSendCallback;)V

    goto :goto_0
.end method

.method public stopLookingForCommonLikes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/Omegle;->STOP_LOOKING_FOR_COMMON_LIKES_URL:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->encodedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, resp:Ljava/lang/String;
    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop looking for common interests, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v2, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 204
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #resp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public submitRecaptcha(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "challenge"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->id:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "challenge"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v3, "response"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v3, Lcom/wMyWebZone/plugins/omegle/Omegle;->RECAPTCHA_SEND_URL:Ljava/net/URL;

    invoke-static {v3, v1}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, resp:Ljava/lang/String;
    const-string v3, "win"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    new-instance v3, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send recaptcha, response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v3, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 433
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #resp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public typing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    sget-object v2, Lcom/wMyWebZone/plugins/omegle/Omegle;->TYPING_URL:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->encodedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wMyWebZone/plugins/omegle/util/HttpUtil;->post(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, resp:Ljava/lang/String;
    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set state to typing, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #resp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;

    invoke-direct {v2, v0}, Lcom/wMyWebZone/plugins/omegle/core/OmegleException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #resp:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->typing:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSession;->typing:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    return-void

    .line 188
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
