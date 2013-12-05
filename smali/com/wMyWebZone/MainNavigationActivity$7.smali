.class Lcom/wMyWebZone/MainNavigationActivity$7;
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

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iput-object p2, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$host:Ljava/lang/String;

    iput-object p5, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$realm:Ljava/lang/String;

    iput-object p6, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    .line 741
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$v:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, nm:Ljava/lang/String;
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$v:Landroid/view/View;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, pw:Ljava/lang/String;
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    iget-object v1, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$realm:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/wMyWebZone/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    #setter for: Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v6}, Lcom/wMyWebZone/MainNavigationActivity;->access$102(Lcom/wMyWebZone/MainNavigationActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 746
    iget-object v0, p0, Lcom/wMyWebZone/MainNavigationActivity$7;->this$0:Lcom/wMyWebZone/MainNavigationActivity;

    #setter for: Lcom/wMyWebZone/MainNavigationActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;
    invoke-static {v0, v6}, Lcom/wMyWebZone/MainNavigationActivity;->access$202(Lcom/wMyWebZone/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 747
    return-void
.end method
