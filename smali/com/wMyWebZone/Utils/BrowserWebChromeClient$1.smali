.class Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;
.super Ljava/lang/Object;
.source "BrowserWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BrowserWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BrowserWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BrowserWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;->this$0:Lcom/wMyWebZone/Utils/BrowserWebChromeClient;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BrowserWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 86
    return-void
.end method
