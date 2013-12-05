.class Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;
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
    .line 90
    iput-object p1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    iget-object v0, v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->_activity:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v1, p0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$2;->this$0:Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    #getter for: Lcom/wMyWebZone/Server/AppsGeyserServerClient;->mAppMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    invoke-static {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->access$000(Lcom/wMyWebZone/Server/AppsGeyserServerClient;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V

    .line 93
    return-void
.end method
