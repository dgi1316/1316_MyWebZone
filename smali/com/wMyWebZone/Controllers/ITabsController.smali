.class public interface abstract Lcom/wMyWebZone/Controllers/ITabsController;
.super Ljava/lang/Object;
.source "ITabsController.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;
.end method

.method public abstract initWithTabs(Ljava/util/Enumeration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/wMyWebZone/Model/WidgetEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBackKeyDown()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTabSelected(Ljava/lang/String;)V
.end method
