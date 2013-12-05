.class public Lcom/wMyWebZone/ads/behavior/BehaviorFactory;
.super Ljava/lang/Object;
.source "BehaviorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
    }
.end annotation


# instance fields
.field public final BANNER_HEIGHT_HEADER:Ljava/lang/String;

.field public final BANNER_WIDTH_HEADER:Ljava/lang/String;

.field public final CLICK_BEHAVIOR_HEADER:Ljava/lang/String;

.field public final HIDE_TIMEOUT_HEADER:Ljava/lang/String;

.field public final INFINITY_VALUE:Ljava/lang/String;

.field public final IS_FULLSCREEN_HEADER:Ljava/lang/String;

.field private final POSTLOAD_BEHAVIORS:[Ljava/lang/String;

.field private final PRELOAD_BEHAVIORS:[Ljava/lang/String;

.field public final REFRESH_TIMEOUT_HEADER:Ljava/lang/String;

.field public final REMAIN_ON_SCREEN_VALUE:Ljava/lang/String;

.field public final SLEEP_TIMEOUT_HEADER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "APPAD-SleepTimeout"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->SLEEP_TIMEOUT_HEADER:Ljava/lang/String;

    .line 21
    const-string v0, "APPAD-HideTimeout"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->HIDE_TIMEOUT_HEADER:Ljava/lang/String;

    .line 22
    const-string v0, "APPAD-BannerWidth"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->BANNER_WIDTH_HEADER:Ljava/lang/String;

    .line 23
    const-string v0, "APPAD-BannerHeight"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->BANNER_HEIGHT_HEADER:Ljava/lang/String;

    .line 24
    const-string v0, "APPAD-IsFullScreen"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->IS_FULLSCREEN_HEADER:Ljava/lang/String;

    .line 25
    const-string v0, "APPAD-ClickBehaviour"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->CLICK_BEHAVIOR_HEADER:Ljava/lang/String;

    .line 26
    const-string v0, "APPAD-RefreshTimeout"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->REFRESH_TIMEOUT_HEADER:Ljava/lang/String;

    .line 28
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->INFINITY_VALUE:Ljava/lang/String;

    .line 29
    const-string v0, "remainOnScreen"

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->REMAIN_ON_SCREEN_VALUE:Ljava/lang/String;

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPAD-SleepTimeout"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->PRELOAD_BEHAVIORS:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "APPAD-HideTimeout"

    aput-object v1, v0, v2

    const-string v1, "APPAD-BannerWidth"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "APPAD-BannerHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "APPAD-IsFullScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "APPAD-ClickBehaviour"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "APPAD-RefreshTimeout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->POSTLOAD_BEHAVIORS:[Ljava/lang/String;

    return-void
.end method

.method private _createBehaviors([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .parameter "types"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v3, resultSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;>;"
    if-eqz p2, :cond_1

    .line 51
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 55
    invoke-direct {p0, p1, v2}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->_isInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->_createVisitor(Ljava/util/Map$Entry;)Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;

    move-result-object v4

    .line 57
    .local v4, visitor:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0           #element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #visitor:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :cond_1
    return-object v3
.end method

.method private _createVisitor(Ljava/util/Map$Entry;)Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 80
    .local v4, result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, headerKey:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, headerValue:Ljava/lang/String;
    const-string v6, "APPAD-SleepTimeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    const/high16 v5, 0x7f80

    .line 86
    .local v5, timeOut:F
    const-string v6, "infinity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 88
    :cond_0
    new-instance v4, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-direct {v4, v5}, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;-><init>(F)V

    .line 123
    .end local v2           #headerKey:Ljava/lang/String;
    .end local v3           #headerValue:Ljava/lang/String;
    .end local v5           #timeOut:F
    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :cond_1
    :goto_0
    return-object v4

    .line 91
    .restart local v2       #headerKey:Ljava/lang/String;
    .restart local v3       #headerValue:Ljava/lang/String;
    :cond_2
    const-string v6, "APPAD-HideTimeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    new-instance v4, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v6}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;-><init>(F)V

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 95
    :cond_3
    const-string v6, "APPAD-BannerWidth"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    new-instance v4, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerWidthBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerWidthBehavior;-><init>(I)V

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 99
    :cond_4
    const-string v6, "APPAD-BannerHeight"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 100
    new-instance v4, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerHeightBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerHeightBehavior;-><init>(I)V

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 103
    :cond_5
    const-string v6, "APPAD-IsFullScreen"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    new-instance v4, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerFullScreenBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/wMyWebZone/ads/behavior/bannerBehaviors/BannerFullScreenBehavior;-><init>(Z)V

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 107
    :cond_6
    const-string v6, "APPAD-ClickBehaviour"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 108
    sget-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 109
    .local v0, clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
    const-string v6, "remainOnScreen"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 110
    sget-object v0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 111
    :cond_7
    new-instance v4, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderClickBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-direct {v4, v0}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderClickBehavior;-><init>(Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;)V

    .line 113
    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 115
    .end local v0           #clickBehavior:Lcom/wMyWebZone/ads/behavior/BehaviorFactory$ClickBehavior;
    :cond_8
    const-string v6, "APPAD-RefreshTimeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    new-instance v4, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;

    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v6}, Lcom/wMyWebZone/ads/behavior/loaderBehaviors/LoaderRefreshTimeoutBehavior;-><init>(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0

    .line 119
    .end local v2           #headerKey:Ljava/lang/String;
    .end local v3           #headerValue:Ljava/lang/String;
    .end local v4           #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .restart local v4       #result:Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;
    goto :goto_0
.end method

.method private _isInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 68
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 69
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const/4 v4, 0x1

    .line 72
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 68
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createPostloadBehaviors(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->POSTLOAD_BEHAVIORS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->_createBehaviors([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createPreloadBehaviors(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/wMyWebZone/ads/behavior/BehaviorVisitor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->PRELOAD_BEHAVIORS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/wMyWebZone/ads/behavior/BehaviorFactory;->_createBehaviors([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
