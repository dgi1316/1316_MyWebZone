.class Lcom/wMyWebZone/Model/NavigationWidget$10;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/NavigationWidget;->_createMenuButtons(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/NavigationWidget;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/NavigationWidget;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$10;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    iput-object p2, p0, Lcom/wMyWebZone/Model/NavigationWidget$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 175
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v2

    invoke-interface {v2}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v0

    .line 176
    .local v0, tab:Lcom/wMyWebZone/Controllers/WebContentController;
    invoke-virtual {v0}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 177
    .local v1, webView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/wMyWebZone/Model/NavigationWidget$10;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    return-void
.end method
