.class Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;
.super Landroid/os/Handler;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Server/AppsGeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v0, v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPushAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$1;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v0, v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->updatePushAccount()V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    return-void
.end method
