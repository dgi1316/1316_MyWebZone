.class public final enum Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;
.super Ljava/lang/Enum;
.source "BottomBannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/ads/BottomBannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

.field public static final enum BOTTOM:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

.field public static final enum HIDE:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

.field public static final enum TOP:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->TOP:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    new-instance v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->BOTTOM:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    new-instance v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->HIDE:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    sget-object v1, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->TOP:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->BOTTOM:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->HIDE:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->$VALUES:[Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    return-object v0
.end method

.method public static values()[Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->$VALUES:[Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    invoke-virtual {v0}, [Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    return-object v0
.end method
