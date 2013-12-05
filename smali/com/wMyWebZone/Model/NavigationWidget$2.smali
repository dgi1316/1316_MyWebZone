.class Lcom/wMyWebZone/Model/NavigationWidget$2;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Model/NavigationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$2;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 61
    return-void
.end method
