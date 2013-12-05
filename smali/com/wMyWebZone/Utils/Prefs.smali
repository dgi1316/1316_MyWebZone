.class public final Lcom/wMyWebZone/Utils/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 9
    const-string v0, "CTP_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
