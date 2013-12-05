.class public Lcom/wMyWebZone/Utils/UserAgentManager;
.super Ljava/lang/Object;
.source "UserAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Utils/UserAgentManager$NewApiWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 20
    invoke-static {p0}, Lcom/wMyWebZone/Utils/UserAgentManager$NewApiWrapper;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 33
    :goto_0
    return-object v3

    .line 24
    :cond_0
    :try_start_0
    const-class v3, Landroid/webkit/WebSettings;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 25
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettings;

    .line 28
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 30
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 32
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 30
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static getDesktopUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
