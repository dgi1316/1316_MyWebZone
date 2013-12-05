.class public Lcom/wMyWebZone/media/WebViewJsAudioPlayer;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"


# static fields
.field public static JS_INTERFACE_NAME:Ljava/lang/String;


# instance fields
.field private _onLoadListener:Ljava/lang/String;

.field private _onTrackFinishedListener:Ljava/lang/String;

.field private _parentWebView:Landroid/webkit/WebView;

.field private _player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "AudioPlayer"

    sput-object v0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->JS_INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "parentWebView"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    .line 27
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    .line 28
    return-void
.end method

.method private _callFunction(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "functionName"
    .parameter "args"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, callString:Ljava/lang/StringBuilder;
    const-string v7, "javascript:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p2, :cond_1

    .line 144
    const/4 v5, 0x0

    .line 145
    .local v5, numArgs:I
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 146
    .local v0, arg:Ljava/lang/String;
    if-lez v5, :cond_0

    .line 147
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v7, "\'"

    const-string v8, "\'"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #numArgs:I
    :cond_1
    const-string v7, ");"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, script:Ljava/lang/String;
    iget-object v7, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;

    invoke-direct {v8, p0, v6}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;-><init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method private _playInternet(Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    .local v1, playUri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 50
    iget-object v2, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 51
    iget-object v2, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 66
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private _playLocal(Ljava/lang/String;)V
    .locals 9
    .parameter "url"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    new-instance v6, Lcom/wMyWebZone/Utils/UrlConverter;

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-direct {v6, v0}, Lcom/wMyWebZone/Utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 71
    .local v6, converter:Lcom/wMyWebZone/Utils/UrlConverter;
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v6, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 74
    .local v8, fileDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 77
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 93
    .end local v8           #fileDescriptor:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v7

    .line 80
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 83
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 86
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 89
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private _setPlayerEvenets()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;-><init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 107
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;-><init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$3;-><init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_callFunction(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, currentPosition:I
    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 181
    :cond_0
    return v0
.end method

.method public getDuration()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, duration:I
    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 172
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 198
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lcom/wMyWebZone/Utils/UrlConverter;

    iget-object v2, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/wMyWebZone/Utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 33
    .local v1, normalizer:Lcom/wMyWebZone/Utils/UrlConverter;
    invoke-virtual {v1, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, absoluteUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->stop()V

    .line 35
    invoke-direct {p0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_setPlayerEvenets()V

    .line 36
    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-direct {p0, v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_playLocal(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_playInternet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 205
    :cond_0
    return-void
.end method

.method public setOnLoadListener(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setOnTrackFinishedListener(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 191
    :cond_1
    return-void
.end method
