.class Lcom/wMyWebZone/Controllers/WidgetEntityComparator;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wMyWebZone/Model/WidgetEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wMyWebZone/Model/WidgetEntity;Lcom/wMyWebZone/Model/WidgetEntity;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wMyWebZone/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    check-cast p1, Lcom/wMyWebZone/Model/WidgetEntity;

    .end local p1
    check-cast p2, Lcom/wMyWebZone/Model/WidgetEntity;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/wMyWebZone/Controllers/WidgetEntityComparator;->compare(Lcom/wMyWebZone/Model/WidgetEntity;Lcom/wMyWebZone/Model/WidgetEntity;)I

    move-result v0

    return v0
.end method
