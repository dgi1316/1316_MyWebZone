.class public Lcom/wMyWebZone/Model/NavigationWidget;
.super Ljava/lang/Object;
.source "NavigationWidget.java"


# instance fields
.field private _browser:Lcom/wMyWebZone/Views/BrowserWebView;

.field private _customIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;",
            ">;"
        }
    .end annotation
.end field

.field private _defaultBottomBrowserMargin:I

.field private _defaultLeftBrowserMargin:I

.field private _defaultRightBrowserMargin:I

.field private _defaultTopBrowserMargin:I

.field private _defaultUrl:Ljava/lang/String;

.field private _hideOnInternalUrls:Z

.field private _history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

.field private _onUaChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private _parent:Landroid/view/ViewGroup;

.field private _refreshOnclickListener:Landroid/view/View$OnClickListener;

.field private _stopOnclickListener:Landroid/view/View$OnClickListener;

.field private _visible:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/wMyWebZone/Views/BrowserWebView;Ljava/util/Collection;)V
    .locals 2
    .parameter "parent"
    .parameter "defaultUrl"
    .parameter "browser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/Views/BrowserWebView;",
            "Ljava/util/Collection",
            "<",
            "Lcom/wMyWebZone/Configuration/UrlBarMenuButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, urlBarMenuButtons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/wMyWebZone/Configuration/UrlBarMenuButton;>;"
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_hideOnInternalUrls:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 43
    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultLeftBrowserMargin:I

    .line 44
    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultRightBrowserMargin:I

    .line 45
    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultTopBrowserMargin:I

    .line 46
    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultBottomBrowserMargin:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_visible:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/wMyWebZone/Model/NavigationWidget$1;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Model/NavigationWidget$1;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_stopOnclickListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/wMyWebZone/Model/NavigationWidget$2;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Model/NavigationWidget$2;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v0, Lcom/wMyWebZone/Model/NavigationWidget$3;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Model/NavigationWidget$3;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_onUaChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 81
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 82
    iput-object p2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultUrl:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    .line 84
    invoke-direct {p0, p4}, Lcom/wMyWebZone/Model/NavigationWidget;->_createMenuButtons(Ljava/util/Collection;)V

    .line 85
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_initEventHandlers()V

    .line 86
    return-void
.end method

.method private _createMenuButtons(Ljava/util/Collection;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/wMyWebZone/Configuration/UrlBarMenuButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, buttons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/wMyWebZone/Configuration/UrlBarMenuButton;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 184
    :cond_0
    return-void

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v16, 0x7f0b001a

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    .local v1, additionalMenu:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 94
    .local v5, context:Landroid/content/Context;
    const-string v15, "layout_inflater"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 96
    .local v10, inflater:Landroid/view/LayoutInflater;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    .line 97
    .local v2, button:Lcom/wMyWebZone/Configuration/UrlBarMenuButton;
    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;->getType()Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v13

    .line 98
    .local v13, type:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_2

    .line 99
    const v15, 0x7f03000f

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    .line 100
    .local v4, compoundButtonView:Landroid/widget/CompoundButton;
    const v15, 0x7f080033

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_onUaChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v15}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 103
    .end local v4           #compoundButtonView:Landroid/widget/CompoundButton;
    :cond_2
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_4

    move-object v8, v2

    .line 104
    check-cast v8, Lcom/wMyWebZone/Configuration/UrlBarIcon;

    .line 105
    .local v8, icon:Lcom/wMyWebZone/Configuration/UrlBarIcon;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getTitle()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v16, 0x7f0b001b

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 107
    .local v12, topNavigationRow:Landroid/view/ViewGroup;
    const v15, 0x7f03000d

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 108
    .local v9, inflatedView:Landroid/view/ViewGroup;
    new-instance v6, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;

    invoke-direct {v6, v9}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;-><init>(Landroid/view/ViewGroup;)V

    .line 109
    .local v6, customIcon:Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;
    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getIcon()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getIcon()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 110
    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getIcon()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->updateIcon(Ljava/lang/String;)V

    .line 112
    :cond_3
    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, url:Ljava/lang/String;
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14}, Lcom/wMyWebZone/Model/NavigationWidget$4;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v12, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 124
    .end local v6           #customIcon:Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;
    .end local v8           #icon:Lcom/wMyWebZone/Configuration/UrlBarIcon;
    .end local v9           #inflatedView:Landroid/view/ViewGroup;
    .end local v12           #topNavigationRow:Landroid/view/ViewGroup;
    .end local v14           #url:Ljava/lang/String;
    :cond_4
    const v15, 0x7f03000e

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 125
    .local v3, buttonView:Landroid/widget/Button;
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_6

    .line 126
    const v15, 0x7f080027

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wMyWebZone/Model/NavigationWidget$5;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_7

    .line 134
    const v15, 0x7f080028

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wMyWebZone/Model/NavigationWidget$6;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 141
    :cond_7
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_8

    .line 142
    const v15, 0x7f080029

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wMyWebZone/Model/NavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 144
    :cond_8
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->PIN_TO_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_9

    .line 145
    const v15, 0x7f080021

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wMyWebZone/Model/NavigationWidget$7;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 152
    :cond_9
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_a

    .line 153
    const v15, 0x7f080034

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wMyWebZone/Model/NavigationWidget$8;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 160
    :cond_a
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_b

    .line 161
    const v15, 0x7f08002a

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/wMyWebZone/Model/NavigationWidget$9;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 168
    :cond_b
    sget-object v15, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    if-ne v13, v15, :cond_5

    move-object v11, v2

    .line 169
    check-cast v11, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;

    .line 170
    .local v11, linkButton:Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;
    invoke-virtual {v11}, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v11}, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 172
    .restart local v14       #url:Ljava/lang/String;
    new-instance v15, Lcom/wMyWebZone/Model/NavigationWidget$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14}, Lcom/wMyWebZone/Model/NavigationWidget$10;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method private _hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/BrowserWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 326
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultLeftBrowserMargin:I

    .line 327
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultRightBrowserMargin:I

    .line 328
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultTopBrowserMargin:I

    .line 329
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultBottomBrowserMargin:I

    .line 331
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    iput-boolean v3, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_visible:Z

    .line 333
    return-void
.end method

.method private _initEventHandlers()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 192
    .local v0, urlTextBox:Landroid/widget/AutoCompleteTextView;
    new-instance v1, Lcom/wMyWebZone/Model/NavigationWidget$11;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/NavigationWidget$11;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 198
    return-void
.end method

.method private _isLocalUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 367
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private _onAddToStartPageClick()V
    .locals 9

    .prologue
    .line 238
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v6

    invoke-interface {v6}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v3

    .line 239
    .local v3, tab:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-virtual {v3}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 240
    .local v5, view:Landroid/webkit/WebView;
    invoke-virtual {v3}, Lcom/wMyWebZone/Controllers/WebContentController;->getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, homeLink:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, currentLink:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 243
    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, title:Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v4, v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v2

    .line 246
    .local v2, homepageManager:Lcom/wMyWebZone/storage/BookmarksManager;
    invoke-virtual {v2, v4, v0}, Lcom/wMyWebZone/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080035

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 249
    .end local v2           #homepageManager:Lcom/wMyWebZone/storage/BookmarksManager;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private _onClickBackButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 252
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 254
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 256
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 258
    :cond_0
    return-void
.end method

.method private _onClickForwardButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 261
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 262
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 264
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 266
    :cond_0
    return-void
.end method

.method private _onHomeButtonClick()V
    .locals 4

    .prologue
    .line 231
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v1

    .line 232
    .local v1, tab:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-virtual {v1}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 233
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Lcom/wMyWebZone/Controllers/WebContentController;->getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, homeLink:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private _onPinToHomeScreenButtonClick()V
    .locals 4

    .prologue
    .line 217
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 218
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, url:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const-string v1, ""

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 225
    :cond_1
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/wMyWebZone/Utils/ShortcutFabric;->createShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method private _onUrlTextBoxKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 201
    move-object v2, p1

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 202
    .local v2, urlTextBox:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    const/16 v5, 0x42

    if-ne p2, v5, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v5

    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 206
    .local v3, webView:Landroid/webkit/WebView;
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 208
    iget-object v5, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 209
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 213
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #url:Ljava/lang/String;
    .end local v3           #webView:Landroid/webkit/WebView;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private _show()V
    .locals 5

    .prologue
    .line 336
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_browser:Lcom/wMyWebZone/Views/BrowserWebView;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/BrowserWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_visible:Z

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/wMyWebZone/Model/NavigationWidget;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/Model/NavigationWidget;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->_onClickBackButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wMyWebZone/Model/NavigationWidget;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->_onClickForwardButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_onPinToHomeScreenButtonClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_onAddToStartPageClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_onHomeButtonClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/wMyWebZone/Model/NavigationWidget;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/wMyWebZone/Model/NavigationWidget;->_onUrlTextBoxKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/wMyWebZone/Model/NavigationWidget;)Lcom/wMyWebZone/storage/BrowsingHistoryStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    return-object v0
.end method


# virtual methods
.method public attachAutocomplete()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    .line 269
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    .line 272
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v4, v1

    .line 275
    .local v4, from:[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 276
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 278
    .local v0, cursorAdapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lcom/wMyWebZone/Model/NavigationWidget$12;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/NavigationWidget$12;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 287
    new-instance v1, Lcom/wMyWebZone/Model/NavigationWidget$13;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/NavigationWidget$13;-><init>(Lcom/wMyWebZone/Model/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V

    .line 295
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    .line 296
    .local v6, textView:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v6, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    return-void

    .line 275
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0xbt 0x7ft
        0xct 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public getCustomIcons()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_visible:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 300
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 302
    .local v1, now:Ljava/util/Date;
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->addHistoryItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 304
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 305
    .local v0, button:Landroid/widget/ImageButton;
    const v2, 0x7f020015

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 306
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .end local v0           #button:Landroid/widget/ImageButton;
    .end local v1           #now:Ljava/util/Date;
    :cond_0
    return-void
.end method

.method public onPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 312
    .local v0, button:Landroid/widget/ImageButton;
    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 313
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_stopOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p0, p2}, Lcom/wMyWebZone/Model/NavigationWidget;->setUrl(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    .line 318
    .local v1, drawer:Landroid/widget/SlidingDrawer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 320
    :cond_0
    return-void
.end method

.method public setHideOnInternalUrls(Z)V
    .locals 0
    .parameter "isHidden"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_hideOnInternalUrls:Z

    .line 188
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 348
    iget-boolean v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_hideOnInternalUrls:Z

    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->_isLocalUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_hide()V

    .line 356
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    :goto_1
    return-void

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/wMyWebZone/Model/NavigationWidget;->_show()V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 358
    .local v0, urlTextBox:Landroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->_isLocalUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
