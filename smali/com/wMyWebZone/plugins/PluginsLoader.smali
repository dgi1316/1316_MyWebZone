.class public Lcom/wMyWebZone/plugins/PluginsLoader;
.super Ljava/lang/Object;
.source "PluginsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPlugins(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 7
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 12
    const/4 v5, 0x1

    new-array v4, v5, [Lcom/wMyWebZone/plugins/IApplicationPlugin;

    const/4 v5, 0x0

    new-instance v6, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;

    invoke-direct {v6}, Lcom/wMyWebZone/plugins/omegle/OmgelePlugin;-><init>()V

    aput-object v6, v4, v5

    .line 16
    .local v4, plugins:[Lcom/wMyWebZone/plugins/IApplicationPlugin;
    move-object v0, v4

    .local v0, arr$:[Lcom/wMyWebZone/plugins/IApplicationPlugin;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 17
    .local v3, plugin:Lcom/wMyWebZone/plugins/IApplicationPlugin;
    invoke-interface {v3, p0, p1}, Lcom/wMyWebZone/plugins/IApplicationPlugin;->load(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/wMyWebZone/plugins/IApplicationPlugin;

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v3           #plugin:Lcom/wMyWebZone/plugins/IApplicationPlugin;
    :cond_0
    return-void
.end method
