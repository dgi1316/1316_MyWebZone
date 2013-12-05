.class public Lcom/wMyWebZone/Utils/Geolocation;
.super Ljava/lang/Object;
.source "Geolocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoords(Landroid/app/Activity;)[D
    .locals 5
    .parameter "activity"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/wMyWebZone/Utils/Geolocation;->getLocation(Landroid/app/Activity;)Landroid/location/Location;

    move-result-object v1

    .line 14
    .local v1, l:Landroid/location/Location;
    const/4 v2, 0x2

    new-array v0, v2, [D

    .line 15
    .local v0, gps:[D
    if-eqz v1, :cond_0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 19
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 23
    :cond_0
    return-object v0
.end method

.method public static getLocation(Landroid/app/Activity;)Landroid/location/Location;
    .locals 5
    .parameter "activity"

    .prologue
    .line 28
    :try_start_0
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 29
    .local v2, lm:Landroid/location/LocationManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 32
    .local v3, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 34
    .local v1, l:Landroid/location/Location;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 35
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 45
    .end local v0           #i:I
    .end local v1           #l:Landroid/location/Location;
    .end local v2           #lm:Landroid/location/LocationManager;
    .end local v3           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v1

    .line 34
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/location/Location;
    .restart local v2       #lm:Landroid/location/LocationManager;
    .restart local v3       #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 42
    .end local v0           #i:I
    .end local v1           #l:Landroid/location/Location;
    .end local v2           #lm:Landroid/location/LocationManager;
    .end local v3           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 45
    const/4 v1, 0x0

    goto :goto_1
.end method
