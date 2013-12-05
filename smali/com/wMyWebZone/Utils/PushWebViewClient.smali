.class public Lcom/wMyWebZone/Utils/PushWebViewClient;
.super Lcom/wMyWebZone/Utils/SimpleWebViewClient;
.source "PushWebViewClient.java"


# instance fields
.field _defaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter "defaultUrl"
    .parameter "activity"

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 19
    iput-object p1, p0, Lcom/wMyWebZone/Utils/PushWebViewClient;->_defaultUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private _proceedPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v5, p0, Lcom/wMyWebZone/Utils/PushWebViewClient;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 41
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/wMyWebZone/Utils/PushWebViewClient;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 43
    iget-object v5, p0, Lcom/wMyWebZone/Utils/PushWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 45
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 46
    iget-object v5, p0, Lcom/wMyWebZone/Utils/PushWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    const/4 v4, 0x1

    .line 57
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return v4

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityNotFoundException"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPageStarted() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Utils/PushWebViewClient;->_proceedPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 27
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Utils/PushWebViewClient;->_proceedPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
