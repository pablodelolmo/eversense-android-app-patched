.class public Lcom/jjoe64/graphview/LineGraphView;
.super Lcom/jjoe64/graphview/Graph;
.source "LineGraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/LineGraphView$EventsManager;
    }
.end annotation


# instance fields
.field private dataPointsRadius:F

.field private drawBackground:Z

.field private drawDataPoints:Z

.field private end:Ljava/util/Calendar;

.field private graphLinePaint:Landroid/graphics/Paint;

.field private paddingEventGlucoseExists:I

.field private paddingTop:I

.field private final paintBackground:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private start:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIIZZ)V
    .locals 12

    move-object v10, p0

    move/from16 v11, p8

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p5

    move v7, v11

    move/from16 v8, p9

    move/from16 v9, p10

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/jjoe64/graphview/Graph;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIZZ)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 50
    iput v0, v10, Lcom/jjoe64/graphview/LineGraphView;->dataPointsRadius:F

    move-object v0, p3

    .line 63
    iput-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->start:Ljava/util/Calendar;

    move-object/from16 v0, p4

    .line 64
    iput-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->end:Ljava/util/Calendar;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    .line 67
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    .line 68
    invoke-static {v2}, Lcom/senseonics/graph/util/GraphUtils;->getColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I

    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 86
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v1, v11, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v10, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    .line 93
    iput v11, v10, Lcom/jjoe64/graphview/LineGraphView;->paddingTop:I

    .line 95
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, v10, Lcom/jjoe64/graphview/LineGraphView;->paddingEventGlucoseExists:I

    return-void
.end method


# virtual methods
.method public clickEvent(FF)V
    .locals 9

    const-string v0, "position clickEvent"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ---- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_5

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 213
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 214
    :goto_0
    iget-object v4, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2710

    if-ge v3, v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 218
    iget v6, v4, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 219
    iget-object v7, p0, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v4, v4, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    sub-float/2addr v7, v4

    iget v4, p0, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    sub-float/2addr v7, v4

    sub-float/2addr v7, p2

    .line 221
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v7, v1

    cmpg-float v8, v6, v7

    if-gtz v8, :cond_0

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_0

    add-float/2addr v6, v4

    float-to-int v4, v6

    .line 224
    aput v4, v0, v3

    goto :goto_1

    .line 226
    :cond_0
    aput v5, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 231
    :goto_2
    array-length p2, v0

    if-ge p1, p2, :cond_3

    .line 232
    aget p2, v0, p1

    aget v1, v0, v2

    if-ge p2, v1, :cond_2

    aget p2, v0, p1

    if-eq p2, v5, :cond_2

    move v2, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 237
    :cond_3
    aget p1, v0, v2

    if-eq p1, v5, :cond_5

    .line 239
    iget-object p1, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 240
    iget-object p2, p0, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v0, p1, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    add-float/2addr p2, v0

    .line 243
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    iget v1, p1, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    invoke-interface {v0, v1, p2, p1}, Lcom/jjoe64/graphview/LineGraphView$EventsManager;->onEventClick(FFLcom/jjoe64/graphview/Graph$EventGroup;)V

    goto :goto_3

    :cond_4
    const-string p1, "position eventsmanager null"

    const-string p2, " -----"

    .line 247
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public drawDisruptionPoint(Landroid/graphics/Canvas;FFFF)V
    .locals 2

    .line 402
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    sub-float/2addr p2, p5

    sget p5, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    sub-float/2addr p2, p5

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Ljava/util/ArrayList;FFFDDDDFLcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GlucoseSection;",
            ">;FFFDDDDF",
            "Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p4

    .line 264
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 265
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v3, v0, :cond_7

    .line 266
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    .line 267
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->getGlucosePoints()[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v0

    .line 269
    array-length v1, v0

    if-ne v1, v2, :cond_0

    .line 270
    aget-object v1, v0, v4

    .line 271
    invoke-interface {v1}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v6, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    .line 270
    invoke-static {v1, v2}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v1

    .line 272
    iget v2, v6, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    sub-float/2addr v1, v2

    .line 274
    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v14

    move-object/from16 v16, v5

    sub-double v4, v14, p6

    double-to-float v0, v4

    float-to-double v4, v0

    div-double v4, v4, p10

    double-to-float v0, v4

    mul-float v4, p3, v0

    sub-float v0, p5, v1

    add-float v2, v0, v10

    .line 278
    iget-object v5, v6, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    move-object v0, v7

    move v1, v4

    move v7, v3

    move v3, v4

    move v4, v10

    move-object/from16 v17, v16

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v7

    move-object/from16 v11, v17

    move-object/from16 v9, p1

    goto/16 :goto_5

    :cond_0
    move v7, v3

    move-object/from16 v17, v5

    .line 283
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->getColor()Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/graph/util/GraphUtils;->getColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I

    move-result v1

    .line 288
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    .line 293
    :goto_1
    array-length v2, v0

    if-ge v4, v2, :cond_5

    .line 297
    aget-object v2, v0, v4

    move/from16 v19, v7

    .line 298
    invoke-interface {v2}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v7

    double-to-int v2, v7

    iget-object v7, v6, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    .line 297
    invoke-static {v2, v7}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v2

    .line 299
    iget v7, v6, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    sub-float/2addr v2, v7

    .line 301
    aget-object v7, v0, v4

    invoke-interface {v7}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v7

    sub-double v7, v7, p6

    double-to-float v7, v7

    float-to-double v7, v7

    div-double v7, v7, p10

    double-to-float v7, v7

    mul-float v7, v7, p3

    if-lez v4, :cond_4

    sub-float v8, p5, v14

    add-float/2addr v8, v10

    sub-float v14, p5, v2

    move-object/from16 v20, v0

    add-float v0, v14, v10

    move/from16 v21, v2

    .line 313
    iget-boolean v2, v6, Lcom/jjoe64/graphview/LineGraphView;->drawDataPoints:Z

    if-eqz v2, :cond_1

    .line 314
    iget v2, v6, Lcom/jjoe64/graphview/LineGraphView;->dataPointsRadius:F

    iget-object v11, v6, Lcom/jjoe64/graphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move/from16 v14, v19

    move-object/from16 v9, p1

    invoke-virtual {v9, v5, v8, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    move/from16 v14, v19

    move-object/from16 v9, p1

    :goto_2
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    if-ne v4, v2, :cond_2

    .line 322
    invoke-virtual {v3, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v11, v17

    .line 323
    invoke-virtual {v11, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, v17

    move/from16 v5, v18

    .line 325
    :goto_3
    invoke-virtual {v3, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 326
    invoke-virtual {v11, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v18, v5

    goto :goto_4

    :cond_3
    move-object/from16 v11, v17

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v20, v0

    move/from16 v21, v2

    move-object/from16 v11, v17

    move/from16 v14, v19

    const/4 v2, 0x1

    move-object/from16 v9, p1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    move-object/from16 v17, v11

    move v7, v14

    move-object/from16 v0, v20

    move/from16 v14, v21

    move-object/from16 v8, p2

    goto :goto_1

    :cond_5
    move v14, v7

    move-object/from16 v11, v17

    move-object/from16 v9, p1

    .line 333
    iget-boolean v0, v6, Lcom/jjoe64/graphview/LineGraphView;->drawBackground:Z

    if-eqz v0, :cond_6

    .line 335
    iget-object v0, v6, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    invoke-virtual {v3, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v4, v18

    .line 337
    invoke-virtual {v3, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 339
    iget-object v0, v6, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    :goto_5
    add-int/lit8 v3, v14, 0x1

    move-object v7, v9

    move-object v5, v11

    const/4 v4, 0x0

    move-object/from16 v8, p2

    goto/16 :goto_0

    :cond_7
    move-object v11, v5

    move-object v9, v7

    move-object v7, v8

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    .line 345
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    .line 346
    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->getGlucosePoints()[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v1

    .line 348
    array-length v3, v1

    if-lez v3, :cond_8

    .line 353
    aget-object v3, v1, v0

    .line 354
    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v6, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    .line 353
    invoke-static {v3, v4}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v3

    .line 355
    iget v4, v6, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    sub-float v5, v3, v4

    .line 357
    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v0

    sub-double v0, v0, p6

    double-to-float v0, v0

    float-to-double v0, v0

    div-double v0, v0, p10

    double-to-float v0, v0

    move-object v8, v9

    mul-float v4, p3, v0

    move-object v0, v6

    move-object v1, v8

    const/4 v14, 0x1

    move/from16 v2, p5

    move v3, v10

    .line 362
    invoke-virtual/range {v0 .. v5}, Lcom/jjoe64/graphview/LineGraphView;->drawDisruptionPoint(Landroid/graphics/Canvas;FFFF)V

    goto :goto_6

    :cond_8
    move-object v8, v9

    const/4 v14, 0x1

    .line 366
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .line 365
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    .line 366
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->getGlucosePoints()[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v0

    .line 367
    array-length v1, v0

    if-lez v1, :cond_b

    .line 368
    array-length v1, v0

    sub-int/2addr v1, v14

    aget-object v0, v0, v1

    .line 375
    invoke-interface {v0}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v6, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    .line 374
    invoke-static {v1, v2}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v1

    .line 376
    iget v2, v6, Lcom/jjoe64/graphview/LineGraphView;->bottomPositionY:F

    sub-float v5, v1, v2

    .line 378
    invoke-interface {v0}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v0

    sub-double v0, v0, p6

    double-to-float v0, v0

    float-to-double v0, v0

    div-double v0, v0, p10

    double-to-float v0, v0

    mul-float v4, p3, v0

    .line 382
    iget-object v0, v6, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v6, Lcom/jjoe64/graphview/LineGraphView;->start:Ljava/util/Calendar;

    iget-object v2, v6, Lcom/jjoe64/graphview/LineGraphView;->end:Ljava/util/Calendar;

    invoke-static {v0, v1, v2, v4}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    if-eqz p16, :cond_9

    .line 386
    sget v1, Lcom/senseonics/gen12androidapp/MainActivity;->glucoseLevel:I

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 388
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 389
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v1, v12

    sget-wide v12, Lcom/senseonics/graph/util/GraphUtils;->disruptionTime:J

    cmp-long v0, v1, v12

    if-ltz v0, :cond_9

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p5

    move v3, v10

    .line 390
    invoke-virtual/range {v0 .. v5}, Lcom/jjoe64/graphview/LineGraphView;->drawDisruptionPoint(Landroid/graphics/Canvas;FFFF)V

    goto :goto_7

    :cond_9
    if-nez p16, :cond_b

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p5

    move v3, v10

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/jjoe64/graphview/LineGraphView;->drawDisruptionPoint(Landroid/graphics/Canvas;FFFF)V

    goto :goto_7

    :cond_a
    move-object v8, v9

    .line 397
    :cond_b
    :goto_7
    iget-object v0, v6, Lcom/jjoe64/graphview/LineGraphView;->graphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDataPointsRadius()F
    .locals 1

    .line 413
    iget v0, p0, Lcom/jjoe64/graphview/LineGraphView;->dataPointsRadius:F

    return v0
.end method

.method public getDrawBackground()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/jjoe64/graphview/LineGraphView;->drawBackground:Z

    return v0
.end method

.method public getDrawDataPoints()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/jjoe64/graphview/LineGraphView;->drawDataPoints:Z

    return v0
.end method

.method public hideEvent()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    invoke-interface {v0}, Lcom/jjoe64/graphview/LineGraphView$EventsManager;->hidePopUpEvent()V

    :cond_0
    return-void
.end method

.method public ifEventAtPosition(F)Lcom/senseonics/events/EventPoint;
    .locals 10

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/LineGraphView;->getMaxX(Z)D

    move-result-wide v1

    .line 112
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/LineGraphView;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 115
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 116
    iget v6, v5, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    float-to-double v6, v6

    sub-double/2addr v6, v3

    double-to-float v6, v6

    float-to-double v6, v6

    div-double/2addr v6, v1

    double-to-float v6, v6

    .line 118
    iget v7, p0, Lcom/jjoe64/graphview/LineGraphView;->graphwidth:F

    mul-float v7, v7, v6

    sub-float/2addr v7, p1

    .line 120
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 122
    invoke-virtual {v5}, Lcom/jjoe64/graphview/Graph$EventGroup;->getEvents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/events/EventPoint;

    .line 123
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v8

    .line 126
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v9, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getxOnScreen()F

    move-result v8

    sub-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v7

    if-gez v8, :cond_1

    return-object v6

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public ifEventClick(FF)Z
    .locals 9

    .line 183
    iget v0, p0, Lcom/jjoe64/graphview/LineGraphView;->paddingTop:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 184
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 185
    iget v2, v1, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    .line 186
    iget-object v3, p0, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v1, v1, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    sub-float/2addr v3, v1

    sub-float/2addr v2, p1

    .line 187
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v3, p2

    .line 188
    iget-object v2, p0, Lcom/jjoe64/graphview/LineGraphView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const-string v3, "Tap Test"

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ifEventClick: true| dx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "|dy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "|bms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v3, v1

    .line 192
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double v5, v5, v7

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    float-to-double v1, v2

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-double v3, v3

    mul-double v3, v3, v7

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    if-eqz p1, :cond_2

    const-string p1, "Tap Test"

    const-string p2, "ifEventClick: onClick"

    .line 199
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/jjoe64/graphview/LineGraphView;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    invoke-interface {p1}, Lcom/jjoe64/graphview/LineGraphView$EventsManager;->onClick()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public ifGlucoseAtPosition(F)Lcom/senseonics/graph/util/Glucose;
    .locals 14

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/LineGraphView;->getMaxX(Z)D

    move-result-wide v1

    .line 150
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/LineGraphView;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 155
    iget-object v5, p0, Lcom/jjoe64/graphview/LineGraphView;->glucosePoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x477fff00    # 65535.0f

    move-object v8, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v10, v8

    move v8, v7

    const/4 v7, 0x0

    .line 156
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 157
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/graph/util/Glucose;

    .line 158
    invoke-virtual {v11}, Lcom/senseonics/graph/util/Glucose;->getX()F

    move-result v12

    float-to-double v12, v12

    sub-double/2addr v12, v3

    double-to-float v12, v12

    float-to-double v12, v12

    div-double/2addr v12, v1

    double-to-float v12, v12

    .line 160
    iget v13, p0, Lcom/jjoe64/graphview/LineGraphView;->graphwidth:F

    mul-float v13, v13, v12

    sub-float/2addr v13, p1

    .line 162
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v13, v12, v8

    if-gez v13, :cond_0

    move-object v10, v11

    move v8, v12

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v8

    move-object v8, v10

    goto :goto_0

    :cond_2
    const/high16 p1, 0x41700000    # 15.0f

    cmpg-float p1, v7, p1

    if-gez p1, :cond_3

    return-object v8

    :cond_3
    return-object v6
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/jjoe64/graphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDataPointsRadius(F)V
    .locals 0

    .line 442
    iput p1, p0, Lcom/jjoe64/graphview/LineGraphView;->dataPointsRadius:F

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/jjoe64/graphview/LineGraphView;->drawBackground:Z

    return-void
.end method

.method public setDrawDataPoints(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/jjoe64/graphview/LineGraphView;->drawDataPoints:Z

    return-void
.end method
