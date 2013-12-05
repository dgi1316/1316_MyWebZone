.class public final enum Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlBarStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum ENABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum ENABLED_ON_EXTERNAL_URLS:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    new-instance v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "ENABLED_ON_EXTERNAL_URLS"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    new-instance v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    sget-object v1, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->$VALUES:[Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->$VALUES:[Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    return-object v0
.end method
