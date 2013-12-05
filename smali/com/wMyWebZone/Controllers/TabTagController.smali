.class public Lcom/wMyWebZone/Controllers/TabTagController;
.super Ljava/lang/Object;
.source "TabTagController.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/ITabTagController;


# instance fields
.field _tabTag:Lcom/wMyWebZone/Views/TabTag;

.field _tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

.field _widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Controllers/ITabsController;Lcom/wMyWebZone/Model/WidgetEntity;)V
    .locals 1
    .parameter "tabsCtrlr"
    .parameter "wdgtInfo"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    .line 16
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 17
    iput-object p2, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    .line 18
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    invoke-virtual {v1, p0}, Lcom/wMyWebZone/Views/TabTag;->init(Lcom/wMyWebZone/Controllers/ITabTagController;)V

    .line 22
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, param:Ljava/lang/String;
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/Views/TabTag;->setIcon(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/Views/TabTag;->setTitle(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createTabTag()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v2}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v2}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 33
    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->ICON_LABEL:Lcom/wMyWebZone/Views/TabTag$TagType;

    .line 39
    .local v1, type:Lcom/wMyWebZone/Views/TabTag$TagType;
    :goto_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wMyWebZone/Factory/Factory;->getTabTag(Lcom/wMyWebZone/Views/TabTag$TagType;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, contentView:Landroid/view/View;
    check-cast v0, Lcom/wMyWebZone/Views/TabTag;

    .end local v0           #contentView:Landroid/view/View;
    iput-object v0, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    .line 41
    invoke-direct {p0}, Lcom/wMyWebZone/Controllers/TabTagController;->init()V

    .line 43
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    return-object v2

    .line 35
    .end local v1           #type:Lcom/wMyWebZone/Views/TabTag$TagType;
    :cond_0
    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->ICON:Lcom/wMyWebZone/Views/TabTag$TagType;

    .restart local v1       #type:Lcom/wMyWebZone/Views/TabTag$TagType;
    goto :goto_0

    .line 37
    .end local v1           #type:Lcom/wMyWebZone/Views/TabTag$TagType;
    :cond_1
    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->LABEL:Lcom/wMyWebZone/Views/TabTag$TagType;

    .restart local v1       #type:Lcom/wMyWebZone/Views/TabTag$TagType;
    goto :goto_0
.end method

.method public onTagSelected()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_widgetInfo:Lcom/wMyWebZone/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wMyWebZone/Controllers/ITabsController;->onTabSelected(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setActiveState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/TabTagController;->_tabTag:Lcom/wMyWebZone/Views/TabTag;

    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Views/TabTag;->setActiveState(Z)V

    .line 54
    return-void
.end method
