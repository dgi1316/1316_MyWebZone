.class Lcom/wMyWebZone/MainNavigationActivity$1;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/MainNavigationActivity;->showCloseAppDialog()V
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
    .line 238
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity$1;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 242
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-static {v0}, Lcom/wMyWebZone/MainNavigationActivity;->access$002(Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    .line 244
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$1;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getOnExitFullscreenBannerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$1;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v0, v0, Lcom/wMyWebZone/MainNavigationActivity;->_startupScreenController:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-virtual {v0}, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->loadBanner()V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$1;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->finish()V

    goto :goto_0
.end method
