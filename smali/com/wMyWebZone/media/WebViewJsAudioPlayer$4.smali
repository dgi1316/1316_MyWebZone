.class Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_callFunction(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    iput-object p2, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;->this$0:Lcom/wMyWebZone/media/WebViewJsAudioPlayer;

    #getter for: Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/wMyWebZone/media/WebViewJsAudioPlayer;->access$400(Lcom/wMyWebZone/media/WebViewJsAudioPlayer;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/wMyWebZone/media/WebViewJsAudioPlayer$4;->val$script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    return-void
.end method
