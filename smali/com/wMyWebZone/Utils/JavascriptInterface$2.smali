.class Lcom/wMyWebZone/Utils/JavascriptInterface$2;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Utils/JavascriptInterface;->updateIconBadge(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

.field final synthetic val$buttonBadge:Ljava/lang/String;

.field final synthetic val$buttonName:Ljava/lang/String;

.field final synthetic val$icons:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->this$0:Lcom/wMyWebZone/Utils/JavascriptInterface;

    iput-object p2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$icons:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$buttonName:Ljava/lang/String;

    iput-object p4, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$buttonBadge:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$icons:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$buttonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;

    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface$2;->val$buttonBadge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->updateBadge(Ljava/lang/String;)V

    .line 98
    return-void
.end method
