.class Lcom/wMyWebZone/Model/NavigationSlidingDrawer$2;
.super Ljava/lang/Object;
.source "NavigationSlidingDrawer.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/NavigationSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/NavigationSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/NavigationSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$2;->this$0:Lcom/wMyWebZone/Model/NavigationSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$2;->this$0:Lcom/wMyWebZone/Model/NavigationSlidingDrawer;

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 31
    return-void
.end method
