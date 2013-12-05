.class Lcom/wMyWebZone/Model/NavigationWidget$11;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/NavigationWidget;->_initEventHandlers()V
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
    .line 192
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$11;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidget$11;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    #calls: Lcom/wMyWebZone/Model/NavigationWidget;->_onUrlTextBoxKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/wMyWebZone/Model/NavigationWidget;->access$600(Lcom/wMyWebZone/Model/NavigationWidget;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
