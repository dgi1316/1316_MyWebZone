.class Lcom/wMyWebZone/Model/NavigationWidget$3;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 64
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$3;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 67
    iget-object v3, p0, Lcom/wMyWebZone/Model/NavigationWidget$3;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    #getter for: Lcom/wMyWebZone/Model/NavigationWidget;->_parent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/wMyWebZone/Model/NavigationWidget;->access$000(Lcom/wMyWebZone/Model/NavigationWidget;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v3

    invoke-interface {v3}, Lcom/wMyWebZone/Controllers/ITabsController;->getSelectedTab()Lcom/wMyWebZone/Controllers/WebContentController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 69
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 70
    .local v1, settings:Landroid/webkit/WebSettings;
    if-eqz p2, :cond_0

    .line 71
    invoke-static {v0}, Lcom/wMyWebZone/Utils/UserAgentManager;->getDesktopUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->reload()V

    .line 76
    return-void

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/wMyWebZone/Utils/UserAgentManager;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method
