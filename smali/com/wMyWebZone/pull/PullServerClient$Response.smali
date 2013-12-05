.class public Lcom/wMyWebZone/pull/PullServerClient$Response;
.super Ljava/lang/Object;
.source "PullServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/pull/PullServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field launchMain:Ljava/lang/String;

.field message:Ljava/lang/String;

.field final synthetic this$0:Lcom/wMyWebZone/pull/PullServerClient;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/pull/PullServerClient;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wMyWebZone/pull/PullServerClient$Response;->this$0:Lcom/wMyWebZone/pull/PullServerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient$Response;->url:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient$Response;->title:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient$Response;->message:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/pull/PullServerClient$Response;->launchMain:Ljava/lang/String;

    return-void
.end method
