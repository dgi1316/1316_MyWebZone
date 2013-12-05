.class Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;
.super Ljava/lang/Object;
.source "WebWidgetConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->saveConfiguration(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field final synthetic val$widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->this$0:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    iput-object p2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    iput-object p4, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 90
    :try_start_0
    new-instance v0, Lcom/wMyWebZone/Utils/ObjectSerializer;

    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/wMyWebZone/Utils/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, configSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;>;"
    new-instance v2, Lcom/wMyWebZone/Utils/ObjectSerializer;

    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/wMyWebZone/Utils/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, widgetsSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Controllers/IWidgetsController;>;"
    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$webWidgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    const-string v4, "webWidgetConfiguration"

    invoke-virtual {v0, v3, v4}, Lcom/wMyWebZone/Utils/ObjectSerializer;->serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;->val$widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;

    const-string v4, "widgetsController"

    invoke-virtual {v2, v3, v4}, Lcom/wMyWebZone/Utils/ObjectSerializer;->serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #configSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;>;"
    .end local v2           #widgetsSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Controllers/IWidgetsController;>;"
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
