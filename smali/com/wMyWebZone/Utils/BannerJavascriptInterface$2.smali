.class Lcom/wMyWebZone/Utils/BannerJavascriptInterface$2;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->close()V
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
    .line 33
    iput-object p1, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$2;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wMyWebZone/Utils/BannerJavascriptInterface$2;->this$0:Lcom/wMyWebZone/Utils/BannerJavascriptInterface;

    #getter for: Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->_layout:Lcom/wMyWebZone/ads/BottomBannerLayout;
    invoke-static {v0}, Lcom/wMyWebZone/Utils/BannerJavascriptInterface;->access$100(Lcom/wMyWebZone/Utils/BannerJavascriptInterface;)Lcom/wMyWebZone/ads/BottomBannerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/ads/BottomBannerLayout;->hideBanner()V

    .line 36
    return-void
.end method
