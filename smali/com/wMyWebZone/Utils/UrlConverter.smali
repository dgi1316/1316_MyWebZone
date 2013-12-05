.class public Lcom/wMyWebZone/Utils/UrlConverter;
.super Ljava/lang/Object;
.source "UrlConverter.java"


# instance fields
.field private _parentWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "parentWebView"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wMyWebZone/Utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    .line 17
    return-void
.end method


# virtual methods
.method public toAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    .line 59
    :try_start_0
    const-string v3, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    move-object v0, p1

    .line 61
    .local v0, absoluteUrl:Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/wMyWebZone/Utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, currentUrl:Ljava/net/URL;
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .end local v0           #absoluteUrl:Ljava/lang/String;
    .end local v1           #currentUrl:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 69
    .restart local v0       #absoluteUrl:Ljava/lang/String;
    .restart local v1       #currentUrl:Ljava/net/URL;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/[^/]+$"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v0           #absoluteUrl:Ljava/lang/String;
    .end local v1           #currentUrl:Ljava/net/URL;
    :cond_1
    move-object v0, p1

    .line 76
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 81
    const-string v0, ""

    goto :goto_0
.end method

.method public toFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, absoluteUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v2

    .line 46
    :cond_1
    :try_start_0
    const-string v3, "file:///"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/wMyWebZone/Utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "file:///android_asset/"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .local v2, stream:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 51
    .end local v2           #stream:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public toStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "url"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, absoluteUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 22
    const/4 v3, 0x0

    .line 37
    :goto_0
    return-object v3

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 26
    .local v3, stream:Ljava/io/InputStream;
    :try_start_0
    const-string v4, "file:///"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    iget-object v4, p0, Lcom/wMyWebZone/Utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "file:///android_asset/"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 30
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, parsedUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 34
    .end local v2           #parsedUrl:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
