.class public final enum Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;
.super Ljava/lang/Enum;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Model/WidgetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultWidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

.field public static final enum PAUSED:Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->$VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->$VALUES:[Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    return-object v0
.end method
