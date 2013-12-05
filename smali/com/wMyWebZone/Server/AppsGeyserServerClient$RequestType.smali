.class final enum Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;
.super Ljava/lang/Enum;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Server/AppsGeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

.field public static final enum AFTERINSTALL:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

.field public static final enum APPMODE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

.field public static final enum CLICK:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

.field public static final enum USAGE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "AFTERINSTALL"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "USAGE"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->CLICK:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "APPMODE"

    invoke-direct {v0, v1, v5}, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->CLICK:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->$VALUES:[Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->$VALUES:[Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Server/AppsGeyserServerClient$RequestType;

    return-object v0
.end method
