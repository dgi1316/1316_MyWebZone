.class public final enum Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
.super Ljava/lang/Enum;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Model/WidgetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingCurtainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

.field public static final enum BANNER:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

.field public static final enum CUSTOM:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

.field public static final enum DEFAULT:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

.field public static final enum NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5}, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->$VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->$VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method
