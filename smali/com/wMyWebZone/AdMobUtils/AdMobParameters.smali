.class public Lcom/wMyWebZone/AdMobUtils/AdMobParameters;
.super Ljava/lang/Object;
.source "AdMobParameters.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _birthday:Ljava/util/Date;

.field private _gender:Lcom/google/ads/AdRequest$Gender;

.field private _keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _latitude:Ljava/lang/Double;

.field private _longtitude:Ljava/lang/Double;

.field private _publisherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "publisherId"
    .parameter "keywords"
    .parameter "gender"
    .parameter "birthday"
    .parameter "latitude"
    .parameter "longtitude"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v7, ""

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_publisherId:Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_publisherId:Ljava/lang/String;

    .line 38
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_keywords:Ljava/util/Set;

    .line 39
    if-eqz p2, :cond_1

    .line 40
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, keywordsParts:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    array-length v8, v4

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_keywords:Ljava/util/Set;

    .line 42
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 43
    .local v6, word:Ljava/lang/String;
    iget-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_keywords:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #keywordsParts:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #word:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_gender:Lcom/google/ads/AdRequest$Gender;

    .line 48
    if-eqz p3, :cond_2

    .line 49
    const-string v7, "male"

    invoke-virtual {p3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 50
    sget-object v7, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_gender:Lcom/google/ads/AdRequest$Gender;

    .line 56
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 57
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_birthday:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_latitude:Ljava/lang/Double;

    .line 70
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_longtitude:Ljava/lang/Double;

    .line 73
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 74
    :try_start_1
    invoke-static {p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_latitude:Ljava/lang/Double;

    .line 75
    invoke-static {p6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_longtitude:Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_4
    :goto_3
    return-void

    .line 51
    :cond_5
    const-string v7, "female"

    invoke-virtual {p3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 52
    sget-object v7, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_gender:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1

    .line 60
    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 61
    .local v2, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_birthday:Ljava/util/Date;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 63
    sget-object v7, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_latitude:Ljava/lang/Double;

    .line 79
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_longtitude:Ljava/lang/Double;

    .line 81
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 82
    sget-object v7, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    :cond_6
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_birthday:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_gender:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_keywords:Ljava/util/Set;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongtitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_longtitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_birthday:Ljava/util/Date;

    .line 120
    return-void
.end method

.method public setCoordinates(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .parameter "latitude"
    .parameter "longtitude"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_latitude:Ljava/lang/Double;

    .line 132
    iput-object p2, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_longtitude:Ljava/lang/Double;

    .line 133
    return-void
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_gender:Lcom/google/ads/AdRequest$Gender;

    .line 112
    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_keywords:Ljava/util/Set;

    .line 104
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0
    .parameter "publisherId"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->_publisherId:Ljava/lang/String;

    .line 96
    return-void
.end method
