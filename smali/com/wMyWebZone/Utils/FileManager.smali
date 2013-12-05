.class public Lcom/wMyWebZone/Utils/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/wMyWebZone/Utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "url"
    .parameter "mimetype"
    .parameter "contentDisposition"
    .parameter "context"

    .prologue
    .line 74
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    invoke-static {p0, p1, p3}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    :cond_0
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-static {p0, p1, p3}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    :cond_1
    const-string v4, "Download starting..."

    const/4 v5, 0x0

    invoke-static {p3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 80
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 82
    const-string v4, "download"

    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 83
    .local v0, downloadManager:Landroid/app/DownloadManager;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 86
    .local v2, request:Landroid/app/DownloadManager$Request;
    invoke-static {p0, p2, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, filename:Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 89
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 90
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 92
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 93
    return-void
.end method

.method public static fireOpenFileIntent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "url"
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public static fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "url"
    .parameter "mimetype"
    .parameter "context"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 54
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 59
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 60
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    :goto_1
    return-void

    .line 56
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 63
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, intentView:Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 23
    :cond_0
    const-string v6, ""

    .line 48
    :goto_0
    return-object v6

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v1, contents:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 27
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 28
    .local v0, assMngr:Landroid/content/res/AssetManager;
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 34
    .local v5, line:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 35
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .end local v0           #assMngr:Landroid/content/res/AssetManager;
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 46
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    .end local v2           #ex:Ljava/io/IOException;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 39
    .restart local v0       #assMngr:Landroid/content/res/AssetManager;
    .restart local v3       #input:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 41
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
