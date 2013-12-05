.class public final enum Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;
.super Ljava/lang/Enum;
.source "OmegleMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

.field public static final enum NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

.field public static final enum SPY:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

.field public static final enum SPY_QUESTION:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    const-string v1, "SPY"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    const-string v1, "SPY_QUESTION"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY_QUESTION:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->NORMAL:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->SPY_QUESTION:Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    invoke-virtual {v0}, [Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleMode;

    return-object v0
.end method
