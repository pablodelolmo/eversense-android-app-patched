.class public Lcom/senseonics/graph/util/GraphUtils;
.super Ljava/lang/Object;
.source "GraphUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/util/GraphUtils$DIRECTION;,
        Lcom/senseonics/graph/util/GraphUtils$COLOR;
    }
.end annotation


# static fields
.field public static DAY:J = 0x0L

.field public static GRAPH_CONNECTING_INTERVAL:I = 0xa

.field public static HOUR:J = 0x0L

.field public static MINUTE:J = 0xea60L

.field public static SECOND:I = 0x3e8

.field public static alarmEventBitmap:Landroid/graphics/Bitmap; = null

.field public static alertEventBitmap:Landroid/graphics/Bitmap; = null

.field public static calibrationEventBitmapBlue:Landroid/graphics/Bitmap; = null

.field public static calibrationEventBitmapRed:Landroid/graphics/Bitmap; = null

.field public static disruptionBitmap:Landroid/graphics/Bitmap; = null

.field public static disruptionBitmapSize:I = 0x0

.field public static disruptionTime:J = 0x0L

.field public static edrAlertBitmap:Landroid/graphics/Bitmap; = null

.field public static eventBitmapSize:I = 0x0

.field public static exerciseEventBitmap:Landroid/graphics/Bitmap; = null

.field public static glucoseDataInterval:J = 0x0L

.field public static glucoseDataIntervalChanged:Z = false

.field public static glucoseEventBitmap:Landroid/graphics/Bitmap; = null

.field public static glucoseLevels:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/graph/util/GraphUtils$COLOR;",
            ">;"
        }
    .end annotation
.end field

.field public static glucoseMaximumLevel:I = 0x0

.field public static glucoseMinimumLevel:I = 0x0

.field public static groupEventBitmap:Landroid/graphics/Bitmap; = null

.field public static healthEventBitmap:Landroid/graphics/Bitmap; = null

.field public static insulinEventBitmap:Landroid/graphics/Bitmap; = null

.field public static listPopUpIsVisible:Z = false

.field public static maxViewPortSize:F = 0.0f

.field public static mealEventBitmap:Landroid/graphics/Bitmap; = null

.field public static minViewPortSize:F = 0.0f

.field public static popUpCalendar:Ljava/util/Calendar; = null

.field public static popUpX:F = -1.0f

.field public static popUpY:F = -1.0f

.field public static predFallingBitmap:Landroid/graphics/Bitmap; = null

.field public static predRisingBitmap:Landroid/graphics/Bitmap; = null

.field public static viewportSize:D = 0.0

.field public static viewportStart:D = -1.0


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    .line 29
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    const-wide/16 v2, 0x18

    mul-long v0, v0, v2

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    .line 58
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPixelsToDp(FLandroid/content/Context;)F
    .locals 1

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 344
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getBitmapForEvent(Lcom/senseonics/events/EventPoint;)Landroid/graphics/Bitmap;
    .locals 2

    .line 456
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 457
    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p0

    .line 488
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p0, v0, :cond_0

    .line 489
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->edrAlertBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 484
    :pswitch_1
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->alarmEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 481
    :pswitch_2
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->alertEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 479
    :pswitch_3
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->predRisingBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 477
    :pswitch_4
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->predFallingBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 475
    :pswitch_5
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->predRisingBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 473
    :pswitch_6
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->predFallingBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 471
    :pswitch_7
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->exerciseEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 469
    :pswitch_8
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->healthEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 467
    :pswitch_9
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->insulinEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 465
    :pswitch_a
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->mealEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 463
    :pswitch_b
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->glucoseEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 461
    :pswitch_c
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->groupEventBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 459
    :pswitch_d
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->calibrationEventBitmapRed:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCalendarFromPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;
    .locals 4

    .line 274
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 275
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    sub-long/2addr p1, v0

    int-to-float p0, p0

    long-to-float p1, p1

    div-float/2addr p0, p1

    div-float/2addr p3, p0

    float-to-long p0, p3

    add-long/2addr p0, v0

    mul-long p0, p0, v2

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 285
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method public static getColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I
    .locals 1

    .line 202
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$1;->$SwitchMap$com$senseonics$graph$util$GraphUtils$COLOR:[I

    invoke-virtual {p0}, Lcom/senseonics/graph/util/GraphUtils$COLOR;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const v0, 0x7f06004e

    packed-switch p0, :pswitch_data_0

    const p0, 0x106000c

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const p0, 0x7f060049

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const p0, 0x7f060052

    return p0

    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentPointXfromOnScreenX(FDDF)F
    .locals 2

    sub-double/2addr p1, p3

    div-float/2addr p0, p5

    float-to-double v0, p0

    mul-double v0, v0, p1

    double-to-float p0, v0

    float-to-double p0, p0

    add-double/2addr p0, p3

    double-to-float p0, p0

    return p0
.end method

.method public static getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;
    .locals 4

    .line 327
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 328
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    sub-long/2addr p1, v0

    int-to-float p0, p0

    long-to-float p1, p1

    div-float/2addr p0, p1

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    long-to-float p2, v0

    div-float/2addr p3, p0

    add-float/2addr p2, p3

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float p2, p2, p0

    float-to-long p2, p2

    .line 335
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public static getDayCountInMonth(II)I
    .locals 2

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 249
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 250
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public static getDiffTime()J
    .locals 4

    .line 190
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->maxViewPortSize:F

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->minViewPortSize:F

    .line 191
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    .line 195
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 196
    sput-boolean v2, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataIntervalChanged:Z

    :cond_0
    return-wide v0
.end method

.method public static getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I
    .locals 3

    cmpg-float p2, p0, p1

    if-gez p2, :cond_2

    .line 141
    sget-object p2, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v1, v0

    cmpl-float v2, p0, v1

    if-nez v2, :cond_1

    return v0

    :cond_1
    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return v0

    :cond_2
    cmpl-float p2, p0, p1

    if-lez p2, :cond_5

    .line 152
    new-instance p2, Ljava/util/TreeMap;

    .line 153
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 154
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v1, v0

    cmpl-float v2, p0, v1

    if-nez v2, :cond_4

    return v0

    :cond_4
    if-lez v2, :cond_3

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;
    .locals 4

    .line 112
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 114
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v1, :cond_0

    if-lt p0, v2, :cond_0

    if-ge p0, v3, :cond_0

    .line 119
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object p0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 123
    :cond_2
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    if-ne p1, v0, :cond_4

    .line 125
    sget-object p1, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v1, :cond_3

    if-le p0, v2, :cond_3

    if-gt p0, v0, :cond_3

    .line 130
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object p0

    :cond_3
    move v2, v0

    goto :goto_1

    .line 134
    :cond_4
    sget-object p0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object p0
.end method

.method public static getLineColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I
    .locals 1

    .line 223
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$1;->$SwitchMap$com$senseonics$graph$util$GraphUtils$COLOR:[I

    invoke-virtual {p0}, Lcom/senseonics/graph/util/GraphUtils$COLOR;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const v0, 0x7f06009c

    packed-switch p0, :pswitch_data_0

    const p0, 0x106000c

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const p0, 0x7f060048

    return p0

    :pswitch_3
    const p0, 0x7f06004d

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getMonthName(I)Ljava/lang/String;
    .locals 2

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 255
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const-string p0, "MMMM"

    .line 257
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPositionX(IJJJ)F
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 292
    div-long/2addr p1, v0

    .line 293
    div-long/2addr p3, v0

    .line 294
    div-long/2addr p5, v0

    sub-long/2addr p5, p1

    sub-long/2addr p3, p1

    int-to-float p0, p0

    long-to-float p1, p3

    div-float/2addr p0, p1

    long-to-float p1, p5

    mul-float p0, p0, p1

    return p0
.end method

.method public static getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F
    .locals 6

    .line 308
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 309
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    .line 310
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    sub-long/2addr p1, v0

    int-to-float p0, p0

    long-to-float p1, p1

    div-float/2addr p0, p1

    long-to-float p1, v4

    mul-float p0, p0, p1

    return p0
.end method

.method public static getPositionYForGlucose(ILandroid/graphics/Rect;)F
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int p0, p0, p1

    int-to-float p0, p0

    sget p1, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static getTextSize(Ljava/lang/String;IILandroid/graphics/Paint;)F
    .locals 4

    .line 72
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 79
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    invoke-static {p0, p3}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz p1, :cond_1

    if-lt v3, p1, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    if-lt v2, p2, :cond_0

    :cond_2
    sub-float/2addr v0, v1

    const/high16 p0, 0x41c80000    # 25.0f

    cmpg-float p1, v0, p0

    if-gez p1, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method public static getTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    const-string v0, "hh:mm a"

    .line 243
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getXOnLine(FFFFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-nez v0, :cond_0

    return p2

    :cond_0
    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    div-float/2addr p3, p2

    sub-float/2addr p4, p1

    mul-float p0, p0, p3

    add-float/2addr p4, p0

    div-float/2addr p4, p3

    return p4
.end method

.method public static getYOnLine(FFFFF)F
    .locals 1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_0

    return p3

    :cond_0
    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    div-float/2addr p3, p2

    mul-float p4, p4, p3

    mul-float p3, p3, p0

    sub-float/2addr p4, p3

    add-float/2addr p4, p1

    return p4
.end method

.method public static loadBitmaps(Landroid/content/Context;I)V
    .locals 5

    int-to-float p1, p1

    .line 350
    invoke-static {p1, p0}, Lcom/senseonics/graph/util/GraphUtils;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    .line 354
    div-int/lit8 v0, p1, 0xe

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    .line 355
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float v0, v0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 355
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    .line 359
    div-int/lit8 p1, p1, 0x10

    div-int/lit8 v0, p1, 0x3

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    .line 360
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    int-to-float v0, v0

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 360
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils;->calibrationEventBitmapRed:Landroid/graphics/Bitmap;

    .line 371
    sput p1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    .line 372
    sget p1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float p1, p1

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 372
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800e6

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 378
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->calibrationEventBitmapBlue:Landroid/graphics/Bitmap;

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800f0

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 383
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->groupEventBitmap:Landroid/graphics/Bitmap;

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 388
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->glucoseEventBitmap:Landroid/graphics/Bitmap;

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ee

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 393
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->mealEventBitmap:Landroid/graphics/Bitmap;

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ec

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 398
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->insulinEventBitmap:Landroid/graphics/Bitmap;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ea

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 403
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->healthEventBitmap:Landroid/graphics/Bitmap;

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800e4

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 408
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->exerciseEventBitmap:Landroid/graphics/Bitmap;

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080064

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 413
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->alertEventBitmap:Landroid/graphics/Bitmap;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 418
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->alarmEventBitmap:Landroid/graphics/Bitmap;

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800a6

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 423
    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmap:Landroid/graphics/Bitmap;

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 428
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->alarmEventBitmap:Landroid/graphics/Bitmap;

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080061

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 433
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->predFallingBitmap:Landroid/graphics/Bitmap;

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080065

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 438
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->predRisingBitmap:Landroid/graphics/Bitmap;

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 443
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    sget v1, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmapSize:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->disruptionBitmap:Landroid/graphics/Bitmap;

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0800e0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 448
    sget p1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    invoke-static {p0, p1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/senseonics/graph/util/GraphUtils;->edrAlertBitmap:Landroid/graphics/Bitmap;

    .line 451
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public static measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 3

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method
