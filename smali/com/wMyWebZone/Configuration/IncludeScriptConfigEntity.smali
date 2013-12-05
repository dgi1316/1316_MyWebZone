.class public Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;
.super Ljava/lang/Object;
.source "IncludeScriptConfigEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final file:Ljava/lang/String;

.field private final pattern:Ljava/lang/String;

.field private final regex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pattern"
    .parameter "regex"
    .parameter "file"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p3, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->file:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->pattern:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->regex:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/IncludeScriptConfigEntity;->regex:Ljava/lang/String;

    return-object v0
.end method
