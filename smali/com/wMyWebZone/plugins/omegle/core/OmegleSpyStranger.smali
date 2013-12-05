.class public final enum Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
.super Ljava/lang/Enum;
.source "OmegleSpyStranger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

.field public static final enum Stranger_1:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

.field public static final enum Stranger_2:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    const-string v1, "Stranger_1"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->Stranger_1:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    const-string v1, "Stranger_2"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->Stranger_2:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->Stranger_1:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->Stranger_2:Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    invoke-virtual {v0}, [Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleSpyStranger;

    return-object v0
.end method
