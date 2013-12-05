.class public Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;
.super Lcom/wMyWebZone/ads/behavior/activityBehaviors/ActivityVisitor;
.source "AdsSleepBehavior.java"


# instance fields
.field private final ONE_HUNDRED_YEARS:J

.field private _timeOut:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wMyWebZone/ads/behavior/activityBehaviors/ActivityVisitor;-><init>()V

    .line 13
    const-wide/32 v0, 0x41353000

    iput-wide v0, p0, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->ONE_HUNDRED_YEARS:J

    .line 16
    iput p1, p0, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->_timeOut:F

    .line 17
    return-void
.end method

.method private _saveSleepDateToSettigns(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 29
    const-string v6, "AppsgeyserPrefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 30
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 33
    .local v1, now:Ljava/util/Date;
    const-wide/32 v4, 0x41353000

    .line 35
    .local v4, timeout:J
    iget v6, p0, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->_timeOut:F

    const/high16 v7, 0x7f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 36
    const-wide/16 v6, 0x3e8

    iget v8, p0, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->_timeOut:F

    float-to-long v8, v8

    mul-long v4, v6, v8

    .line 39
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 40
    .local v3, sleepTill:Ljava/util/Date;
    const-string v6, "adsSleep"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method


# virtual methods
.method public getTimeout()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->_timeOut:F

    return v0
.end method

.method public visit(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wMyWebZone/ads/behavior/activityBehaviors/AdsSleepBehavior;->_saveSleepDateToSettigns(Landroid/app/Activity;)V

    .line 26
    return-void
.end method
