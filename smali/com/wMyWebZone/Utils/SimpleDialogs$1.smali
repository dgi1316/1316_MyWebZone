.class final Lcom/wMyWebZone/Utils/SimpleDialogs$1;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onYesListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$1;->val$onYesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    iget-object v0, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$1;->val$onYesListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/wMyWebZone/Utils/SimpleDialogs$1;->val$onYesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 21
    :cond_0
    return-void
.end method
