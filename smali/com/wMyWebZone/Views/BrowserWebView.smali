.class public Lcom/wMyWebZone/Views/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# static fields
.field private static final ALLOW_JS_DEBUGGING:Ljava/lang/Boolean;


# instance fields
.field private _firstUrl:Z

.field private _navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wMyWebZone/Views/BrowserWebView;->ALLOW_JS_DEBUGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_firstUrl:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 20
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_firstUrl:Z

    .line 25
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 29
    iget-boolean v2, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_firstUrl:Z

    if-eqz v2, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/wMyWebZone/Views/BrowserWebView;->init()V

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wMyWebZone/Views/BrowserWebView;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-virtual {v2}, Lcom/wMyWebZone/Model/NavigationWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, httpWithUrl:Ljava/lang/String;
    const-string v2, "(news|(ht|f)tp(s?)\\://){1}[\\S\\.]+\\.[\\S\\.]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    .end local v1           #httpWithUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void

    .line 39
    .restart local v1       #httpWithUrl:Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
