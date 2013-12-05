.class Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_setPlayerEvenets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$000(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$000(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$1;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$000(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_callFunction(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$100(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 104
    return-void
.end method
