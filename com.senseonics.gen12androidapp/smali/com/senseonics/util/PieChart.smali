.class public Lcom/senseonics/util/PieChart;
.super Landroid/view/View;
.source "PieChart.java"


# instance fields
.field private colors:[I

.field private paint:Landroid/graphics/Paint;

.field private rectf:Landroid/graphics/RectF;

.field temp:I

.field private value_degree:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/senseonics/util/PieChart;->temp:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;[I[I)V
    .locals 3

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/senseonics/util/PieChart;->temp:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/util/PieChart;->paint:Landroid/graphics/Paint;

    .line 28
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/senseonics/util/PieChart;->colors:[I

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/senseonics/util/PieChart;->colors:[I

    aget v2, p3, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/senseonics/util/PieChart;->rectf:Landroid/graphics/RectF;

    .line 34
    array-length p2, p4

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    .line 35
    :goto_1
    array-length p2, p4

    if-ge p1, p2, :cond_1

    .line 36
    iget-object p2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    aget p3, p4, p1

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/senseonics/util/PieChart;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/senseonics/util/PieChart;->colors:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 47
    iget-object v4, p0, Lcom/senseonics/util/PieChart;->rectf:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    aget v2, v2, v1

    int-to-float v6, v2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/senseonics/util/PieChart;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 50
    :cond_0
    iget v2, p0, Lcom/senseonics/util/PieChart;->temp:I

    iget-object v3, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/senseonics/util/PieChart;->temp:I

    .line 51
    iget-object v2, p0, Lcom/senseonics/util/PieChart;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/senseonics/util/PieChart;->colors:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 53
    iget-object v4, p0, Lcom/senseonics/util/PieChart;->rectf:Landroid/graphics/RectF;

    iget v2, p0, Lcom/senseonics/util/PieChart;->temp:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/senseonics/util/PieChart;->value_degree:[I

    aget v2, v2, v1

    int-to-float v6, v2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/senseonics/util/PieChart;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iput v0, p0, Lcom/senseonics/util/PieChart;->temp:I

    return-void
.end method
