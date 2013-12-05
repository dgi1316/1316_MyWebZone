.class public Lcom/wMyWebZone/Controllers/WidgetsController;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/IWidgetsController;
.implements Ljava/io/Serializable;


# instance fields
.field private _widgetCollection:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/wMyWebZone/Model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    .line 18
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/wMyWebZone/Model/WidgetEntity;)V
    .locals 2
    .parameter "wdgt"

    .prologue
    .line 22
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/wMyWebZone/Controllers/WidgetEntityComparator;

    invoke-direct {v0}, Lcom/wMyWebZone/Controllers/WidgetEntityComparator;-><init>()V

    .line 24
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/wMyWebZone/Model/WidgetEntity;>;"
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    return-void
.end method

.method public getEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/wMyWebZone/Model/WidgetEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetById(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity;
    .locals 4
    .parameter "wdgtId"

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, weResult:Lcom/wMyWebZone/Model/WidgetEntity;
    iget-object v3, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 32
    .local v0, enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/wMyWebZone/Model/WidgetEntity;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Model/WidgetEntity;

    .line 34
    .local v1, weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    move-object v2, v1

    .line 39
    .end local v1           #weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    :cond_1
    return-object v2
.end method

.method public getWidgetByTabId(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity;
    .locals 4
    .parameter "tabId"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, weResult:Lcom/wMyWebZone/Model/WidgetEntity;
    iget-object v3, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 74
    .local v0, enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/wMyWebZone/Model/WidgetEntity;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Model/WidgetEntity;

    .line 76
    .local v1, weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    move-object v2, v1

    .line 81
    .end local v1           #weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    :cond_1
    return-object v2
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 57
    return-void
.end method

.method public removeWidgetById(Ljava/lang/String;)V
    .locals 3
    .parameter "wdgtId"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/wMyWebZone/Model/WidgetEntity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Model/WidgetEntity;

    .line 48
    .local v1, weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 52
    .end local v1           #weCurrent:Lcom/wMyWebZone/Model/WidgetEntity;
    :cond_1
    return-void
.end method

.method public widgetsCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
