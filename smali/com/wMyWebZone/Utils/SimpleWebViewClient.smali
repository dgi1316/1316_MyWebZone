.class public Lcom/wMyWebZone/Utils/SimpleWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SimpleWebViewClient.java"


# instance fields
.field _activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method private _handleMailTo(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v1

    .line 82
    .local v1, mt:Landroid/net/MailTo;
    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "android.intent.extra.CC"

    invoke-virtual {v1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private _handleSmsTo(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 67
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, urlParts:[Ljava/lang/String;
    aget-object v1, v3, v5

    .line 69
    .local v1, phone:Ljava/lang/String;
    const-string v0, ""

    .line 70
    .local v0, body:Ljava/lang/String;
    array-length v4, v3

    if-le v4, v5, :cond_0

    .line 71
    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 74
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smsto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v2, smsIntent:Landroid/content/Intent;
    const-string v4, "address"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 96
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 25
    :try_start_0
    invoke-static {p2}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 26
    invoke-direct {p0, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_handleMailTo(Ljava/lang/String;)V

    .line 63
    :goto_0
    return v5

    .line 29
    :cond_0
    const-string v7, "tel:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 63
    goto :goto_0

    .line 34
    :cond_2
    :try_start_1
    const-string v7, "market:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "geo:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 36
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const-string v7, "smsto:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 41
    invoke-direct {p0, p2}, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_handleSmsTo(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_5
    const-string v7, "http:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "https:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "file:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "about:blank"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v2, internetIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 50
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 51
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1

    .line 52
    iget-object v7, p0, Lcom/wMyWebZone/Utils/SimpleWebViewClient;->_activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
