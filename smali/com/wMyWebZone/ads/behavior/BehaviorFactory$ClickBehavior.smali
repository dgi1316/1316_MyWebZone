.class public final enum Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
.super Ljava/lang/Enum;
.source "BehaviorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/ads/behavior/BehaviorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

.field public static final enum HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

.field public static final enum REMAIN_ON_SCREEN:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    new-instance v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    const-string v1, "REMAIN_ON_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v1, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->$VALUES:[Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->$VALUES:[Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-virtual {v0}, [Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    return-object v0
.end method
