.class public Lcom/wMyWebZone/Factory/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Factory/Factory$1;
    }
.end annotation


# static fields
.field private static _instance:Lcom/wMyWebZone/Factory/Factory;


# instance fields
.field private _activity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _homePageManager:Lcom/wMyWebZone/storage/BookmarksManager;

.field private _navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

.field private _tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

.field private _widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

.field private bookmarkManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/storage/BookmarksManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/wMyWebZone/Factory/Factory;->_instance:Lcom/wMyWebZone/Factory/Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->bookmarkManagers:Ljava/util/HashMap;

    .line 28
    new-instance v0, Lcom/wMyWebZone/Controllers/WidgetsController;

    invoke-direct {v0}, Lcom/wMyWebZone/Controllers/WidgetsController;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    .line 29
    new-instance v0, Lcom/wMyWebZone/Controllers/TabsController;

    invoke-direct {v0}, Lcom/wMyWebZone/Controllers/TabsController;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/wMyWebZone/Factory/Factory;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/wMyWebZone/Factory/Factory;->_instance:Lcom/wMyWebZone/Factory/Factory;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/wMyWebZone/Factory/Factory;

    invoke-direct {v0}, Lcom/wMyWebZone/Factory/Factory;-><init>()V

    sput-object v0, Lcom/wMyWebZone/Factory/Factory;->_instance:Lcom/wMyWebZone/Factory/Factory;

    .line 36
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Factory/Factory;->_instance:Lcom/wMyWebZone/Factory/Factory;

    return-object v0
.end method


# virtual methods
.method public Init(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 48
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/wMyWebZone/Factory/Factory;->_widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    .line 41
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/ITabsController;->destroy()V

    .line 42
    iput-object v1, p0, Lcom/wMyWebZone/Factory/Factory;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 43
    sput-object v1, Lcom/wMyWebZone/Factory/Factory;->_instance:Lcom/wMyWebZone/Factory/Factory;

    .line 44
    return-void
.end method

.method public getBookmarkManager(Ljava/lang/String;)Lcom/wMyWebZone/storage/BookmarksManager;
    .locals 3
    .parameter "BookmarkPage"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->bookmarkManagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->bookmarkManagers:Ljava/util/HashMap;

    new-instance v1, Lcom/wMyWebZone/storage/BookmarksManager;

    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v1, p1, v2}, Lcom/wMyWebZone/storage/BookmarksManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->bookmarkManagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/storage/BookmarksManager;

    return-object v0
.end method

.method public getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_homePageManager:Lcom/wMyWebZone/storage/BookmarksManager;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/wMyWebZone/storage/BookmarksManager;

    const-string v1, "Homepage"

    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/storage/BookmarksManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_homePageManager:Lcom/wMyWebZone/storage/BookmarksManager;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_homePageManager:Lcom/wMyWebZone/storage/BookmarksManager;

    return-object v0
.end method

.method public getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    return-object v0
.end method

.method public getStartupScreenController(Landroid/view/ViewGroup;Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;
    .locals 1
    .parameter "container"
    .parameter "mainActivity"

    .prologue
    .line 139
    new-instance v0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-direct {v0, p1, p2}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;-><init>(Landroid/view/ViewGroup;Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 140
    .local v0, controller:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;
    return-object v0
.end method

.method public getTabContent(Lcom/wMyWebZone/Views/TabContent$ContentType;)Landroid/view/View;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "MainActivity doesn\'t specified"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, tcRes:Landroid/view/View;
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabContent$ContentType:[I

    invoke-virtual {p1}, Lcom/wMyWebZone/Views/TabContent$ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 86
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown Content Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :pswitch_0
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    return-object v1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getTabContentController(Lcom/wMyWebZone/Views/TabContent$ContentType;Lcom/wMyWebZone/Model/WidgetEntity;)Lcom/wMyWebZone/Controllers/ITabContentController;
    .locals 3
    .parameter "type"
    .parameter "wdgtInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, tccRes:Lcom/wMyWebZone/Controllers/ITabContentController;
    sget-object v1, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabContent$ContentType:[I

    invoke-virtual {p1}, Lcom/wMyWebZone/Views/TabContent$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unknown Content Type"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :pswitch_0
    new-instance v0, Lcom/wMyWebZone/Controllers/WebContentController;

    .end local v0           #tccRes:Lcom/wMyWebZone/Controllers/ITabContentController;
    invoke-direct {v0, p2}, Lcom/wMyWebZone/Controllers/WebContentController;-><init>(Lcom/wMyWebZone/Model/WidgetEntity;)V

    .line 96
    .restart local v0       #tccRes:Lcom/wMyWebZone/Controllers/ITabContentController;
    iget-object v1, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-interface {v0, v1}, Lcom/wMyWebZone/Controllers/ITabContentController;->setMainNavigationActivity(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 102
    return-object v0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getTabTag(Lcom/wMyWebZone/Views/TabTag$TagType;)Landroid/view/View;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f03000b

    .line 106
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "MainActivity doesn\'t specified"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, ttRes:Landroid/view/View;
    const/4 v0, 0x0

    .line 111
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I

    invoke-virtual {p1}, Lcom/wMyWebZone/Views/TabTag$TagType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 125
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown Tag Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :pswitch_0
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 117
    :pswitch_1
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v2, p0, Lcom/wMyWebZone/Factory/Factory;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/wMyWebZone/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTabTagController(Lcom/wMyWebZone/Controllers/ITabsController;Lcom/wMyWebZone/Model/WidgetEntity;)Lcom/wMyWebZone/Controllers/ITabTagController;
    .locals 1
    .parameter "tabCtrlr"
    .parameter "wdgtInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, ttcRes:Lcom/wMyWebZone/Controllers/ITabTagController;
    new-instance v0, Lcom/wMyWebZone/Controllers/TabTagController;

    .end local v0           #ttcRes:Lcom/wMyWebZone/Controllers/ITabTagController;
    invoke-direct {v0, p1, p2}, Lcom/wMyWebZone/Controllers/TabTagController;-><init>(Lcom/wMyWebZone/Controllers/ITabsController;Lcom/wMyWebZone/Model/WidgetEntity;)V

    .line 135
    .restart local v0       #ttcRes:Lcom/wMyWebZone/Controllers/ITabTagController;
    return-object v0
.end method

.method public getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    return-object v0
.end method

.method public getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wMyWebZone/Factory/Factory;->_widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    return-object v0
.end method

.method public setNavigationWidget(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter "widget"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wMyWebZone/Factory/Factory;->_navigationWidget:Lcom/wMyWebZone/Model/NavigationWidget;

    .line 52
    return-void
.end method

.method public setWidgetsController(Lcom/wMyWebZone/Controllers/IWidgetsController;)V
    .locals 0
    .parameter "widgetsController"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/wMyWebZone/Factory/Factory;->_widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    .line 68
    return-void
.end method
