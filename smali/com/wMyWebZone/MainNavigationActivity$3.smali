.class Lcom/wMyWebZone/MainNavigationActivity$3;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/MainNavigationActivity;->showConnectionErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity$3;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$3;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v1

    iput-object v1, v0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    .line 604
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$3;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_tabsController:Lcom/wMyWebZone/Controllers/ITabsController;

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/wMyWebZone/Controllers/IWidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wMyWebZone/Controllers/ITabsController;->initWithTabs(Ljava/util/Enumeration;)V

    .line 605
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$3;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 606
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$3;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wMyWebZone/MainNavigationActivity;->_connectionErrorDialog:Landroid/app/Dialog;

    .line 607
    return-void
.end method
