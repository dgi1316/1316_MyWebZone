.class Lcom/wMyWebZone/Utils/BannerJavascriptInterface$1;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BannerJavascriptInterface;-><init>(Lcom/wMyWebZone/ads/BottomBannerLayout;Lcom/wMyWebZone/ads/AdsLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$1;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$1;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wMyWebZone/Utils/DeviceIdParser;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_androidId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->access$002(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    return-void
.end method
