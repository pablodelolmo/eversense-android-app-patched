.class public Lcom/senseonics/view/Arrow;
.super Landroid/view/View;
.source "Arrow.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private strokePath:Landroid/graphics/Path;

.field private triangleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    .line 23
    iget-object p1, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/Arrow;->strokePath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/senseonics/view/Arrow;->triangleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 44
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06001e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->strokePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->strokePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/senseonics/view/Arrow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/senseonics/view/Arrow;->strokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/senseonics/view/Arrow;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setTriangleColor(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/senseonics/view/Arrow;->triangleColor:I

    return-void
.end method
