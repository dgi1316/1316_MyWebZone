.class final enum Lcom/wMyWebZone/Server/PushServerClient$RequestType;
.super Ljava/lang/Enum;
.source "PushServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Server/PushServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Server/PushServerClient$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Server/PushServerClient$RequestType;

.field public static final enum GET_PUSH_ACCOUNT:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

.field public static final enum REGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

.field public static final enum UNREGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    const-string v1, "REGISTER_ID"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->REGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    new-instance v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    const-string v1, "UNREGISTER_ID"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->UNREGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    new-instance v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    const-string v1, "GET_PUSH_ACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/Server/PushServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->GET_PUSH_ACCOUNT:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->REGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->UNREGISTER_ID:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->GET_PUSH_ACCOUNT:Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->$VALUES:[Lcom/wMyWebZone/Server/PushServerClient$RequestType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Server/PushServerClient$RequestType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Server/PushServerClient$RequestType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/wMyWebZone/Server/PushServerClient$RequestType;->$VALUES:[Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Server/PushServerClient$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Server/PushServerClient$RequestType;

    return-object v0
.end method
