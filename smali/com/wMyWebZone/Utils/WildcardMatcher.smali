.class public Lcom/wMyWebZone/Utils/WildcardMatcher;
.super Ljava/lang/Object;
.source "WildcardMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 6
    const-string v6, "\\*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7
    .local v2, cards:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 9
    .local v1, card:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 10
    .local v4, idx:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 12
    const/4 v6, 0x0

    .line 17
    .end local v1           #card:Ljava/lang/String;
    .end local v4           #idx:I
    :goto_1
    return v6

    .line 14
    .restart local v1       #card:Ljava/lang/String;
    .restart local v4       #idx:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    .end local v1           #card:Ljava/lang/String;
    .end local v4           #idx:I
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method
