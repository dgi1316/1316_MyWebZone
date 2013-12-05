.class public Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
.super Ljava/lang/Object;
.source "WebWidgetConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;,
        Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    }
.end annotation


# static fields
.field private static final GUID_KEY_NAME:Ljava/lang/String; = "AppGuidString"

.field public static final PUSH_ACCOUNT_NAME:Ljava/lang/String; = "PushAccountName"


# instance fields
.field private acceptCookie:Z

.field private addUsageUrl:Ljava/lang/String;

.field private affiliateGetString:Ljava/lang/String;

.field private appGuid:Ljava/lang/String;

.field private appMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

.field private applicationId:I

.field private bannerPosition:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

.field private contentHeight:I

.field private contentWidth:I

.field private downloadAction:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

.field private fullScreenBannerEnabled:Z

.field private fullScreenModeUrl:Ljava/lang/String;

.field private httpAccessLogin:Ljava/lang/String;

.field private httpAccessPassword:Ljava/lang/String;

.field private isAboutScreenEnabled:Z

.field private isRedirectEnabled:Z

.field private isSplashScreenEnabled:Z

.field private locationUrl:Ljava/lang/String;

.field private onExitFullScreenBannerEnabled:Z

.field private preventFromSleep:Z

.field private publisherName:Ljava/lang/String;

.field private pushAccount:Ljava/lang/String;

.field private rateItemVisibility:Z

.field private registeredUrl:Ljava/lang/String;

.field private showAboutMenuItem:Z

.field private showExitMenuItem:Z

.field private showRefreshMenuItem:Z

.field private showShareMenuItem:Z

.field private splashScreenImage:Ljava/lang/String;

.field private updatePeriodOfFullScreenModeInMs:J

.field private updatePeriodOfWidgetInMS:J

.field private urlBarMenuButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wMyWebZone/Configuration/UrlBarMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private urlOverlayEnabled:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

.field private widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 35
    sget-object v0, Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;->TOP:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->bannerPosition:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    .line 36
    iput-boolean v1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    .line 37
    iput-boolean v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->acceptCookie:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->fullScreenBannerEnabled:Z

    .line 40
    iput-boolean v1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->onExitFullScreenBannerEnabled:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->publisherName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isRedirectEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isAboutScreenEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    .line 49
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->downloadAction:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    iput-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    return-void
.end method


# virtual methods
.method public addUrlBarMenuButton(Lcom/wMyWebZone/Configuration/UrlBarMenuButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getAcceptCookie()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->acceptCookie:Z

    return v0
.end method

.method public getAddUsageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUsageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    return-object v0
.end method

.method public getAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->applicationId:I

    return v0
.end method

.method public getApplicationMode()Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method public getBannerPosition()Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->bannerPosition:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->contentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->contentWidth:I

    return v0
.end method

.method public getDownloadAction()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->downloadAction:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    return-object v0
.end method

.method public getFullScreenModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->fullScreenModeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFullscreenBannerEnabled()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->fullScreenBannerEnabled:Z

    return v0
.end method

.method public getHttpAccessLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->httpAccessLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAccessPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->httpAccessPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAboutScreenEnabled()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isAboutScreenEnabled:Z

    return v0
.end method

.method public getIsRedirectEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isRedirectEnabled:Z

    return v0
.end method

.method public getLocationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOnExitFullscreenBannerEnabled()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->onExitFullScreenBannerEnabled:Z

    return v0
.end method

.method public getPreventFromSleep()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->preventFromSleep:Z

    return v0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->publisherName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getRateItemVisibility()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    return v0
.end method

.method public getRegisteredUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->registeredUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAboutMenuItem()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showAboutMenuItem:Z

    return v0
.end method

.method public getShowExitMenuItem()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showExitMenuItem:Z

    return v0
.end method

.method public getShowRefreshMenuItem()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showRefreshMenuItem:Z

    return v0
.end method

.method public getShowShareMenuItem()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showShareMenuItem:Z

    return v0
.end method

.method public getSplashScreenImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePeriodOfFullScreenModeInMs()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->updatePeriodOfFullScreenModeInMs:J

    return-wide v0
.end method

.method public getUpdatePeriodOfWidgetInMS()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->updatePeriodOfWidgetInMS:J

    return-wide v0
.end method

.method public getUrlBarMenuButtons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wMyWebZone/Configuration/UrlBarMenuButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrlOverlayState()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    return-object v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->widgetName:Ljava/lang/String;

    return-object v0
.end method

.method public isSplashScreenEnabled()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    return v0
.end method

.method public loadGuid(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v2, "AppsgeyserPrefs"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "AppGuidString"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public loadPushAccount(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string v2, "AppsgeyserPrefs"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "PushAccountName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public saveNewAppGuid(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .parameter "newAppGuid"
    .parameter "activity"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    .line 100
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AppGuidString"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public saveNewPushAccount(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "newPushAccount"
    .parameter "context"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    .line 119
    const-string v2, "AppsgeyserPrefs"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PushAccountName"

    iget-object v3, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 0
    .parameter "acceptCookie"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->acceptCookie:Z

    .line 263
    return-void
.end method

.method public setAddUsageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "addUsageUrl"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->addUsageUrl:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setAffiliateString(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setApplicationId(I)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 168
    iput p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->applicationId:I

    .line 169
    return-void
.end method

.method public setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->appMode:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    .line 242
    return-void
.end method

.method public setBannerPosition(Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;)V
    .locals 0
    .parameter "bannerPosition"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->bannerPosition:Lcom/wMyWebZone/ads/BottomBannerLayout$BannerPosition;

    .line 249
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 217
    iput p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->contentHeight:I

    .line 218
    return-void
.end method

.method public setContentWidth(I)V
    .locals 0
    .parameter "contentWidth"

    .prologue
    .line 211
    iput p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->contentWidth:I

    .line 212
    return-void
.end method

.method public setDownloadAction(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;)V
    .locals 0
    .parameter "downloadAction"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->downloadAction:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$DownloadActions;

    .line 329
    return-void
.end method

.method public setFullScreenModeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fullScreenModeUrl"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->fullScreenModeUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setFullscreenBannerEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->fullScreenBannerEnabled:Z

    .line 270
    return-void
.end method

.method public setHttpAccessLogin(Ljava/lang/String;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->httpAccessLogin:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setHttpAccessPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "pass"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->httpAccessPassword:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setIsAboutScreenEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isAboutScreenEnabled:Z

    .line 193
    return-void
.end method

.method public setIsRedirectEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isRedirectEnabled:Z

    .line 84
    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "locationUrl"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->locationUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setOnExitFullscreenBannerEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->onExitFullScreenBannerEnabled:Z

    .line 277
    return-void
.end method

.method public setPreventFromSleep(Z)V
    .locals 0
    .parameter "isPreventFromSleep"

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->preventFromSleep:Z

    .line 235
    return-void
.end method

.method public setPublisherName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->publisherName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setRateItemVisibility(Z)V
    .locals 0
    .parameter "rateItem"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    .line 256
    return-void
.end method

.method public setRegisteredUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "registeredUrl"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->registeredUrl:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setShowAboutMenuItem(Z)V
    .locals 0
    .parameter "showAboutMenuItem"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showAboutMenuItem:Z

    .line 299
    return-void
.end method

.method public setShowExitMenuItem(Z)V
    .locals 0
    .parameter "showExitMenuItem"

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showExitMenuItem:Z

    .line 307
    return-void
.end method

.method public setShowRefreshMenuItem(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showRefreshMenuItem:Z

    .line 184
    return-void
.end method

.method public setShowShareMenuItem(Z)V
    .locals 0
    .parameter "showShareMenuItem"

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->showShareMenuItem:Z

    .line 291
    return-void
.end method

.method public setSplashScreen(Ljava/lang/String;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    .line 312
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUpdatePeriodOfFullScreenModeInMs(J)V
    .locals 0
    .parameter "updatePeriodOfFullScreenModeInMs"

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->updatePeriodOfFullScreenModeInMs:J

    .line 200
    return-void
.end method

.method public setUpdatePeriodOfWidgetInMS(J)V
    .locals 0
    .parameter "updatePeriodOfWidgetInMS"

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->updatePeriodOfWidgetInMS:J

    .line 187
    return-void
.end method

.method public setUrlBarMenuButtons(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wMyWebZone/Configuration/UrlBarMenuButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, urlBarMenuButtons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wMyWebZone/Configuration/UrlBarMenuButton;>;"
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setUrlOverlayState(Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration$UrlBarStates;

    .line 284
    return-void
.end method

.method public setWidgetName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->widgetName:Ljava/lang/String;

    .line 145
    return-void
.end method
