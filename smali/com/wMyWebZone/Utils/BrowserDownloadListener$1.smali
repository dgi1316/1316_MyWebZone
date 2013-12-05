.class Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BrowserDownloadListener;

.field final synthetic val$mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->this$0:Lcom/wMyWebZone/Utils/BrowserDownloadListener;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$mimetype:Ljava/lang/String;

    iput-object p4, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/wMyWebZone/Utils/BrowserDownloadListener$1;->val$mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0, v1, v2}, Lcom/wMyWebZone/Utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    return-void
.end method
