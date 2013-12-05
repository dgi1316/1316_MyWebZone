.class Lcom/wMyWebZone/Model/NavigationWidget$7;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/NavigationWidget;->_createMenuButtons(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$7;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget$7;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    #calls: Lcom/wMyWebZone/Model/NavigationWidget;->_onPinToHomeScreenButtonClick()V
    invoke-static {v0}, Lcom/wMyWebZone/Model/NavigationWidget;->access$300(Lcom/wMyWebZone/Model/NavigationWidget;)V

    .line 150
    return-void
.end method
