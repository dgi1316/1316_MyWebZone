.class public Lcom/wMyWebZone/Model/UserAgentDialog;
.super Landroid/app/Dialog;
.source "UserAgentDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/wMyWebZone/Model/UserAgentDialog;->_createLayout()V

    .line 14
    return-void
.end method

.method private _createLayout()V
    .locals 2

    .prologue
    .line 17
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/UserAgentDialog;->setContentView(I)V

    .line 18
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/UserAgentDialog;->setTitle(I)V

    .line 19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/UserAgentDialog;->setCancelable(Z)V

    .line 21
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/UserAgentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Lcom/wMyWebZone/Model/UserAgentDialog$1;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/UserAgentDialog$1;-><init>(Lcom/wMyWebZone/Model/UserAgentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method
