.class public Lcom/wMyWebZone/Utils/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field private static final APP_VERSION_ALIAS:Ljava/lang/String; = "app_version_prefix"

.field public static final DEFAULT_VERSION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentVersion(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 33
    .local v1, pinfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1           #pinfo:Landroid/content/pm/PackageInfo;
    .local v2, version:I
    :goto_0
    return v2

    .line 34
    .end local v2           #version:I
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 36
    const/4 v2, -0x1

    .restart local v2       #version:I
    goto :goto_0
.end method

.method public static getPreviousVersion(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 16
    const/4 v1, -0x1

    .line 18
    .local v1, previousVersion:I
    :try_start_0
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_version_prefix"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 23
    :goto_0
    return v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateVersion(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "newVersion"

    .prologue
    .line 48
    :try_start_0
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_version_prefix"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v1, 0x1

    .line 60
    .local v1, status:Z
    :goto_0
    return v1

    .line 55
    .end local v1           #status:Z
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const/4 v1, 0x0

    .restart local v1       #status:Z
    goto :goto_0
.end method
