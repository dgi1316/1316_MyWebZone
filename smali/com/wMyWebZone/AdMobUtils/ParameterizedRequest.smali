.class public Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;
.super Ljava/lang/Object;
.source "ParameterizedRequest.java"


# static fields
.field private static final LOCATION_PROVIDER:Ljava/lang/String; = "Appsgeyser"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

.field private _request:Lcom/google/ads/AdRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    .line 20
    new-instance v0, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-direct {v0}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/AdRequest;Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V
    .locals 0
    .parameter "request"
    .parameter "adMobParameters"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    .line 25
    iput-object p2, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    .line 26
    invoke-virtual {p0}, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->acceptParameters()V

    .line 27
    return-void
.end method


# virtual methods
.method public acceptParameters()V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    iput-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-direct {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;-><init>()V

    iput-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    iget-object v2, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v2}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 42
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    iget-object v2, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v2}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getBirthday()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    iget-object v2, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v2}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    .line 48
    :cond_4
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getLongtitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 49
    new-instance v0, Landroid/location/Location;

    const-string v1, "Appsgeyser"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, location:Landroid/location/Location;
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 51
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    invoke-virtual {v1}, Lcom/wMyWebZone/AdMobUtils/AdMobParameters;->getLongtitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 52
    iget-object v1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    .line 54
    .end local v0           #location:Landroid/location/Location;
    :cond_5
    return-void
.end method

.method public getAdMobParameters()Lcom/wMyWebZone/AdMobUtils/AdMobParameters;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    return-object v0
.end method

.method public getRequest()Lcom/google/ads/AdRequest;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    return-object v0
.end method

.method public setAdMobParameters(Lcom/wMyWebZone/AdMobUtils/AdMobParameters;)V
    .locals 0
    .parameter "adMobParameters"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_adMobParameters:Lcom/wMyWebZone/AdMobUtils/AdMobParameters;

    .line 67
    return-void
.end method

.method public setRequest(Lcom/google/ads/AdRequest;)V
    .locals 0
    .parameter "reques"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/wMyWebZone/AdMobUtils/ParameterizedRequest;->_request:Lcom/google/ads/AdRequest;

    .line 61
    return-void
.end method
