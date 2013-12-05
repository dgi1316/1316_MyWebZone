.class Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 107
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$200(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$200(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$2;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;
    invoke-static {v1}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$200(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_callFunction(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$100(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
