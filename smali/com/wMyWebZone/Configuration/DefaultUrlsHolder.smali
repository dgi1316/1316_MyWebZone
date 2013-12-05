.class public Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;
.super Ljava/lang/Object;
.source "DefaultUrlsHolder.java"


# static fields
.field private static instance:Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;


# instance fields
.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->instance:Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    invoke-direct {v0}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;-><init>()V

    sput-object v0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->instance:Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    .line 15
    :cond_0
    sget-object v0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->instance:Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;

    return-object v0
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->containsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public containsUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 44
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
