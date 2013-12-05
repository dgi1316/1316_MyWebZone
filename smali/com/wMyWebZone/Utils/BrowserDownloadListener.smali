.class public Lcom/wMyWebZone/Utils/BrowserDownloadListener;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private _webController:Lcom/wMyWebZone/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;)V
    .locals 0
    .parameter "webController"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    .line 30
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v5

    .line 39
    .local v5, mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v7

    .line 40
    .local v7, configuration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-virtual {v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getDownloadAction()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    move-result-object v6

    .line 41
    .local v6, action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    sget-object v6, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    .line 43
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    if-ne v6, v0, :cond_2

    .line 44
    invoke-static {p1, p4, v5}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 73
    .end local v5           #mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    .end local v6           #action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    .end local v7           #configuration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :cond_1
    :goto_0
    return-void

    .line 45
    .restart local v5       #mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    .restart local v6       #action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    .restart local v7       #configuration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :cond_2
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v0, :cond_3

    .line 47
    :try_start_1
    invoke-static {p1, p4, v5}, Lcom/wMyWebZone/Utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v8

    .line 49
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {p1, p4, v5}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 70
    .end local v5           #mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    .end local v6           #action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    .end local v7           #configuration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 71
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const-string v0, "ActivityNotFoundException"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStart :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    .restart local v5       #mainActivity:Lcom/wMyWebZone/MainNavigationActivity;
    .restart local v6       #action:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    .restart local v7       #configuration:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    :cond_3
    :try_start_3
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v6, v0, :cond_1

    .line 53
    :try_start_4
    new-instance v9, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;

    invoke-direct {v9, p0, p1, p4, v5}, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;-><init>(Lcom/wMyWebZone/Utils/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V

    new-instance v0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/wMyWebZone/Utils/BrowserDownloadListener$2;-><init>(Lcom/wMyWebZone/Utils/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-static {v5, v9, v0}, Lcom/wMyWebZone/Utils/SimpleDialogs;->showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 66
    :catch_2
    move-exception v8

    .line 67
    .local v8, e:Ljava/lang/Exception;
    :try_start_5
    invoke-static {p1, p4, v5}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method
