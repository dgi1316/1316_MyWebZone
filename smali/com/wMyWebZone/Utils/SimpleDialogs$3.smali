.class final Lcom/wMyWebZone/Utils/SimpleDialogs$3;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onNoListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$3;->val$onNoListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    iget-object v0, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$3;->val$onNoListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$3;->val$onNoListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 39
    :cond_0
    return-void
.end method
