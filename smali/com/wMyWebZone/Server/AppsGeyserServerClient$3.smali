.class Lcom/wMyWebZone/Server/AppsGeyserServerClient$3;
.super Ljava/lang/Object;
.source "AppsGeyserServerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Server/AppsGeyserServerClient;->onRequestDone(Ljava/lang/String;ILorg/apache/http/HttpResponse;)V
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
    .line 102
    iput-object p1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$3;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$3;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v0, v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->showPausedContentInfo()V

    .line 105
    return-void
.end method
