.class public Lcom/wMyWebZone/Utils/ProgressDialogManager;
.super Ljava/lang/Object;
.source "ProgressDialogManager.java"


# static fields
.field private static instance:Lcom/wMyWebZone/Utils/ProgressDialogManager;


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->progressDialog:Landroid/app/ProgressDialog;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wMyWebZone/Utils/ProgressDialogManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    sget-object v0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->instance:Lcom/wMyWebZone/Utils/ProgressDialogManager;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/wMyWebZone/Utils/ProgressDialogManager;

    invoke-direct {v0, p0}, Lcom/wMyWebZone/Utils/ProgressDialogManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->instance:Lcom/wMyWebZone/Utils/ProgressDialogManager;

    .line 15
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->instance:Lcom/wMyWebZone/Utils/ProgressDialogManager;

    return-object v0
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 27
    iget-object v1, p0, Lcom/wMyWebZone/Utils/ProgressDialogManager;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f030009

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
