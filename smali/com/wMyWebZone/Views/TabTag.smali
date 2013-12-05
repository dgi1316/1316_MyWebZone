.class public Lcom/wMyWebZone/Views/TabTag;
.super Landroid/widget/LinearLayout;
.source "TabTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wMyWebZone/Views/TabTag$TagType;
    }
.end annotation


# instance fields
.field private final PREDEFINED_ICON:I

.field private final PREDEFINED_ICON_ACTIVE:I

.field private _activeState:Z

.field private _background:Landroid/view/ViewGroup;

.field private _context:Landroid/content/Context;

.field private _icon:Ljava/lang/String;

.field private _iconImageActive:Landroid/graphics/drawable/Drawable;

.field private _iconImageDeactive:Landroid/graphics/drawable/Drawable;

.field private _image:Landroid/widget/ImageView;

.field private _label:Landroid/widget/TextView;

.field private _name:Ljava/lang/String;

.field private _nameTextColorActive:I

.field private _nameTextColorDeactive:I

.field private _tabTagController:Lcom/wMyWebZone/Controllers/ITabTagController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    .line 32
    const v0, 0x7f020016

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->PREDEFINED_ICON:I

    .line 33
    const v0, 0x7f020017

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->PREDEFINED_ICON_ACTIVE:I

    .line 47
    iput-object p1, p0, Lcom/wMyWebZone/Views/TabTag;->_context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    .line 32
    const v0, 0x7f020016

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->PREDEFINED_ICON:I

    .line 33
    const v0, 0x7f020017

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->PREDEFINED_ICON_ACTIVE:I

    .line 42
    iput-object p1, p0, Lcom/wMyWebZone/Views/TabTag;->_context:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getActiveState()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/wMyWebZone/Views/TabTag;->_activeState:Z

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/wMyWebZone/Controllers/ITabTagController;)V
    .locals 2
    .parameter "tabTagController"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wMyWebZone/Views/TabTag;->_tabTagController:Lcom/wMyWebZone/Controllers/ITabTagController;

    .line 52
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/TabTag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/TabTag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_label:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->_nameTextColorActive:I

    .line 55
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wMyWebZone/Views/TabTag;->_nameTextColorDeactive:I

    .line 56
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/wMyWebZone/Views/TabTag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_background:Landroid/view/ViewGroup;

    .line 57
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_tabTagController:Lcom/wMyWebZone/Controllers/ITabTagController;

    invoke-interface {v0}, Lcom/wMyWebZone/Controllers/ITabTagController;->onTagSelected()V

    .line 63
    :cond_0
    return v1
.end method

.method public setActiveState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/wMyWebZone/Views/TabTag;->_activeState:Z

    .line 113
    iget-boolean v0, p0, Lcom/wMyWebZone/Views/TabTag;->_activeState:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_background:Landroid/view/ViewGroup;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_label:Landroid/widget/TextView;

    iget v1, p0, Lcom/wMyWebZone/Views/TabTag;->_nameTextColorActive:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_background:Landroid/view/ViewGroup;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_label:Landroid/widget/TextView;

    iget v1, p0, Lcom/wMyWebZone/Views/TabTag;->_nameTextColorDeactive:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 8
    .parameter "icon"

    .prologue
    const v7, 0x7f020017

    const v6, 0x7f020016

    .line 83
    :try_start_0
    iput-object p1, p0, Lcom/wMyWebZone/Views/TabTag;->_icon:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/Factory/Factory;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wMyWebZone/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;

    .line 107
    .end local v1           #id:I
    :goto_1
    return-void

    .line 92
    .restart local v1       #id:I
    :cond_0
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1           #id:I
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageDeactive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:I
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TabTag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wMyWebZone/Views/TabTag;->_iconImageActive:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wMyWebZone/Views/TabTag;->_name:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/wMyWebZone/Views/TabTag;->_label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wMyWebZone/Views/TabTag;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
