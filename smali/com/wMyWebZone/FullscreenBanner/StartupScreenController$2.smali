.class Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$2;
.super Landroid/webkit/WebChromeClient;
.source "StartupScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;->_setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wMyWebZone/FullscreenBanner/StartupScreenController$2;->this$0:Lcom/wMyWebZone/FullscreenBanner/StartupScreenController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 155
    return-void
.end method
