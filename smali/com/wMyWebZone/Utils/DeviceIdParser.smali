.class public Lcom/wMyWebZone/Utils/DeviceIdParser;
.super Ljava/lang/Object;
.source "DeviceIdParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter "activity"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter "activity"

    .prologue
    .line 12
    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 13
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 14
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 20
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 17
    :catch_0
    move-exception v1

    .line 20
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
