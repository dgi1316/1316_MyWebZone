.class public Lcom/wMyWebZone/Controllers/TabsController;
.super Ljava/lang/Object;
.source "TabsController.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/ITabsController;


# instance fields
.field private _activeWidgetId:Ljava/lang/String;

.field private _tabContentsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/Controllers/ITabContentController;",
            ">;"
        }
    .end annotation
.end field

.field private _tabTagsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wMyWebZone/Controllers/ITabTagController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabContentController;->destroy()V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Controllers/WebContentController;

    return-object v0
.end method

.method public initWithTabs(Ljava/util/Enumeration;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/wMyWebZone/Model/WidgetEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, wdgtsEnumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/wMyWebZone/Model/WidgetEntity;>;"
    :try_start_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    .line 35
    .local v0, activity:Landroid/app/Activity;
    const v11, 0x7f0b002d

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 36
    .local v1, contentPanel:Landroid/widget/FrameLayout;
    const v11, 0x7f0b002e

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 38
    .local v9, tagPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 39
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 40
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, count:I
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wMyWebZone/Model/WidgetEntity;

    .line 45
    .local v10, wdgt:Lcom/wMyWebZone/Model/WidgetEntity;
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 46
    invoke-virtual {v10}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 48
    :cond_0
    const/4 v5, 0x0

    .line 50
    .local v5, linearParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v11

    sget-object v12, Lcom/wMyWebZone/Views/TabContent$ContentType;->WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;

    invoke-virtual {v11, v12, v10}, Lcom/wMyWebZone/Factory/Factory;->getTabContentController(Lcom/wMyWebZone/Views/TabContent$ContentType;Lcom/wMyWebZone/Model/WidgetEntity;)Lcom/wMyWebZone/Controllers/ITabContentController;

    move-result-object v7

    .line 51
    .local v7, tabContCtrlr:Lcom/wMyWebZone/Controllers/ITabContentController;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-interface {v7, v1}, Lcom/wMyWebZone/Controllers/ITabContentController;->createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, current:Landroid/view/View;
    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v5, 0x0

    .line 61
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Lcom/wMyWebZone/Factory/Factory;->getTabTagController(Lcom/wMyWebZone/Controllers/ITabsController;Lcom/wMyWebZone/Model/WidgetEntity;)Lcom/wMyWebZone/Controllers/ITabTagController;

    move-result-object v8

    .line 62
    .local v8, tabTagCtrlr:Lcom/wMyWebZone/Controllers/ITabTagController;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #linearParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f80

    invoke-direct {v5, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 63
    .restart local v5       #linearParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {v8}, Lcom/wMyWebZone/Controllers/ITabTagController;->createTabTag()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    .end local v3           #current:Landroid/view/View;
    .end local v5           #linearParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #tabContCtrlr:Lcom/wMyWebZone/Controllers/ITabContentController;
    .end local v8           #tabTagCtrlr:Lcom/wMyWebZone/Controllers/ITabTagController;
    .end local v10           #wdgt:Lcom/wMyWebZone/Model/WidgetEntity;
    :cond_1
    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    .line 69
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/wMyWebZone/Controllers/TabsController;->onTabSelected(Ljava/lang/String;)V

    .line 81
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #contentPanel:Landroid/widget/FrameLayout;
    .end local v2           #count:I
    .end local v9           #tagPanel:Landroid/widget/LinearLayout;
    :goto_2
    return-void

    .line 70
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #contentPanel:Landroid/widget/FrameLayout;
    .restart local v2       #count:I
    .restart local v9       #tagPanel:Landroid/widget/LinearLayout;
    :cond_3
    if-nez v2, :cond_2

    .line 71
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #contentPanel:Landroid/widget/FrameLayout;
    .end local v2           #count:I
    .end local v9           #tagPanel:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v4

    .line 77
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "initWithTabs Error"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initWithTabs Error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onBackKeyDown()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/ITabContentController;->onBackKeyDown()V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabContentController;->onPause()V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Controllers/ITabContentController;

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/ITabContentController;->onResume()V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 8
    .parameter "tabId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    iget-object v5, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wMyWebZone/Controllers/ITabTagController;

    .line 90
    .local v4, tag:Lcom/wMyWebZone/Controllers/ITabTagController;
    iget-object v5, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Controllers/ITabContentController;

    .line 91
    .local v0, content:Lcom/wMyWebZone/Controllers/ITabContentController;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-interface {v4, v7}, Lcom/wMyWebZone/Controllers/ITabTagController;->setActiveState(Z)V

    .line 93
    invoke-interface {v0, v7}, Lcom/wMyWebZone/Controllers/ITabContentController;->setActiveState(Z)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v4, v6}, Lcom/wMyWebZone/Controllers/ITabTagController;->setActiveState(Z)V

    .line 97
    invoke-interface {v0, v6}, Lcom/wMyWebZone/Controllers/ITabContentController;->setActiveState(Z)V

    goto :goto_0

    .line 100
    .end local v0           #content:Lcom/wMyWebZone/Controllers/ITabContentController;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #tag:Lcom/wMyWebZone/Controllers/ITabTagController;
    :cond_1
    iput-object p1, p0, Lcom/wMyWebZone/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setBannerInjectionJs(Ljava/lang/String;)V
    .locals 5
    .parameter "jsCode"

    .prologue
    .line 105
    iget-object v4, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/wMyWebZone/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Controllers/WebContentController;

    .line 110
    .local v0, content:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Controllers/WebContentController;->setBannerInjectionJs(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0           #content:Lcom/wMyWebZone/Controllers/WebContentController;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wMyWebZone/Controllers/ITabTagController;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method
