.class public Lcom/senseonics/graph/WeeklyStatGraph;
.super Landroid/view/View;
.source "WeeklyStatGraph.java"


# instance fields
.field private INVALID_X_Y:I

.field private avgStatBitmap:Landroid/graphics/Bitmap;

.field private centerPaint:Landroid/graphics/Paint;

.field private dashedLinePaint:Landroid/graphics/Paint;

.field private graphBottom:I

.field private graphHeight:I

.field private interval:I

.field private maxX:I

.field private minX:I

.field private paddingBottom:I

.field private paddingTop:I

.field private path:Landroid/graphics/Path;

.field private simpleLinePaint:Landroid/graphics/Paint;

.field private statValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;"
        }
    .end annotation
.end field

.field private textRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    const/16 p1, 0x1a4

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    const/16 p1, 0x1a4

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    const/16 p1, 0x1a4

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    const/16 p2, 0x1a4

    iput p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    const/16 p2, 0x14

    iput p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v4, v3, [F

    int-to-float p2, p2

    aput p2, v4, p1

    aput p2, v4, v1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 72
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->path:Landroid/graphics/Path;

    .line 74
    iput-object p3, p0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/graph/util/WeeklyStatValue;

    const-string p3, "Report debug"

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/senseonics/graph/util/WeeklyStatValue;->getAvg()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08006f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    .line 82
    iget-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    const/16 p2, 0x1e

    invoke-static {p1, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    .line 84
    iget p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    .line 85
    iget-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    .line 86
    iget-object p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v3

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingTop:I

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingTop:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->graphHeight:I

    .line 88
    invoke-virtual {p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    return-void
.end method

.method private isValidPoint(Landroid/graphics/Point;)Z
    .locals 2

    .line 305
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setStartTimeTextView(I)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 93
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/senseonics/util/Utils;->getHour24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPositionY(I)F
    .locals 4

    .line 313
    iget v0, p0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/senseonics/graph/WeeklyStatGraph;->graphHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    iget v3, p0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingTop:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphHeight:I

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    .line 103
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    div-int v8, v1, v2

    .line 104
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphHeight:I

    div-int v9, v1, v8

    .line 106
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v10, 0x6

    mul-int/lit8 v1, v1, 0x6

    const/4 v11, 0x5

    div-int/lit8 v12, v1, 0x5

    .line 109
    sget-object v1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/16 v13, 0xb4

    const v14, 0x7f060065

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v5, 0x7f06001e

    if-ne v1, v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v8, :cond_2

    .line 112
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->interval:I

    mul-int v1, v1, v3

    mul-int v2, v3, v9

    .line 114
    iget v4, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    sub-int/2addr v4, v2

    if-eqz v1, :cond_1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 117
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    iget-object v10, v0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    int-to-float v10, v10

    iget-object v11, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    int-to-float v2, v12

    int-to-float v10, v4

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v11, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v19, v3

    move v3, v10

    move v5, v10

    const/high16 v10, 0x40000000    # 2.0f

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v19, 0x1

    const v5, 0x7f06001e

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v10, 0x6

    const/4 v11, 0x5

    goto :goto_0

    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    goto/16 :goto_6

    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    .line 130
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->maxX:I

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->minX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v8, 0x419028f6    # 18.02f

    div-float/2addr v1, v8

    float-to-int v9, v1

    .line 131
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphHeight:I

    div-int v11, v1, v9

    const/4 v6, 0x0

    :goto_3
    if-gt v6, v9, :cond_6

    int-to-float v1, v6

    mul-float v1, v1, v8

    float-to-int v1, v1

    mul-int v2, v6, v11

    .line 137
    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    sub-int/2addr v3, v2

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_5

    if-eq v1, v13, :cond_5

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x168

    if-ne v1, v2, :cond_4

    goto :goto_4

    .line 149
    :cond_4
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v5, 0x7f06001e

    goto :goto_5

    :cond_5
    :goto_4
    int-to-float v1, v1

    .line 144
    invoke-static {v1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/senseonics/graph/WeeklyStatGraph;->textRect:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    iget-object v5, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    int-to-float v2, v12

    int-to-float v4, v3

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object v1, v7

    move/from16 v19, v3

    move v3, v4

    move/from16 v20, v4

    move/from16 v4, v19

    const v8, 0x7f06001e

    move/from16 v5, v20

    move/from16 v19, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v19, 0x1

    const v8, 0x419028f6    # 18.02f

    goto/16 :goto_3

    :cond_6
    :goto_6
    const v8, 0x7f06001e

    .line 158
    sget-object v1, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 159
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 161
    sget-object v1, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 162
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 161
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 164
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    if-eq v3, v4, :cond_7

    sget v4, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    if-eq v3, v4, :cond_7

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/graph/WeeklyStatGraph;->getPositionY(I)F

    move-result v3

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-static {v2}, Lcom/senseonics/graph/util/GraphUtils;->getLineColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I

    move-result v2

    .line 168
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 170
    iget-object v4, v0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->path:Landroid/graphics/Path;

    int-to-float v4, v12

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 177
    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 183
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getWidth()I

    move-result v1

    sub-int/2addr v1, v12

    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v9, v1, v2

    .line 185
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 189
    :goto_8
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ge v5, v1, :cond_10

    mul-int v1, v5, v9

    add-int/2addr v1, v12

    .line 190
    div-int/lit8 v2, v9, 0x2

    add-int v3, v1, v2

    .line 194
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 195
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v5, :cond_d

    const/4 v4, 0x5

    if-eq v5, v4, :cond_c

    const/16 v1, 0xb

    if-eq v5, v1, :cond_b

    const/16 v1, 0x11

    if-eq v5, v1, :cond_a

    const/16 v1, 0x17

    if-eq v5, v1, :cond_9

    move v13, v3

    move v8, v5

    move-object v10, v6

    :goto_9
    const/16 v17, 0x6

    :goto_a
    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_9
    const/16 v1, 0x18

    .line 217
    invoke-direct {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->setStartTimeTextView(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v3, -0x1e

    int-to-float v4, v4

    iget v8, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    iget v10, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v4, v3

    .line 218
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v8, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    add-int/lit8 v1, v1, -0x8

    int-to-float v10, v1

    move-object v1, v7

    move-object/from16 v16, v2

    move v2, v4

    move v13, v3

    move v3, v8

    const/4 v8, 0x5

    move v8, v5

    move v5, v10

    move-object v10, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_a
    move-object/from16 v16, v2

    move v13, v3

    move v8, v5

    move-object v10, v6

    const/16 v1, 0x12

    .line 213
    invoke-direct {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->setStartTimeTextView(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v4, v13

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v3, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    add-int/lit8 v1, v1, -0x8

    int-to-float v5, v1

    move-object v1, v7

    move v2, v4

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_b
    move-object/from16 v16, v2

    move v13, v3

    move v8, v5

    move-object v10, v6

    const/16 v1, 0xc

    .line 209
    invoke-direct {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->setStartTimeTextView(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v4, v13

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v3, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    add-int/lit8 v1, v1, -0x8

    int-to-float v5, v1

    move-object v1, v7

    move v2, v4

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_c
    move-object/from16 v16, v2

    move v13, v3

    move v8, v5

    move-object v10, v6

    const/4 v6, 0x6

    .line 205
    invoke-direct {v0, v6}, Lcom/senseonics/graph/WeeklyStatGraph;->setStartTimeTextView(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v4, v13

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v3, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    add-int/lit8 v1, v1, -0x8

    int-to-float v5, v1

    move-object v1, v7

    move v2, v4

    const/16 v17, 0x6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_d
    move-object/from16 v16, v2

    move v13, v3

    move v8, v5

    move-object v10, v6

    const/4 v6, 0x0

    const/16 v17, 0x6

    .line 201
    invoke-direct {v0, v6}, Lcom/senseonics/graph/WeeklyStatGraph;->setStartTimeTextView(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v4, v13

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 202
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v3, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    add-int/lit8 v1, v1, -0x8

    int-to-float v5, v1

    move-object v1, v7

    move v2, v4

    const/16 v18, 0x0

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    :goto_b
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_f

    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 226
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-virtual {v1}, Lcom/senseonics/graph/util/WeeklyStatValue;->getAvg()I

    move-result v1

    .line 227
    iget-object v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-virtual {v2}, Lcom/senseonics/graph/util/WeeklyStatValue;->getMin()I

    move-result v2

    .line 228
    iget-object v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-virtual {v3}, Lcom/senseonics/graph/util/WeeklyStatValue;->getMax()I

    move-result v3

    if-eqz v1, :cond_e

    .line 230
    iget-object v4, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v13, v4

    .line 231
    invoke-virtual {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->getPositionY(I)F

    move-result v5

    iget-object v6, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 232
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v0, v2}, Lcom/senseonics/graph/WeeklyStatGraph;->getPositionY(I)F

    move-result v6

    iget-object v13, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v6, v13

    float-to-int v6, v6

    .line 234
    invoke-virtual {v0, v3}, Lcom/senseonics/graph/WeeklyStatGraph;->getPositionY(I)F

    move-result v13

    move/from16 v21, v9

    iget-object v9, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v13, v9

    float-to-int v9, v13

    const-string v13, "Points:"

    move/from16 v22, v12

    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v14

    const-string v14, "Avg:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nMin:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nMax:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSize:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->statValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    .line 237
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 238
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    .line 239
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    .line 241
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    move/from16 v21, v9

    move/from16 v22, v12

    move-object/from16 v23, v14

    .line 247
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    iget v3, v0, Lcom/senseonics/graph/WeeklyStatGraph;->INVALID_X_Y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    move/from16 v21, v9

    move/from16 v22, v12

    move-object/from16 v23, v14

    :goto_c
    add-int/lit8 v5, v8, 0x1

    move-object v6, v10

    move/from16 v9, v21

    move/from16 v12, v22

    move-object/from16 v14, v23

    const v8, 0x7f06001e

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v13, 0xb4

    goto/16 :goto_8

    :cond_10
    move-object v10, v6

    move/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v18, 0x0

    .line 251
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 253
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 254
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xb4

    .line 256
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v9, 0x0

    .line 258
    :goto_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_12

    .line 259
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 260
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 261
    invoke-direct {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->isValidPoint(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {v0, v2}, Lcom/senseonics/graph/WeeklyStatGraph;->isValidPoint(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 262
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v12, v1

    move-object v1, v7

    move v2, v3

    move v3, v5

    const/4 v13, 0x1

    move v4, v6

    move v5, v12

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_11
    const/4 v13, 0x1

    :goto_e
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    const/4 v13, 0x1

    .line 268
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const v8, 0x7f060047

    if-lez v1, :cond_14

    .line 270
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v13}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 271
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 274
    :goto_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    if-ge v1, v2, :cond_14

    .line 275
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    add-int/lit8 v10, v1, 0x1

    .line 276
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 277
    invoke-direct {v0, v2}, Lcom/senseonics/graph/WeeklyStatGraph;->isValidPoint(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-direct {v0, v1}, Lcom/senseonics/graph/WeeklyStatGraph;->isValidPoint(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 278
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_13
    move v1, v10

    goto :goto_f

    :cond_14
    move-object/from16 v1, v23

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 286
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 287
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    .line 288
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 290
    iget-object v5, v0, Lcom/senseonics/graph/WeeklyStatGraph;->avgStatBitmap:Landroid/graphics/Bitmap;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v7, v5, v6, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 296
    :cond_15
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 297
    iget-object v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/graph/WeeklyStatGraph;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v1, v22

    int-to-float v4, v1

    .line 298
    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->graphBottom:I

    int-to-float v3, v1

    iget v1, v0, Lcom/senseonics/graph/WeeklyStatGraph;->paddingTop:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/senseonics/graph/WeeklyStatGraph;->simpleLinePaint:Landroid/graphics/Paint;

    move-object v1, v7

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
