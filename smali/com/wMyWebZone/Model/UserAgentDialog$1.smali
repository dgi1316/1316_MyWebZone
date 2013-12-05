.class Lcom/wMyWebZone/Model/UserAgentDialog$1;
.super Ljava/lang/Object;
.source "UserAgentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/UserAgentDialog;->_createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/UserAgentDialog;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/UserAgentDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/wMyWebZone/Model/UserAgentDialog$1;->this$0:Lcom/wMyWebZone/Model/UserAgentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wMyWebZone/Model/UserAgentDialog$1;->this$0:Lcom/wMyWebZone/Model/UserAgentDialog;

    invoke-virtual {v0}, Lcom/wMyWebZone/Model/UserAgentDialog;->dismiss()V

    .line 26
    return-void
.end method
