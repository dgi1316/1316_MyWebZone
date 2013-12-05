.class public Lcom/wMyWebZone/Utils/SimpleDialogs;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "context"
    .parameter "onYesListener"
    .parameter "onNoListener"

    .prologue
    .line 13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    const v1, 0x7f08002c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wMyWebZone/Utils/SimpleDialogs$1;

    invoke-direct {v2, p3}, Lcom/wMyWebZone/Utils/SimpleDialogs$1;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    const v1, 0x7f08002d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wMyWebZone/Utils/SimpleDialogs$2;

    invoke-direct {v2, p4}, Lcom/wMyWebZone/Utils/SimpleDialogs$2;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    new-instance v1, Lcom/wMyWebZone/Utils/SimpleDialogs$3;

    invoke-direct {v1, p4}, Lcom/wMyWebZone/Utils/SimpleDialogs$3;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "context"
    .parameter "open"
    .parameter "save"

    .prologue
    .line 46
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 47
    .local v0, dialog:Landroid/app/AlertDialog;
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v1, -0x1

    const v2, 0x7f080037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    const/4 v1, -0x3

    const v2, 0x7f080038

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    const/4 v1, -0x2

    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wMyWebZone/Utils/SimpleDialogs$4;

    invoke-direct {v3}, Lcom/wMyWebZone/Utils/SimpleDialogs$4;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method
