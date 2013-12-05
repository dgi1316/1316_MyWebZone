.class Lcom/wMyWebZone/media/WebViewJsAudioPlayer$3;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 116
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$3;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$3;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$300(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 120
    const/4 v0, 0x0

    return v0
.end method
