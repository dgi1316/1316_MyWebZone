.class public Lcom/wMyWebZone/Configuration/UrlBarMenuButton;
.super Ljava/lang/Object;
.source "UrlBarMenuButton.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    }
.end annotation


# instance fields
.field private type:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;->type:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    .line 13
    return-void
.end method


# virtual methods
.method public getType()Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;->type:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-object v0
.end method

.method public setType(Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/UrlBarMenuButton;->type:Lcom/wMyWebZone/Configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    .line 21
    return-void
.end method
