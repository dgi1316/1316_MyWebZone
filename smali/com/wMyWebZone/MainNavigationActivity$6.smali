.class Lcom/wMyWebZone/MainNavigationActivity$6;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/MainNavigationActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity$6;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iput-object p2, p0, Lcom/wMyWebZone/MainNavigationActivity$6;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$6;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 751
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$6;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    #setter for: Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->access$102(Lcom/wMyWebZone/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 752
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$6;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    #setter for: Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;
    invoke-static {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->access$202(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 753
    return-void
.end method
