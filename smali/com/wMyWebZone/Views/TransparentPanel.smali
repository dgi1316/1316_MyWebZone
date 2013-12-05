.class public Lcom/wMyWebZone/Views/TransparentPanel;
.super Landroid/widget/RelativeLayout;
.source "TransparentPanel.java"


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private innerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/wMyWebZone/Views/TransparentPanel;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-direct {p0}, Lcom/wMyWebZone/Views/TransparentPanel;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xa0

    const/16 v2, 0x4b

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 27
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 31
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4120

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 48
    .local v0, drawRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TransparentPanel;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wMyWebZone/Views/TransparentPanel;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    iget-object v1, p0, Lcom/wMyWebZone/Views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 51
    iget-object v1, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "borderPaint"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wMyWebZone/Views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method public setInnerPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "innerPaint"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wMyWebZone/Views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    .line 38
    return-void
.end method
