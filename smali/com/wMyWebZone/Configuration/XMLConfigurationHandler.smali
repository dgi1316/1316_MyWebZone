.class public Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLConfigurationHandler.java"


# static fields
.field private static final PROP_FILE:Ljava/lang/String; = "file"

.field private static final PROP_ICON:Ljava/lang/String; = "icon"

.field private static final PROP_IMAGE:Ljava/lang/String; = "image"

.field private static final PROP_NAME:Ljava/lang/String; = "name"

.field private static final PROP_PATTERN:Ljava/lang/String; = "pattern"

.field private static final PROP_REGEXP:Ljava/lang/String; = "regexp"

.field private static final PROP_TITLE:Ljava/lang/String; = "title"

.field private static final PROP_URL:Ljava/lang/String; = "url"

.field private static final TAG_ACCEPT_COOKIE:Ljava/lang/String; = "acceptCookie"

.field private static final TAG_AFFILIATE:Ljava/lang/String; = "affiliate"

.field private static final TAG_BANNER_POSITION:Ljava/lang/String; = "bannerPosition"

.field private static final TAG_BLOCK_APP_FROM_SLEEP:Ljava/lang/String; = "preventFromSleep"

.field private static final TAG_BUTTON:Ljava/lang/String; = "button"

.field private static final TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG_CONTENT_HEIGHT:Ljava/lang/String; = "height"

.field private static final TAG_CONTENT_PROTECTION:Ljava/lang/String; = "contentProtection"

.field private static final TAG_CONTENT_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG_DOWNLOAD_ACTION:Ljava/lang/String; = "downloadAction"

.field private static final TAG_ENABLE_FULLSCREEN_BANNER:Ljava/lang/String; = "enableFullScreenBanner"

.field private static final TAG_ENABLE_ON_EXIT_FULLSCREEN_BANNER:Ljava/lang/String; = "enableOnExitFullScreenBanner"

.field private static final TAG_ENABLE_URL_BAR:Ljava/lang/String; = "enableUrlBar"

.field private static final TAG_FULL_SCREEN_MODE:Ljava/lang/String; = "fullScreenMode"

.field private static final TAG_GET_STRING:Ljava/lang/String; = "getString"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_INJECT_JS:Ljava/lang/String; = "injectJS"

.field private static final TAG_IS_ABOUT_SCREEN_ENABLED:Ljava/lang/String; = "enableAboutScreen"

.field private static final TAG_IS_REDIRECT_ENABLED:Ljava/lang/String; = "enableRedirection"

.field private static final TAG_LINK:Ljava/lang/String; = "link"

.field private static final TAG_LOADING_CURTAIN:Ljava/lang/String; = "loadingCurtain"

.field private static final TAG_LOCATON_URL:Ljava/lang/String; = "locationUrl"

.field private static final TAG_LOGIN:Ljava/lang/String; = "login"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG_PUBLISHER_NAME:Ljava/lang/String; = "publisher"

.field private static final TAG_RATE_ITEM_VISIBILITY:Ljava/lang/String; = "rateItemVisibility"

.field private static final TAG_REGISTERED_URL:Ljava/lang/String; = "registeredUrl"

.field private static final TAG_SCRIPT:Ljava/lang/String; = "script"

.field private static final TAG_SHOW_ABOUT_MENU_ITEM:Ljava/lang/String; = "showAboutMenuItem"

.field private static final TAG_SHOW_EXIT_MENU_ITEM:Ljava/lang/String; = "showExitMenuItem"

.field private static final TAG_SHOW_REFRESH_MENU_ITEM:Ljava/lang/String; = "showRefreshMenuItem"

.field private static final TAG_SHOW_SHARE_MENU_ITEM:Ljava/lang/String; = "showShareMenuItem"

.field private static final TAG_SPLASH_SCREEN:Ljava/lang/String; = "splashScreen"

.field private static final TAG_TAB_ICON:Ljava/lang/String; = "tabIcon"

.field private static final TAG_TAB_ID:Ljava/lang/String; = "tabId"

.field private static final TAG_TAB_NAME:Ljava/lang/String; = "tabName"

.field private static final TAG_UPDATE:Ljava/lang/String; = "update"

.field private static final TAG_URL_BAR_MENU_ITEMS:Ljava/lang/String; = "urlBarMenuItems"

.field private static final TAG_USAGE:Ljava/lang/String; = "usage"

.field private static final TAG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field private static final TAG_USER_INTERFACE:Ljava/lang/String; = "userInterface"

.field private static final TAG_WIDGET_NAME:Ljava/lang/String; = "widgetName"


# instance fields
.field private _currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

.field private builder:Ljava/lang/StringBuilder;

.field private current2ndParentTag:Ljava/lang/String;

.field private currentParentTag:Ljava/lang/String;

.field private inInjectJsTag:Ljava/lang/Boolean;

.field private scriptTagsFound:Ljava/lang/Boolean;

.field private webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field private widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;)V
    .locals 2
    .parameter "webWidgetConfiguration"
    .parameter "widgetsController"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    .line 91
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 92
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    .line 93
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 101
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 183
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "fullScreenMode"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    const-string v6, ""

    iput-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 382
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    return-void

    .line 187
    :cond_1
    const-string v8, "registeredUrl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "usage"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "locationUrl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "content"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "contentProtection"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "affiliate"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "urlBarMenuItems"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 195
    :cond_2
    const-string v6, ""

    iput-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 196
    const-string v6, "content"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-interface {v6, v8}, Lcom/wMyWebZone/Controllers/IWidgetsController;->addWidget(Lcom/wMyWebZone/Model/WidgetEntity;)V

    .line 198
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    const-string v9, "fullScreenMode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 202
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v8, "content"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    const-string v6, "id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 205
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_4
    const-string v6, "name"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 208
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_5
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 210
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    const-string v6, "update"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 213
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 215
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_0

    .line 217
    :cond_7
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_0

    .line 218
    :cond_8
    const-string v6, "width"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 219
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setWidth(I)V

    goto/16 :goto_0

    .line 221
    :cond_9
    const-string v6, "height"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 222
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 223
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setHeight(I)V

    goto/16 :goto_0

    .line 225
    :cond_a
    const-string v6, "tabName"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 226
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setTabName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_b
    const-string v6, "tabIcon"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 229
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 230
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setTabIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_c
    const-string v6, "injectJS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 232
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    .line 233
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setInjectJS(Ljava/lang/String;)V

    .line 235
    :cond_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    .line 236
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 237
    :cond_e
    const-string v6, "loadingCurtain"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 238
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 239
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, typeName:Ljava/lang/String;
    sget-object v2, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 241
    .local v2, type:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_10

    .line 242
    sget-object v2, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 250
    :cond_f
    :goto_1
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v6, v2}, Lcom/wMyWebZone/Model/WidgetEntity;->setLoadingCurtainType(Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;)V

    goto/16 :goto_0

    .line 243
    :cond_10
    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_11

    .line 244
    sget-object v2, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    goto :goto_1

    .line 245
    :cond_11
    const-string v6, "banner"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_12

    .line 246
    sget-object v2, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    goto :goto_1

    .line 247
    :cond_12
    const-string v6, "custom"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    .line 248
    sget-object v2, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    goto :goto_1

    .line 252
    .end local v2           #type:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
    .end local v3           #typeName:Ljava/lang/String;
    :cond_13
    const-string v6, "userAgent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 253
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v6, :cond_0

    .line 254
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_14
    const-string v6, "tabId"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Model/WidgetEntity;->setTabId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_15
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "registeredUrl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 260
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setRegisteredUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_16
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "usage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 264
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setAddUsageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_17
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "locationUrl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 268
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setLocationUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_18
    const-string v8, "id"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 272
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\t"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setApplicationId(I)V

    goto/16 :goto_0

    .line 275
    :cond_19
    const-string v8, "widgetName"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 276
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setWidgetName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_1a
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "contentProtection"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 278
    const-string v6, "login"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 279
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setHttpAccessLogin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_1b
    const-string v6, "password"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setHttpAccessPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_1c
    const-string v8, "userInterface"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 284
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, value:Ljava/lang/String;
    const-string v6, "standard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 286
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    sget-object v8, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_0

    .line 287
    :cond_1d
    const-string v6, "custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    sget-object v8, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_0

    .line 290
    .end local v5           #value:Ljava/lang/String;
    :cond_1e
    const-string v8, "bannerPosition"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 291
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5       #value:Ljava/lang/String;
    const-string v6, "top"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 293
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    sget-object v8, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->TOP:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setBannerPosition(Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;)V

    goto/16 :goto_0

    .line 294
    :cond_1f
    const-string v6, "bottom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    sget-object v8, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->BOTTOM:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setBannerPosition(Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;)V

    goto/16 :goto_0

    .line 297
    .end local v5           #value:Ljava/lang/String;
    :cond_20
    const-string v8, "rateItemVisibility"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 298
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 300
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_0

    .line 302
    :cond_21
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_0

    .line 304
    .end local v5           #value:Ljava/lang/String;
    :cond_22
    const-string v8, "acceptCookie"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 305
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 307
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_0

    .line 309
    :cond_23
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_0

    .line 311
    .end local v5           #value:Ljava/lang/String;
    :cond_24
    const-string v8, "preventFromSleep"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 312
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 314
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_0

    .line 316
    :cond_25
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_0

    .line 318
    .end local v5           #value:Ljava/lang/String;
    :cond_26
    const-string v8, "showRefreshMenuItem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 319
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 320
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 321
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_0

    .line 323
    :cond_27
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_0

    .line 325
    .end local v5           #value:Ljava/lang/String;
    :cond_28
    const-string v8, "showShareMenuItem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 326
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 328
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_0

    .line 330
    :cond_29
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_0

    .line 332
    .end local v5           #value:Ljava/lang/String;
    :cond_2a
    const-string v8, "showAboutMenuItem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 333
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 335
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_0

    .line 337
    :cond_2b
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_0

    .line 339
    .end local v5           #value:Ljava/lang/String;
    :cond_2c
    const-string v8, "showExitMenuItem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 340
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .restart local v5       #value:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 342
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_0

    .line 344
    :cond_2d
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_0

    .line 346
    .end local v5           #value:Ljava/lang/String;
    :cond_2e
    const-string v8, "enableFullScreenBanner"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 347
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setFullscreenBannerEnabled(Z)V

    goto/16 :goto_0

    .line 348
    :cond_2f
    const-string v8, "enableOnExitFullScreenBanner"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 349
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setOnExitFullscreenBannerEnabled(Z)V

    goto/16 :goto_0

    .line 350
    :cond_30
    const-string v8, "enableAboutScreen"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 351
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setIsAboutScreenEnabled(Z)V

    goto/16 :goto_0

    .line 352
    :cond_31
    const-string v8, "enableUrlBar"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 353
    sget-object v4, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    .line 354
    .local v4, urlBarState:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 355
    sget-object v4, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    .line 359
    :cond_32
    :goto_2
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v4}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setUrlOverlayState(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;)V

    goto/16 :goto_0

    .line 356
    :cond_33
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "on_external_urls"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 357
    sget-object v4, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    goto :goto_2

    .line 360
    .end local v4           #urlBarState:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    :cond_34
    const-string v8, "publisher"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 361
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setPublisherName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_35
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "affiliate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 363
    const-string v6, "getString"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setAffiliateString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_36
    const-string v8, "enableRedirection"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 367
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v9, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    :goto_3
    invoke-virtual {v8, v6}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Z)V

    goto/16 :goto_0

    :cond_37
    move v6, v7

    goto :goto_3

    .line 368
    :cond_38
    const-string v6, "downloadAction"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, actionString:Ljava/lang/String;
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    .line 371
    .local v0, action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    const-string v6, "open"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 372
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    .line 378
    :cond_39
    :goto_4
    iget-object v6, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v6, v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setDownloadAction(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;)V

    goto/16 :goto_0

    .line 373
    :cond_3a
    const-string v6, "save"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 374
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_4

    .line 375
    :cond_3b
    const-string v6, "dialog"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 376
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_4
.end method

.method public getWebWidgetConfiguration()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    return-object v0
.end method

.method public getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 111
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 119
    const-string v8, "fullScreenMode"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v8, "registeredUrl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_2
    const-string v8, "usage"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_3
    const-string v8, "locationUrl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 126
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_4
    const-string v8, "content"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 129
    new-instance v8, Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-direct {v8}, Lcom/wMyWebZone/Model/WidgetEntity;-><init>()V

    iput-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    goto :goto_0

    .line 130
    :cond_5
    const-string v8, "contentProtection"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 131
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_6
    const-string v8, "affiliate"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_7
    const-string v8, "injectJS"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 135
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto :goto_0

    .line 136
    :cond_8
    const-string v8, "script"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 137
    const-string v8, "pattern"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, pattern:Ljava/lang/String;
    const-string v8, "regexp"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, regex:Ljava/lang/String;
    const-string v8, "file"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/wMyWebZone/Model/WidgetEntity;

    new-instance v9, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;

    invoke-direct {v9, v4, v5, v1}, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Model/WidgetEntity;->addScript(Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;)V

    .line 142
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 144
    .end local v1           #file:Ljava/lang/String;
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #regex:Ljava/lang/String;
    :cond_9
    const-string v8, "urlBarMenuItems"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 145
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 146
    :cond_a
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v9, "urlBarMenuItems"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "button"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 147
    const-string v8, "name"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, button:Ljava/lang/String;
    const-string v8, "back"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 149
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 150
    :cond_b
    const-string v8, "forward"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 151
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 152
    :cond_c
    const-string v8, "refresh"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 153
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 154
    :cond_d
    const-string v8, "request_desktop"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 155
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 156
    :cond_e
    const-string v8, "pin_to_desktop"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 157
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->PIN_TO_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 158
    :cond_f
    const-string v8, "add_to_home"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 159
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 160
    :cond_10
    const-string v8, "home"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 161
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;

    sget-object v10, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {v9, v10}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 162
    :cond_11
    const-string v8, "link"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 163
    const-string v8, "title"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, title:Ljava/lang/String;
    const-string v8, "url"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, url:Ljava/lang/String;
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;

    invoke-direct {v9, v6, v7}, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 166
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_12
    const-string v8, "icon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    const-string v8, "title"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6       #title:Ljava/lang/String;
    const-string v8, "url"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .restart local v7       #url:Ljava/lang/String;
    const-string v8, "icon"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, icon:Ljava/lang/String;
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    new-instance v9, Lcom/wMyWebZone/Configuration/UrlBarIcon;

    invoke-direct {v9, v6, v7, v2}, Lcom/wMyWebZone/Configuration/UrlBarIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 172
    .end local v0           #button:Ljava/lang/String;
    .end local v2           #icon:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_13
    const-string v8, "splashScreen"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 173
    const-string v8, "image"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, image:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 175
    iget-object v8, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v8, v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->setSplashScreen(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
