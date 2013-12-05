.class Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->showAdMobAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

.field final synthetic val$birthday:Ljava/lang/String;

.field final synthetic val$genderString:Ljava/lang/String;

.field final synthetic val$keywords:Ljava/lang/String;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longtitude:Ljava/lang/String;

.field final synthetic val$publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$publisherId:Ljava/lang/String;

    iput-object p3, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$keywords:Ljava/lang/String;

    iput-object p4, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$genderString:Ljava/lang/String;

    iput-object p5, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$birthday:Ljava/lang/String;

    iput-object p6, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$latitude:Ljava/lang/String;

    iput-object p7, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$longtitude:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 46
    new-instance v0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$publisherId:Ljava/lang/String;

    iget-object v2, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$keywords:Ljava/lang/String;

    iget-object v3, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$genderString:Ljava/lang/String;

    iget-object v4, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$birthday:Ljava/lang/String;

    iget-object v5, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$latitude:Ljava/lang/String;

    iget-object v6, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->val$longtitude:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;
    iget-object v1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$3;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_layout:Lcom/wMyWebZone/ads/BottomBannerLayout;
    invoke-static {v1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->access$100(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)Lcom/wMyWebZone/ads/BottomBannerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->switchToAdMobAd(Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V

    .line 48
    return-void
.end method
