.class public Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;
.super Ljava/lang/Object;
.source "NavigationWidgetCustomIcon.java"


# instance fields
.field private final ICON_SIZE_IN_DP:I

.field private _badge:Landroid/widget/TextView;

.field private _iconView:Landroid/view/ViewGroup;

.field private _imageButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "iconView"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x26

    iput v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->ICON_SIZE_IN_DP:I

    .line 23
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    .line 24
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_imageButton:Landroid/widget/ImageButton;

    .line 26
    return-void
.end method


# virtual methods
.method public hideBadge()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public hideIcon()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public showBadge()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public showIcon()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public updateBadge(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->showBadge()V

    .line 47
    iget-object v0, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->hideBadge()V

    goto :goto_0
.end method

.method public updateIcon(Ljava/lang/String;)V
    .locals 9
    .parameter "iconPath"

    .prologue
    .line 54
    iget-object v6, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 57
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 58
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    const/high16 v6, 0x4218

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v8, 0x4320

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 59
    .local v5, px:I
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;->_imageButton:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-static {v0, v5, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #px:I
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
