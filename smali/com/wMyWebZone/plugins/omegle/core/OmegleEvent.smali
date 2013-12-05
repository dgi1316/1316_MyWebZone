.class public final enum Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
.super Ljava/lang/Enum;
.source "OmegleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum antinudeBanned:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum commonLikes:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum connected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum count:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum disconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum error:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum gotMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum messageSent:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum question:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum recaptchaRejected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum recaptchaRequired:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum spyDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum spyMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum spyStoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum spyTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum stoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum strangerDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum typing:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

.field public static final enum waiting:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "waiting"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->waiting:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "connected"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->connected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "gotMessage"

    invoke-direct {v0, v1, v5}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->gotMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "strangerDisconnected"

    invoke-direct {v0, v1, v6}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->strangerDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "typing"

    invoke-direct {v0, v1, v7}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->typing:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "stoppedTyping"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->stoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "recaptchaRequired"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->recaptchaRequired:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "recaptchaRejected"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->recaptchaRejected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "count"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->count:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    .line 30
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "spyMessage"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "spyTyping"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "spyStoppedTyping"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyStoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "spyDisconnected"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "question"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->question:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "error"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->error:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "commonLikes"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->commonLikes:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    .line 33
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "antinudeBanned"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->antinudeBanned:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    .line 36
    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "disconnected"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->disconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    new-instance v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    const-string v1, "messageSent"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->messageSent:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    .line 25
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->waiting:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->connected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->gotMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->strangerDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->typing:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->stoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->recaptchaRequired:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->recaptchaRejected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->count:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyMessage:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyStoppedTyping:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->spyDisconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->question:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->error:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->commonLikes:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->antinudeBanned:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->disconnected:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->messageSent:Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->$VALUES:[Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    invoke-virtual {v0}, [Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/plugins/omegle/core/OmegleEvent;

    return-object v0
.end method
