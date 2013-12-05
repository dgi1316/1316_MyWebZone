.class public Lcom/wMyWebZone/Model/WidgetEntity;
.super Ljava/lang/Object;
.source "WidgetEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Model/WidgetEntity$1;,
        Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;,
        Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;
    }
.end annotation


# instance fields
.field private _height:I

.field private _id:Ljava/lang/String;

.field private _injectJS:Ljava/lang/String;

.field private _injectScripts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private _link:Ljava/lang/String;

.field private _loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

.field private _name:Ljava/lang/String;

.field private _tabIcon:Ljava/lang/String;

.field private _tabId:Ljava/lang/String;

.field private _tabName:Ljava/lang/String;

.field private _updateTime:I

.field private _userAgent:Ljava/lang/String;

.field private _width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 20
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 21
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/Model/WidgetEntity;)V
    .locals 1
    .parameter "wdgt"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 20
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 21
    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 36
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 40
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 41
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getUpdateTime()I

    move-result v0

    iput v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 42
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getLoadingCurtainType()Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 46
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_userAgent:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static createDefaultWidget(Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;)Lcom/wMyWebZone/Model/WidgetEntity;
    .locals 5
    .parameter "type"

    .prologue
    const/16 v4, 0x12c

    .line 70
    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-direct {v0}, Lcom/wMyWebZone/Model/WidgetEntity;-><init>()V

    .line 71
    .local v0, tmpEntity:Lcom/wMyWebZone/Model/WidgetEntity;
    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$1;->$SwitchMap$com$wMyWebZone$Model$WidgetEntity$DefaultWidgetType:[I

    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    const-string v1, "pausedwidget_0"

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 74
    const-string v1, "PausedWidget"

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 77
    iput v4, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 78
    iput v4, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 79
    const/4 v1, 0x0

    iput v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 80
    const-string v1, ""

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 81
    const-string v1, ""

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 82
    const-string v1, ""

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 84
    const-string v1, ""

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_userAgent:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Lcom/wMyWebZone/Model/WidgetEntity;)Lcom/wMyWebZone/Model/WidgetEntity;
    .locals 2
    .parameter "wdgt"

    .prologue
    .line 54
    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-direct {v0}, Lcom/wMyWebZone/Model/WidgetEntity;-><init>()V

    .line 55
    .local v0, tmpEntity:Lcom/wMyWebZone/Model/WidgetEntity;
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 59
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 60
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getUpdateTime()I

    move-result v1

    iput v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 61
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getLoadingCurtainType()Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 65
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/WidgetEntity;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/Model/WidgetEntity;->_userAgent:Ljava/lang/String;

    .line 66
    return-object v0
.end method


# virtual methods
.method public addScript(Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;)V
    .locals 1
    .parameter "includeScriptConfigEntity"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectJS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectJS:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectScripts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingCurtainType()Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 132
    iput p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_height:I

    .line 133
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setInjectJS(Ljava/lang/String;)V
    .locals 0
    .parameter "injectJS"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLoadingCurtainType(Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;)V
    .locals 0
    .parameter "loadingCurtainType"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_loadingCurtainType:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    .line 172
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "tabIcon"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0
    .parameter "tabName"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setUpdateTime(I)V
    .locals 0
    .parameter "update"

    .prologue
    .line 139
    iput p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_updateTime:I

    .line 140
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgentString"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_userAgent:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 125
    iput p1, p0, Lcom/wMyWebZone/Model/WidgetEntity;->_width:I

    .line 126
    return-void
.end method
