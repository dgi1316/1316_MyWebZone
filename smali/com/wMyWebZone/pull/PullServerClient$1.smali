.class Lcom/wMyWebZone/pull/PullServerClient$1;
.super Ljava/lang/Thread;
.source "PullServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/pull/PullServerClient;->_sendRequestAsync(Ljava/lang/String;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/pull/PullServerClient;

.field final synthetic val$onResponseListener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/pull/PullServerClient;Ljava/lang/String;Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    iput-object p2, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->val$onResponseListener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 81
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v12, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->val$requestUrl:Ljava/lang/String;

    invoke-direct {v3, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v12, "Cache-Control"

    const-string v13, "no-cache,no-store"

    invoke-virtual {v3, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 86
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_3

    .line 87
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 89
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_2

    .line 90
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, json:Lorg/json/JSONObject;
    const-string v12, "timestamp"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 92
    .local v7, requestTime:J
    iget-object v12, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    iget-object v13, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    #getter for: Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;
    invoke-static {v13}, Lcom/wMyWebZone/pull/PullServerClient;->access$000(Lcom/wMyWebZone/pull/PullServerClient;)Landroid/content/Context;

    move-result-object v13

    #calls: Lcom/wMyWebZone/pull/PullServerClient;->_setLastRequestTime(Landroid/content/Context;J)V
    invoke-static {v12, v13, v7, v8}, Lcom/wMyWebZone/pull/PullServerClient;->access$100(Lcom/wMyWebZone/pull/PullServerClient;Landroid/content/Context;J)V

    .line 94
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 95
    .local v6, jsonViewUrls:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 96
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v10, v12, [Lcom/wMyWebZone/pull/PullServerClient$Response;

    .line 97
    .local v10, responses:[Lcom/wMyWebZone/pull/PullServerClient$Response;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 98
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 99
    .local v11, row:Lorg/json/JSONObject;
    new-instance v12, Lcom/wMyWebZone/pull/PullServerClient$Response;

    iget-object v13, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    invoke-direct {v12, v13}, Lcom/wMyWebZone/pull/PullServerClient$Response;-><init>(Lcom/wMyWebZone/pull/PullServerClient;)V

    aput-object v12, v10, v4

    .line 100
    aget-object v12, v10, v4

    const-string v13, "data"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wMyWebZone/pull/PullServerClient$Response;->url:Ljava/lang/String;

    .line 101
    aget-object v12, v10, v4

    const-string v13, "message"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wMyWebZone/pull/PullServerClient$Response;->message:Ljava/lang/String;

    .line 102
    aget-object v12, v10, v4

    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/wMyWebZone/pull/PullServerClient$Response;->title:Ljava/lang/String;

    .line 103
    aget-object v13, v10, v4

    const-string v12, "launchMain"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "launchMain"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    iput-object v12, v13, Lcom/wMyWebZone/pull/PullServerClient$Response;->launchMain:Ljava/lang/String;

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 106
    .end local v11           #row:Lorg/json/JSONObject;
    :cond_1
    iget-object v12, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->val$onResponseListener:Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;

    invoke-interface {v12, v10}, Lcom/wMyWebZone/pull/PullServerClient$onMessageReceivedListener;->onMessage([Lcom/wMyWebZone/pull/PullServerClient$Response;)V

    .line 117
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #jsonViewUrls:Lorg/json/JSONArray;
    .end local v7           #requestTime:J
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #responses:[Lcom/wMyWebZone/pull/PullServerClient$Response;
    :cond_2
    :goto_2
    return-void

    .line 111
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    iget-object v12, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    iget-object v13, p0, Lcom/wMyWebZone/pull/PullServerClient$1;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    #getter for: Lcom/wMyWebZone/pull/PullServerClient;->_context:Landroid/content/Context;
    invoke-static {v13}, Lcom/wMyWebZone/pull/PullServerClient;->access$000(Lcom/wMyWebZone/pull/PullServerClient;)Landroid/content/Context;

    move-result-object v13

    #calls: Lcom/wMyWebZone/pull/PullServerClient;->_rotateDomainUrls(Landroid/content/Context;)V
    invoke-static {v12, v13}, Lcom/wMyWebZone/pull/PullServerClient;->access$200(Lcom/wMyWebZone/pull/PullServerClient;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
