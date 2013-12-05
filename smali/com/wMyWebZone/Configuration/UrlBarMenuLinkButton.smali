.class public Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;
.super Lcom/wMyWebZone/Configuration/UrlBarMenuButton;
.source "UrlBarMenuLinkButton.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "url"

    .prologue
    .line 16
    sget-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p0, v0}, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;-><init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    .line 17
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->url:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;->url:Ljava/lang/String;

    return-object v0
.end method
