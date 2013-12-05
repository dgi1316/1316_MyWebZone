.class Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->addJs(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$jsCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->val$hash:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->val$jsCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    iget-object v2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->val$hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_checkSecurityCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getTabsController()Lcom/wMyWebZone/Controllers/ITabsController;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Controllers/TabsController;

    .line 61
    .local v0, controller:Lcom/wMyWebZone/Controllers/TabsController;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$4;->val$jsCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Controllers/TabsController;->setBannerInjectionJs(Ljava/lang/String;)V

    .line 64
    .end local v0           #controller:Lcom/wMyWebZone/Controllers/TabsController;
    :cond_0
    return-void
.end method
