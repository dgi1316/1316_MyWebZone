.class public Lcom/wMyWebZone/Server/BaseServerClient;
.super Ljava/lang/Object;
.source "BaseServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;
    }
.end annotation


# static fields
.field protected static final CONNECTION_TIMEOUT:I = 0x7530

.field protected static final FORBIDDEN_RESPONSE:I = 0x193

.field protected static final OK_RESPONSE:I = 0xc8

.field protected static final SOCKET_TIMEOUT:I = 0x7530


# instance fields
.field protected _activity:Lcom/wMyWebZone/MainNavigationActivity;

.field protected _config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field protected _context:Landroid/content/Context;

.field protected _httpParameters:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    const/16 v1, 0x7530

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 49
    iput-object p1, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 52
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    .line 53
    iget-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    iget-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/16 v1, 0x7530

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 39
    iput-object p1, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_context:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 42
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    .line 43
    iget-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    iget-object v0, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "url"

    .prologue
    .line 95
    const/4 v3, 0x1

    .line 97
    .local v3, resp:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 100
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&test=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, testURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 102
    .local v0, con:Ljava/net/HttpURLConnection;
    const-string v5, "HEAD"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 104
    .local v2, iResp:I
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_0

    .line 105
    const/4 v3, 0x0

    .line 115
    .end local v0           #con:Ljava/net/HttpURLConnection;
    .end local v2           #iResp:I
    .end local v4           #testURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public loadHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, resp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 124
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&test=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, testURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 126
    .local v0, con:Ljava/net/HttpURLConnection;
    const-string v5, "HEAD"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 128
    .local v2, iResp:I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_0

    .line 131
    const/4 v3, 0x0

    .line 142
    .end local v0           #con:Ljava/net/HttpURLConnection;
    .end local v2           #iResp:I
    .end local v4           #testURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V
    .locals 1
    .parameter "requestUrl"
    .parameter "tag"
    .parameter "onResponseListener"

    .prologue
    .line 58
    new-instance v0, Lcom/wMyWebZone/Server/BaseServerClient$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/wMyWebZone/Server/BaseServerClient$1;-><init>(Lcom/wMyWebZone/Server/BaseServerClient;Ljava/lang/String;Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;I)V

    .line 73
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public sendRequestSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "requestURL"

    .prologue
    .line 79
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/wMyWebZone/Server/BaseServerClient;->_httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 81
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "Cache-Control"

    const-string v6, "no-cache,no-store"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v4, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 86
    .local v4, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-interface {v0, v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method
