.class public final enum Lcom/wMyWebZone/Views/TabContent$ContentType;
.super Ljava/lang/Enum;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Views/TabContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/Views/TabContent$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/Views/TabContent$ContentType;

.field public static final enum WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/wMyWebZone/Views/TabContent$ContentType;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/Views/TabContent$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/Views/TabContent$ContentType;->WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wMyWebZone/Views/TabContent$ContentType;

    sget-object v1, Lcom/wMyWebZone/Views/TabContent$ContentType;->WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wMyWebZone/Views/TabContent$ContentType;->$VALUES:[Lcom/wMyWebZone/Views/TabContent$ContentType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/Views/TabContent$ContentType;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/wMyWebZone/Views/TabContent$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Views/TabContent$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/Views/TabContent$ContentType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wMyWebZone/Views/TabContent$ContentType;->$VALUES:[Lcom/wMyWebZone/Views/TabContent$ContentType;

    invoke-virtual {v0}, [Lcom/wMyWebZone/Views/TabContent$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/Views/TabContent$ContentType;

    return-object v0
.end method
