.class public final enum Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

.field public static final enum EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

.field public static final enum STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    new-instance v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    const-string v1, "EXITING"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->STARTED:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->EXITING:Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->$VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->$VALUES:[Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0}, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/MainNavigationActivity$ApplicationState;

    return-object v0
.end method
