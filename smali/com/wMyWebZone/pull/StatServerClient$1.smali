.class Lcom/wMyWebZone/pull/StatServerClient$1;
.super Ljava/lang/Thread;
.source "StatServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/pull/StatServerClient;->_sendRequestAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/pull/StatServerClient;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/pull/StatServerClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wMyWebZone/pull/StatServerClient$1;->this$0:Lcom/wMyWebZone/pull/StatServerClient;

    iput-object p2, p0, Lcom/wMyWebZone/pull/StatServerClient$1;->val$requestUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 95
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/wMyWebZone/pull/StatServerClient$1;->val$requestUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Cache-Control"

    const-string v4, "no-cache,no-store"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
