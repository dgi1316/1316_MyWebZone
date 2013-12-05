.class public interface abstract Lcom/wMyWebZone/Controllers/ITabContentController;
.super Ljava/lang/Object;
.source "ITabContentController.java"

# interfaces
.implements Lcom/wMyWebZone/Controllers/ITabDelegate;
.implements Lcom/wMyWebZone/Controllers/InjectMainNavigationController;


# virtual methods
.method public abstract createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getWidgetInfo()Lcom/wMyWebZone/Model/WidgetEntity;
.end method

.method public abstract onBackKeyDown()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method
