.class Lcom/wMyWebZone/Utils/JavascriptInterface$1;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

.field final synthetic val$resultCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$1;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$1;->val$resultCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILorg/apache/http/HttpResponse;)V
    .locals 9
    .parameter "requestUrl"
    .parameter "tag"
    .parameter "response"

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 66
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    const-string v5, ""

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    .local v5, stringResponse:Ljava/lang/String;
    :goto_1
    const-string v6, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'"

    const-string v8, "\\\'"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v6, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$1;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-static {v6}, Lcom/wMyWebZone/Utils/JavascriptInterface;->access$000(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javascript:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$1;->val$resultCallback:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void

    .line 72
    .end local v5           #stringResponse:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5       #stringResponse:Ljava/lang/String;
    goto :goto_1
.end method
