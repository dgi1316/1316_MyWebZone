.class public Lcom/wMyWebZone/ads/BottomBannerLayout;
.super Ljava/lang/Object;
.source "BottomBannerLayout.java"

# interfaces
.implements Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;
    }
.end annotation


# static fields
.field static final AD_MOB_VIEW_ID:I = 0x1234

.field static final DEFAULT_BANNER_WIDTH:I = 0x140

.field static final UNSET_PX:F = -1.0f


# instance fields
.field _activity:Landroid/app/Activity;

.field _bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

.field private _defaultTabContentsVisibility:I

.field private _defaultTagsPanelVisibility:I

.field _height:I

.field private _px:F

.field _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_px:F

    .line 61
    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTagsPanelVisibility:I

    .line 62
    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTabContentsVisibility:I

    .line 41
    return-void
.end method

.method private _replaceAdMobView(Ljava/lang/String;)Lcom/google/ads/AdView;
    .locals 5
    .parameter "publisherId"

    .prologue
    const/16 v4, 0x1234

    .line 237
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 239
    .local v0, layout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 241
    new-instance v1, Lcom/google/ads/AdView;

    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 242
    .local v1, view:Lcom/google/ads/AdView;
    invoke-virtual {v1, v4}, Lcom/google/ads/AdView;->setId(I)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 245
    return-object v1
.end method

.method private getScale()I
    .locals 5

    .prologue
    .line 180
    iget v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4074

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 182
    .local v0, val:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method protected _applySize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 149
    iget-object v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v5, 0x7f0b0005

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Views/TransparentPanel;

    .line 153
    .local v1, panel:Lcom/wMyWebZone/Views/TransparentPanel;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 154
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    iget v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_px:F

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    .local v2, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    const/high16 v5, 0x3f80

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_px:F

    .line 163
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_0
    iget v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_px:F

    const/high16 v5, 0x4000

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 164
    iget-object v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v4, v7, v7, v7, v7}, Lcom/wMyWebZone/Views/BrowserWebView;->setPadding(IIII)V

    .line 165
    iget-object v4, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-direct {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->getScale()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wMyWebZone/Views/BrowserWebView;->setInitialScale(I)V

    .line 168
    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    add-int/lit8 v5, v5, 0x6

    if-ge v4, v5, :cond_2

    .line 169
    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v4, v4, -0x6

    int-to-float v4, v4

    iget v5, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_height:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40c0

    add-float v3, v4, v5

    .line 172
    .local v3, relation:F
    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    .end local v3           #relation:F
    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    add-int/lit8 v5, v5, 0x6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TransparentPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_height:I

    add-int/lit8 v5, v5, 0x6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected _hideViewsForFullscreen()V
    .locals 6

    .prologue
    const v5, 0x7f0b002e

    const/16 v4, 0x8

    .line 138
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, tabtagsPanel:Landroid/view/View;
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, tabContentsPanel:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTagsPanelVisibility:I

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTabContentsVisibility:I

    .line 144
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void
.end method

.method protected _showViewsForFullscreen()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTagsPanelVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTabContentsVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-void
.end method

.method public acceptBehavior(Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;)V
    .locals 2
    .parameter "visitor"

    .prologue
    .line 188
    instance-of v1, p1, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 189
    check-cast v0, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerLayoutBehavior;

    .line 190
    .local v0, behavior:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-interface {v0, p0}, Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;->visit(Lcom/wMyWebZone/ads/behavior/BehaviorAcceptor;)V

    .line 192
    .end local v0           #behavior:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :cond_0
    return-void
.end method

.method public applyDefaultSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v1, v3}, Lcom/wMyWebZone/Views/BrowserWebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v1, v3}, Lcom/wMyWebZone/Views/BrowserWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 86
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    .line 90
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_height:I

    .line 92
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_applySize()V

    .line 93
    invoke-virtual {p0, v3}, Lcom/wMyWebZone/ads/BottomBannerLayout;->setFullscreenMode(Z)V

    .line 95
    return-void
.end method

.method public hideBanner()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/TransparentPanel;

    .line 197
    .local v0, panel:Lcom/wMyWebZone/Views/TransparentPanel;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/TransparentPanel;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Views/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 199
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_showViewsForFullscreen()V

    .line 200
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/wMyWebZone/ads/AdsLoader;)V
    .locals 5
    .parameter "activity"
    .parameter "adsLoader"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    .line 66
    const v2, 0x7f0b0007

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wMyWebZone/Views/BrowserWebView;

    iput-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 68
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_bannerBrowser:Lcom/wMyWebZone/Views/BrowserWebView;

    new-instance v3, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    invoke-direct {v3, p0, p2}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;-><init>(Lcom/wMyWebZone/ads/BottomBannerLayout;Lcom/wMyWebZone/ads/AdsLoader;)V

    sget-object v4, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/wMyWebZone/Views/BrowserWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, tabtagsPanel:Landroid/view/View;
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, tabContentsPanel:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTagsPanelVisibility:I

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_defaultTabContentsVisibility:I

    .line 77
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->applyDefaultSettings()V

    .line 78
    return-void
.end method

.method public setFullscreenMode(Z)V
    .locals 2
    .parameter "isFullScreen"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    .line 127
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_height:I

    .line 129
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_applySize()V

    .line 131
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_hideViewsForFullscreen()V

    .line 135
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_showViewsForFullscreen()V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 115
    if-gtz p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_height:I

    .line 118
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_applySize()V

    goto :goto_0
.end method

.method public setPosition(Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 98
    sget-object v2, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->BOTTOM:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    if-ne p1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, bannerPanel:Landroid/view/View;
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, contentFrame:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 105
    .end local v0           #bannerPanel:Landroid/view/View;
    .end local v1           #contentFrame:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 108
    if-gtz p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput p1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_width:I

    .line 111
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_applySize()V

    goto :goto_0
.end method

.method public showBanner()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/TransparentPanel;

    .line 205
    .local v0, panel:Lcom/wMyWebZone/Views/TransparentPanel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Views/TransparentPanel;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_showViewsForFullscreen()V

    .line 207
    return-void
.end method

.method public switchToAdMobAd(Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V
    .locals 4
    .parameter "adMobParameters"

    .prologue
    .line 227
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getPublisherId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wMyWebZone/ads/BottomBannerLayout;->_replaceAdMobView(Ljava/lang/String;)Lcom/google/ads/AdView;

    move-result-object v0

    .line 230
    .local v0, adView:Lcom/google/ads/AdView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 232
    new-instance v1, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;

    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-direct {v1, v2, p1}, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;-><init>(Lcom/google/ads/AdRequest;Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V

    .line 233
    .local v1, parameterizedRequest:Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;
    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->getRequest()Lcom/google/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 234
    return-void
.end method

.method public switchToHtmlAd()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 219
    .local v1, layout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const/16 v3, 0x1234

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, adMobView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/wMyWebZone/ads/BottomBannerLayout;->_activity:Landroid/app/Activity;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void
.end method
