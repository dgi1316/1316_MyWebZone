.class Lcom/wMyWebZone/Model/NavigationWidget$6;
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
    .line 135
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$6;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget$6;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    #calls: Lcom/wMyWebZone/Model/NavigationWidget;->_onClickForwardButton(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/wMyWebZone/Model/NavigationWidget;->access$200(Lcom/wMyWebZone/Model/NavigationWidget;Landroid/view/View;)V

    .line 139
    return-void
.end method
