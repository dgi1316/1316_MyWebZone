.class Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->val$hash:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->val$hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_checkSecurityCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_adsLoader:Lcom/wMyWebZone/ads/AdsLoader;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->access$200(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)Lcom/wMyWebZone/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/ads/AdsLoader;->setClickUrl(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
