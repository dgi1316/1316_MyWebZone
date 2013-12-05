.class public Lcom/wMyWebZone/Configuration/XMLConfigurationParser;
.super Ljava/lang/Object;
.source "XMLConfigurationParser.java"


# static fields
.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "Wrong format of configuration.xml file"

.field private static final RESOURCE_ID:I = 0x7f040000


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private getConfigurationStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Couldn\'t found configuration file"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public parse()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 29
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v5

    .line 30
    .local v5, widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;
    new-instance v4, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    invoke-direct {v4}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;-><init>()V

    .line 31
    .local v4, widgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-interface {v5}, Lcom/wMyWebZone/Controllers/IWidgetsController;->removeAll()V

    .line 32
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 33
    .local v3, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;

    invoke-direct {v2, v4, v5}, Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;-><init>(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;Lcom/wMyWebZone/Controllers/IWidgetsController;)V

    .line 34
    .local v2, handler:Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;
    invoke-direct {p0}, Lcom/wMyWebZone/Configuration/XMLConfigurationParser;->getConfigurationStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v4

    .line 37
    .end local v2           #handler:Lcom/wMyWebZone/Configuration/XMLConfigurationHandler;
    .end local v3           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v4           #widgetConfiguration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .end local v5           #widgetsController:Lcom/wMyWebZone/Controllers/IWidgetsController;
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Wrong format of configuration.xml file"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method
