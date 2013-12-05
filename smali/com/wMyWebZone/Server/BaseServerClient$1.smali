.class Lcom/wMyWebZone/Server/BaseServerClient$1;
.super Ljava/lang/Thread;
.source "BaseServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Server/BaseServerClient;

.field final synthetic val$onResponseListener:Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Server/BaseServerClient;Ljava/lang/String;Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->this$0:Lcom/wMyWebZone/Server/BaseServerClient;

    iput-object p2, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$onResponseListener:Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;

    iput p4, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->this$0:Lcom/wMyWebZone/Server/BaseServerClient;

    iget-object v3, v3, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 62
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$requestUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Cache-Control"

    const-string v4, "no-cache,no-store"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 66
    .local v2, response:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$onResponseListener:Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;

    iget-object v4, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$requestUrl:Ljava/lang/String;

    iget v5, p0, Lcom/wMyWebZone/Server/BaseServerClient$1;->val$tag:I

    invoke-interface {v3, v4, v5, v2}, Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;->onRequestDone(Ljava/lang/String;ILorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v3

    goto :goto_0
.end method
