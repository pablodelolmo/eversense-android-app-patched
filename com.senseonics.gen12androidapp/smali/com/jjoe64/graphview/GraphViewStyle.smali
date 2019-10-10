.class public Lcom/jjoe64/graphview/GraphViewStyle;
.super Ljava/lang/Object;
.source "GraphViewStyle.java"


# instance fields
.field private gridColor:I

.field private horizontalLabelsColor:I

.field private legendBorder:I

.field private legendMarginBottom:I

.field private legendSpacing:I

.field private legendWidth:I

.field private numHorizontalLabels:I

.field private numVerticalLabels:I

.field private textSize:F

.field private verticalLabelsAlign:Landroid/graphics/Paint$Align;

.field private verticalLabelsColor:I

.field private verticalLabelsWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphViewStyle;->setDefaults()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphViewStyle;->setDefaults()V

    .line 53
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsColor:I

    .line 54
    iput p2, p0, Lcom/jjoe64/graphview/GraphViewStyle;->horizontalLabelsColor:I

    .line 55
    iput p3, p0, Lcom/jjoe64/graphview/GraphViewStyle;->gridColor:I

    return-void
.end method

.method private setDefaults()V
    .locals 1

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsColor:I

    .line 108
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->horizontalLabelsColor:I

    const v0, -0xbbbbbc

    .line 109
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->gridColor:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 110
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->textSize:F

    const/16 v0, 0x78

    .line 111
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendWidth:I

    const/16 v0, 0xa

    .line 112
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendBorder:I

    .line 113
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendSpacing:I

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendMarginBottom:I

    .line 115
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    return-void
.end method


# virtual methods
.method public getGridColor()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->gridColor:I

    return v0
.end method

.method public getHorizontalLabelsColor()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->horizontalLabelsColor:I

    return v0
.end method

.method public getLegendBorder()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendBorder:I

    return v0
.end method

.method public getLegendMarginBottom()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendMarginBottom:I

    return v0
.end method

.method public getLegendSpacing()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendSpacing:I

    return v0
.end method

.method public getLegendWidth()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendWidth:I

    return v0
.end method

.method public getNumHorizontalLabels()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->numHorizontalLabels:I

    return v0
.end method

.method public getNumVerticalLabels()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->numVerticalLabels:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->textSize:F

    return v0
.end method

.method public getVerticalLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getVerticalLabelsColor()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsColor:I

    return v0
.end method

.method public getVerticalLabelsWidth()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsWidth:I

    return v0
.end method

.method public setGridColor(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->gridColor:I

    return-void
.end method

.method public setHorizontalLabelsColor(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->horizontalLabelsColor:I

    return-void
.end method

.method public setLegendBorder(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendBorder:I

    return-void
.end method

.method public setLegendMarginBottom(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendMarginBottom:I

    return-void
.end method

.method public setLegendSpacing(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendSpacing:I

    return-void
.end method

.method public setLegendWidth(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->legendWidth:I

    return-void
.end method

.method public setNumHorizontalLabels(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->numHorizontalLabels:I

    return-void
.end method

.method public setNumVerticalLabels(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->numVerticalLabels:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->textSize:F

    return-void
.end method

.method public setVerticalLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsAlign:Landroid/graphics/Paint$Align;

    return-void
.end method

.method public setVerticalLabelsColor(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsColor:I

    return-void
.end method

.method public setVerticalLabelsWidth(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/jjoe64/graphview/GraphViewStyle;->verticalLabelsWidth:I

    return-void
.end method

.method public useTextColorFromTheme(Landroid/content/Context;)V
    .locals 3

    .line 180
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010036

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphViewStyle;->getVerticalLabelsColor()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 183
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/GraphViewStyle;->setVerticalLabelsColor(I)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/GraphViewStyle;->setHorizontalLabelsColor(I)V

    :cond_0
    return-void
.end method
