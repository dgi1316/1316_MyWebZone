.class public Lcom/wMyWebZone/MessageViewer;
.super Landroid/app/Activity;
.source "MessageViewer.java"


# instance fields
.field _activity:Landroid/app/Activity;

.field _browser:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    return-void
.end method

.method private destroyActivity()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    .line 27
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Lcom/wMyWebZone/MessageViewer;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/wMyWebZone/MessageViewer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 31
    const-string v5, "title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/wMyWebZone/MessageViewer;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 35
    const v5, 0x7f0b0018

    invoke-virtual {p0, v5}, Lcom/wMyWebZone/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    .line 36
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    new-instance v6, Lcom/wMyWebZone/Utils/PushWebViewClient;

    invoke-direct {v6, v4, p0}, Lcom/wMyWebZone/Utils/PushWebViewClient;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    new-instance v6, Lcom/wMyWebZone/MessageViewer$1;

    invoke-direct {v6, p0}, Lcom/wMyWebZone/MessageViewer$1;-><init>(Lcom/wMyWebZone/MessageViewer;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 41
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 42
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 44
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 45
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 46
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 49
    const-wide/32 v5, 0x500000

    invoke-virtual {v2, v5, v6}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 51
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 56
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 57
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 58
    iget-object v5, p0, Lcom/wMyWebZone/MessageViewer;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 62
    .end local v2           #settings:Landroid/webkit/WebSettings;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/wMyWebZone/pull/PullServerController;

    invoke-direct {v1}, Lcom/wMyWebZone/pull/PullServerController;-><init>()V

    .line 63
    .local v1, receiver:Lcom/wMyWebZone/pull/PullServerController;
    invoke-virtual {v1, p0}, Lcom/wMyWebZone/pull/PullServerController;->reScheduleNotification(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    invoke-direct {p0}, Lcom/wMyWebZone/MessageViewer;->destroyActivity()V

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 86
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wMyWebZone/MessageViewer;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v2, "ok"

    new-instance v3, Lcom/wMyWebZone/MessageViewer$2;

    invoke-direct {v3, p0}, Lcom/wMyWebZone/MessageViewer$2;-><init>(Lcom/wMyWebZone/MessageViewer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 117
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 119
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
