.class public final enum Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

.field public static final enum COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

.field public static final enum CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

.field public static final enum UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    const-class v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v0}, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method
