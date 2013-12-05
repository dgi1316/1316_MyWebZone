.class public Lcom/wMyWebZone/Model/NavigationSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "NavigationSlidingDrawer.java"


# instance fields
.field private _leftTop:[I

.field private mTopOffset:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->_leftTop:[I

    .line 18
    const-string v3, "android"

    const-string v4, "orientation"

    invoke-interface {p2, v3, v4, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, orientation:I
    const-string v3, "android"

    const-string v4, "topOffset"

    invoke-interface {p2, v3, v4, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mTopOffset:I

    .line 20
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mVertical:Z

    .line 21
    new-instance v1, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$1;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$1;-><init>(Lcom/wMyWebZone/Model/NavigationSlidingDrawer;)V

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 27
    new-instance v1, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$2;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer$2;-><init>(Lcom/wMyWebZone/Model/NavigationSlidingDrawer;)V

    invoke-virtual {p0, v1}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 33
    return-void

    :cond_0
    move v1, v2

    .line 20
    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    .local v5, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v7, v9

    .line 41
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v8, v9

    .line 43
    .local v8, y:I
    const v9, 0x7f0b001e

    invoke-virtual {p0, v9}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 46
    .local v6, trueHandle:Landroid/view/View;
    iget-object v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->_leftTop:[I

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 47
    iget-object v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->_leftTop:[I

    const/4 v10, 0x0

    aget v1, v9, v10

    .line 48
    .local v1, handleLeft:I
    iget-object v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->_leftTop:[I

    aget v3, v9, v11

    .line 49
    .local v3, handleTop:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v2, v1, v9

    .line 50
    .local v2, handleRight:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v0, v3, v9

    .line 52
    .local v0, handleBottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 57
    .end local v0           #handleBottom:I
    .end local v1           #handleLeft:I
    .end local v2           #handleRight:I
    .end local v3           #handleTop:I
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v6           #trueHandle:Landroid/view/View;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_0
    return v5
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 67
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 69
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 70
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 72
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 73
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, handle:Landroid/view/View;
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, content:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 80
    iget-boolean v8, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_3

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    iget v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mTopOffset:I

    sub-int v2, v8, v9

    .line 82
    .local v2, height:I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v4, v8, v9

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-le v8, v7, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 95
    .end local v2           #height:I
    :cond_2
    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->setMeasuredDimension(II)V

    .line 96
    return-void

    .line 88
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v7, v8

    iget v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mTopOffset:I

    sub-int v5, v8, v9

    .line 89
    .local v5, width:I
    invoke-virtual {p0}, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v8

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, p2}, Landroid/view/View;->measure(II)V

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/wMyWebZone/Model/NavigationSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v7, v8, v9

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-le v8, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_0
.end method
