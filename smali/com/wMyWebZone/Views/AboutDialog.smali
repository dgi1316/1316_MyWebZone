.class public Lcom/wMyWebZone/Views/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# instance fields
.field mActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private mAppVersion:Ljava/lang/String;

.field private mDescription:Landroid/widget/TextView;

.field private mLogo:Landroid/widget/ImageView;

.field private mWidgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/wMyWebZone/MainNavigationActivity;I)V
    .locals 0
    .parameter "activity"
    .parameter "theme"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 88
    invoke-direct {p0, p1}, Lcom/wMyWebZone/Views/AboutDialog;->init(Lcom/wMyWebZone/MainNavigationActivity;)V

    .line 89
    return-void
.end method

.method private _getAppsgeyserUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    iget-object v4, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v4}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v1

    .line 121
    .local v1, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-virtual {v1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAffiliateString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, affLink:Ljava/lang/String;
    const-string v3, "http://www.appsgeyser.com"

    .line 123
    .local v3, realLink:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_0
    move-object v2, v3

    .line 126
    .local v2, finalLink:Ljava/lang/String;
    return-object v2
.end method

.method private init(Lcom/wMyWebZone/MainNavigationActivity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 34
    :try_start_0
    iput-object p1, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 36
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->setContentView(I)V

    .line 37
    const v7, 0x7f0b0001

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    .line 38
    const v7, 0x7f0b0002

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    .line 40
    iget-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v7}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mWidgetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v7}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v8}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mAppVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/wMyWebZone/Views/AboutDialog;->_getAppsgeyserUrl()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, link:Ljava/lang/String;
    iget-object v7, p0, Lcom/wMyWebZone/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    new-instance v8, Lcom/wMyWebZone/Views/AboutDialog$1;

    invoke-direct {v8, p0, v5, p1}, Lcom/wMyWebZone/Views/AboutDialog$1;-><init>(Lcom/wMyWebZone/Views/AboutDialog;Ljava/lang/String;Lcom/wMyWebZone/MainNavigationActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->setCancelable(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v1

    .line 65
    .local v1, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-virtual {v1}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    .local v0, appId:Ljava/lang/Integer;
    const v7, 0x7f0b0003

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    .local v4, flagThisApp:Landroid/widget/TextView;
    const v7, 0x7f08001a

    invoke-virtual {p1, v7}, Lcom/wMyWebZone/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "APP_ID"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, flagText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, poweredText:Ljava/lang/String;
    const v7, 0x7f0b0004

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v7, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p0, v7}, Lcom/wMyWebZone/Views/AboutDialog;->setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .end local v0           #appId:Ljava/lang/Integer;
    .end local v1           #config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .end local v3           #flagText:Ljava/lang/String;
    .end local v4           #flagThisApp:Landroid/widget/TextView;
    .end local v5           #link:Ljava/lang/String;
    .end local v6           #poweredText:Ljava/lang/String;
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method


# virtual methods
.method public setApplicationMode(Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;)V
    .locals 9
    .parameter "mode"

    .prologue
    .line 96
    sget-object v5, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    if-ne p1, v5, :cond_2

    .line 97
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 98
    .local v0, config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getPublisherName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, publisherName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/wMyWebZone/Views/AboutDialog;->_getAppsgeyserUrl()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, link:Ljava/lang/String;
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, templateDescription:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    :cond_0
    const-string v5, "PUB_NAME"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "APPSGEYSER_URL"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP_VERSION"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wMyWebZone/Views/AboutDialog;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, descr:Ljava/lang/String;
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .end local v0           #config:Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;
    .end local v1           #descr:Ljava/lang/String;
    .end local v2           #link:Ljava/lang/String;
    .end local v3           #publisherName:Ljava/lang/String;
    .end local v4           #templateDescription:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    sget-object v5, Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/wMyWebZone/MainNavigationActivity$ApplicationMode;

    if-ne p1, v5, :cond_1

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wMyWebZone/Views/AboutDialog;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br /> <br />v."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wMyWebZone/Views/AboutDialog;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1       #descr:Ljava/lang/String;
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/wMyWebZone/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/AboutDialog;->show()V

    .line 93
    return-void
.end method
