.class public Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
.super Ljava/lang/Object;
.source "WebWidgetConfigurationManager.java"


# static fields
.field private static instance:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;


# instance fields
.field private config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

.field private parser:Lcom/wMyWebZone/Configuration/XMLConfigurationParser;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;

    invoke-direct {v0, p1}, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->parser:Lcom/wMyWebZone/Configuration/XMLConfigurationParser;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->instance:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->instance:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->instance:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    return-object v0
.end method

.method private loadFromCurrentConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->parser:Lcom/wMyWebZone/Configuration/XMLConfigurationParser;

    invoke-virtual {v2}, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;->parse()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 67
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->saveConfiguration(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->instance:Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;

    .line 31
    return-void
.end method

.method public loadConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/wMyWebZone/Utils/VersionManager;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    .line 40
    .local v0, currentVersion:I
    invoke-static {p1}, Lcom/wMyWebZone/Utils/VersionManager;->getPreviousVersion(Landroid/content/Context;)I

    move-result v2

    .line 42
    .local v2, previousVersion:I
    if-ne v0, v2, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadFromCurrentConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    .line 47
    invoke-static {p1, v0}, Lcom/wMyWebZone/Utils/VersionManager;->updateVersion(Landroid/content/Context;I)Z

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->loadGuid(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 59
    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-virtual {v3, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->loadPushAccount(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 60
    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    return-object v3

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadSerializedConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->loadFromCurrentConfig(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;->config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    goto :goto_0
.end method

.method public loadSerializedConfiguration(Landroid/content/Context;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/wMyWebZone/Utils/ObjectSerializer;

    invoke-direct {v0, p1}, Lcom/wMyWebZone/Utils/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, configSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;>;"
    new-instance v2, Lcom/wMyWebZone/Utils/ObjectSerializer;

    invoke-direct {v2, p1}, Lcom/wMyWebZone/Utils/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, widgetsSerializer:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<Lcom/wMyWebZone/Controllers/IWidgetsController;>;"
    const-string v3, "widgetsController"

    invoke-virtual {v2, v3}, Lcom/wMyWebZone/Utils/ObjectSerializer;->loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wMyWebZone/Controllers/IWidgetsController;

    .line 80
    .local v1, widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/wMyWebZone/Factory/Factory;->setWidgetsController(Lcom/wMyWebZone/Controllers/IWidgetsController;)V

    .line 81
    const-string v3, "webWidgetConfiguration"

    invoke-virtual {v0, v3}, Lcom/wMyWebZone/Utils/ObjectSerializer;->loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    return-object v3
.end method

.method public saveConfiguration(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;Landroid/content/Context;)V
    .locals 2
    .parameter "webWidgetConfiguration"
    .parameter "widgetsController"
    .parameter "context"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager$1;-><init>(Lcom/wMyWebZone/Configuration/WebWidgetConfigurationManager;Landroid/content/Context;Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 99
    return-void
.end method
