.class public Lcom/wMyWebZone/Utils/BrowserWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserWebChromeClient.java"


# static fields
.field public static final WEB_VIEW_LOG_PREFIX:Ljava/lang/String; = "webConsoleMessage"


# instance fields
.field private _webController:Lcom/wMyWebZone/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;)V
    .locals 0
    .parameter "webController"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    .line 26
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .parameter "consoleMessage"

    .prologue
    const/4 v5, 0x1

    .line 101
    const-string v0, "webConsoleMessage"

    const-string v1, "%s @ %d: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v5
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 73
    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 74
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 54
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->onHideCustomView()V

    .line 55
    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 79
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;-><init>(Lcom/wMyWebZone/Utils/BrowserWebChromeClient;Landroid/webkit/JsResult;)V

    new-instance v3, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$2;-><init>(Lcom/wMyWebZone/Utils/BrowserWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-static {v0, p3, v1, v2, v3}, Lcom/wMyWebZone/Utils/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v0, p2}, Lcom/wMyWebZone/Controllers/WebContentController;->setProgressBarState(I)V

    .line 31
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 47
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wMyWebZone/MainNavigationActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 49
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wMyWebZone/MainNavigationActivity;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "acceptType"
    .parameter "capture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1, p2}, Lcom/wMyWebZone/Utils/BrowserWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 60
    return-void
.end method
