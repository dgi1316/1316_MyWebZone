.class public Lcom/wMyWebZone/Server/AppsGeyserServerClient;
.super Lcom/wMyWebZone/Server/BaseServerClient;
.source "AppsGeyserServerClient.java"

# interfaces
.implements Lcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;
    }
.end annotation


# static fields
.field private static final FORBIDDEN_RESPONSE:I = 0x193

.field private static final OK_RESPONSE:I = 0xc8

.field private static instance:Lcom/wMyWebZone/Server/AppsGeyserServerClient;


# instance fields
.field private _appGuid:Ljava/lang/String;

.field private _isFirstStart:Z

.field private handler:Landroid/os/Handler;

.field private mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;


# direct methods
.method private constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Server/BaseServerClient;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_isFirstStart:Z

    .line 68
    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;-><init>(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)V

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->handler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->loadGuid(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_generateNewGuid()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_isFirstStart:Z

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    goto :goto_0
.end method

.method private _generateNewGuid()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 64
    .local v0, uuid:Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iget-object v3, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->saveNewAppGuid(Ljava/lang/String;Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method private _getBaseBannerQueryString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 168
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 169
    .local v0, activity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, version:Ljava/lang/String;
    const-string v2, ""

    .line 172
    .local v2, strUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/Geolocation;->getCoords(Landroid/app/Activity;)[D

    move-result-object v1

    .line 174
    .local v1, coords:[D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?widgetid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v5}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&guid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&hid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/wMyWebZone/Utils/DeviceIdParser;->getDeviceId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/wMyWebZone/Utils/DeviceIdParser;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tlat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tlon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&p=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    return-object v2
.end method

.method private _getOnExitBannerQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_getBaseBannerQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action=onexit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _getOnStartBannerQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_getBaseBannerQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action=onstart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method public static getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;
    .locals 1
    .parameter "activity"

    .prologue
    .line 33
    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->instance:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;-><init>(Lcom/wMyWebZone/MainNavigationActivity;)V

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->instance:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    .line 36
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->instance:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    return-object v0
.end method


# virtual methods
.method public GetApplicationMode()V
    .locals 4

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?wid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 139
    return-void
.end method

.method public GetBannerUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 143
    .local v0, activity:Lcom/wMyWebZone/MainNavigationActivity;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_getBaseBannerQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, url:Ljava/lang/String;
    return-object v1
.end method

.method public SendAfterInstallInfo()V
    .locals 3

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_isFirstStart:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getRegisteredUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?action=install&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&p=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 123
    .end local v0           #requestURL:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public SendClickInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "reportUrl"

    .prologue
    .line 195
    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->CLICK:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 196
    return-void
.end method

.method public SendUsageInfo()V
    .locals 3

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAddUsageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?action=usage&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_appGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&p=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, requestURL:Ljava/lang/String;
    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 131
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->instance:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    .line 41
    return-void
.end method

.method public getOnExitFullScreenBannerUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 149
    .local v0, activity:Lcom/wMyWebZone/MainNavigationActivity;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_getOnExitBannerQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, url:Ljava/lang/String;
    return-object v1
.end method

.method public getOnStartFullScreenBannerUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 155
    .local v0, activity:Lcom/wMyWebZone/MainNavigationActivity;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_getOnStartBannerQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, url:Ljava/lang/String;
    return-object v1
.end method

.method public onRequestDone(Ljava/lang/String;ILorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "requestUrl"
    .parameter "tag"
    .parameter "response"

    .prologue
    const/16 v3, 0x193

    const/16 v2, 0xc8

    .line 84
    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 85
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 86
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;-><init>(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    :cond_1
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 98
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    :goto_1
    return-void

    .line 87
    :cond_2
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 88
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$3;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$3;-><init>(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
