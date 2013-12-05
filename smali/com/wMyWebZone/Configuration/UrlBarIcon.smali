.class public Lcom/wMyWebZone/Configuration/UrlBarIcon;
.super Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;
.source "UrlBarIcon.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private icon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/wMyWebZone/Configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ICON:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Configuration/UrlBarIcon;->setType(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    .line 10
    iput-object p3, p0, Lcom/wMyWebZone/Configuration/UrlBarIcon;->icon:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/UrlBarIcon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/UrlBarIcon;->icon:Ljava/lang/String;

    .line 17
    return-void
.end method
