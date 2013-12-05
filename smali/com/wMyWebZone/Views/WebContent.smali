.class public Lcom/wMyWebZone/Views/WebContent;
.super Lcom/wMyWebZone/Views/TabContent;
.source "WebContent.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/ITabDelegate;


# instance fields
.field private _browser:Lcom/wMyWebZone/Views/BrowserWebView;

.field private _navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

.field firstStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Views/TabContent;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

    .line 21
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 22
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 23
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Views/WebContent;->firstStart:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Views/TabContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

    .line 21
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 22
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 23
    iput-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Views/WebContent;->firstStart:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getBrowser()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public init(Lcom/wMyWebZone/Controllers/ITabContentController;)V
    .locals 8
    .parameter "tabContentController"

    .prologue
    const/4 v4, 0x0

    .line 37
    iput-object p1, p0, Lcom/wMyWebZone/Views/WebContent;->_tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

    .line 38
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wMyWebZone/Views/BrowserWebView;

    iput-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 39
    iget-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    const/16 v5, 0x82

    invoke-virtual {v3, v5}, Lcom/wMyWebZone/Views/BrowserWebView;->requestFocus(I)Z

    .line 40
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 42
    iget-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v3}, Lcom/wMyWebZone/Controllers/ITabContentController;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 43
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v2

    .line 44
    .local v2, urlBarState:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    sget-object v3, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    if-eq v2, v3, :cond_1

    .line 45
    new-instance v3, Lcom/wMyWebZone/Model/NavigationWidget;

    iget-object v5, p0, Lcom/wMyWebZone/Views/WebContent;->_tabContentController:Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabContentController;->getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getUrlBarMenuButtons()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/wMyWebZone/Model/NavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/wMyWebZone/Views/BrowserWebView;Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 48
    iget-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-virtual {v3}, Lcom/wMyWebZone/Model/NavigationWidget;->attachAutocomplete()V

    .line 49
    iget-object v5, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    sget-object v3, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/wMyWebZone/Model/NavigationWidget;->setHideOnInternalUrls(Z)V

    .line 51
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    iget-object v4, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-virtual {v3, v4}, Lcom/wMyWebZone/Factory/Factory;->setNavigationWidget(Lcom/wMyWebZone/Model/NavigationWidget;)V

    .line 57
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 49
    goto :goto_0

    .line 53
    :cond_1
    const v3, 0x7f0b0019

    invoke-virtual {p0, v3}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v3, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v3}, Lcom/wMyWebZone/Views/BrowserWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->setUrl(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public setActiveState(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p1, :cond_1

    .line 70
    iget-boolean v0, p0, Lcom/wMyWebZone/Views/WebContent;->firstStart:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v0}, Lcom/wMyWebZone/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    iget-object v0, p0, Lcom/wMyWebZone/Views/WebContent;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/BrowserWebView;->setInitialScale(I)V

    .line 76
    :goto_0
    invoke-virtual {p0, v2}, Lcom/wMyWebZone/Views/WebContent;->setVisibility(I)V

    .line 80
    :goto_1
    return-void

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/wMyWebZone/Views/WebContent;->firstStart:Z

    goto :goto_0

    .line 78
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/WebContent;->setVisibility(I)V

    goto :goto_1
.end method

.method public setLoadingCurtainType(Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;)V
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0b0039

    .line 103
    sget-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    if-ne p1, v0, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showProgressBarPanel()V
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method
