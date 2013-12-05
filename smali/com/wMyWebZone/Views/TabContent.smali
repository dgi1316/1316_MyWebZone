.class public Lcom/wMyWebZone/Views/TabContent;
.super Landroid/widget/RelativeLayout;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Views/TabContent$ContentType;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected init(Lcom/wMyWebZone/Controllers/ITabContentController;)V
    .locals 0
    .parameter "tabContentController"

    .prologue
    .line 21
    return-void
.end method
