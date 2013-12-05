.class public final enum Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
.super Ljava/lang/Enum;
.source "UrlBarMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Configuration/UrlBarMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlBarMenuButtonTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum ADD_TO_HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum BACK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum FORWARD:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum ICON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum LINK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum PIN_TO_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum REFRESH:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum REQUEST_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

.field public static final enum URL_BUTTON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "REQUEST_DESKTOP"

    invoke-direct {v0, v1, v6}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "PIN_TO_DESKTOP"

    invoke-direct {v0, v1, v7}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->PIN_TO_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "ADD_TO_HOME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "HOME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "URL_BUTTON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->URL_BUTTON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    new-instance v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    const-string v1, "ICON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    sget-object v1, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->PIN_TO_DESKTOP:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->URL_BUTTON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->$VALUES:[Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->$VALUES:[Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-object v0
.end method
