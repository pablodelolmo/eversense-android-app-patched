.class public Lcom/senseonics/graph/VerticalLineHolder;
.super Landroid/view/View;
.source "VerticalLineHolder.java"


# instance fields
.field private gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

.field private final shouldHandleTouch:Z

.field private showVerticalLine:Z

.field private verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

.field private verticalLinePaint:Landroid/graphics/Paint;

.field private verticalLinePositionX:F

.field private verticalLineRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 28
    div-int/lit8 v0, p2, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, p4

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    .line 40
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 42
    new-instance p2, Lcom/senseonics/graph/VerticalLineHolder$1;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/VerticalLineHolder$1;-><init>(Lcom/senseonics/graph/VerticalLineHolder;)V

    iput-object p2, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    if-nez p4, :cond_0

    const/4 v1, 0x1

    .line 59
    :cond_0
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->shouldHandleTouch:Z

    .line 60
    new-instance p2, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance p3, Lcom/senseonics/graph/VerticalLineHolder$2;

    invoke-direct {p3, p0}, Lcom/senseonics/graph/VerticalLineHolder$2;-><init>(Lcom/senseonics/graph/VerticalLineHolder;)V

    invoke-direct {p2, p1, p3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/senseonics/graph/VerticalLineHolder;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public drawVerticalLine(F)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 112
    iput p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 113
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 114
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {p1}, Lcom/senseonics/graph/GraphView$LineScrollManager;->stopScroll()V

    .line 115
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 121
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->scrollLeft()V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iput p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 126
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {p1}, Lcom/senseonics/graph/GraphView$LineScrollManager;->scrollRight()V

    .line 129
    :cond_2
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 130
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    iget v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    invoke-interface {p1, v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->positionChanged(F)V

    return-void
.end method

.method public getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-object v0
.end method

.method public hideVerticalLine()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->stopScroll()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 138
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->actionCancelled()V

    .line 139
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 72
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    if-eqz v0, :cond_0

    .line 73
    iget v2, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v4, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->shouldHandleTouch:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineIsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/VerticalLineHolder;->drawVerticalLine(F)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->hideVerticalLine()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 101
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    return-void
.end method

.method public verticalLineIsVisible()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    return v0
.end method
