.class public Lcom/senseonics/gen12androidapp/MealTimeStatistics;
.super Ljava/lang/Object;
.source "MealTimeStatistics.java"


# instance fields
.field private INVALID:I

.field private average:F

.field private firstStdDev:F

.field private glucoseArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private highAlarm:I

.field private highTarget:I

.field private lowAlarm:I

.field private lowTarget:I

.field private percentAboveHigh:F

.field private percentAboveTarget:F

.field private percentBelowLow:F

.field private percentBelowTarget:F

.field private percentWithin:F


# direct methods
.method public constructor <init>(Ljava/util/List;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    .line 12
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highAlarm:I

    .line 13
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highTarget:I

    .line 14
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowTarget:I

    .line 15
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowAlarm:I

    .line 17
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->average:F

    .line 18
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->firstStdDev:F

    .line 19
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentWithin:F

    .line 20
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveTarget:F

    .line 21
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowTarget:F

    .line 22
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveHigh:F

    .line 23
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->INVALID:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowLow:F

    .line 26
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highAlarm:I

    .line 29
    iput p3, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highTarget:I

    .line 30
    iput p4, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowTarget:I

    .line 31
    iput p5, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowAlarm:I

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->calculateAverageValue()V

    .line 36
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->calculateStdDev()V

    .line 37
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->calculateTargetsWithData()V

    :cond_0
    return-void
.end method

.method private calculateAverageValue()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 69
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->average:F

    return-void
.end method

.method private calculateStdDev()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getVariance()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->firstStdDev:F

    return-void
.end method

.method private calculateTargetsWithData()V
    .locals 13

    .line 73
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highAlarm:I

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v0

    .line 74
    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowAlarm:I

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    .line 75
    iget v2, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->highTarget:I

    invoke-static {v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v2

    .line 76
    iget v3, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->lowTarget:I

    invoke-static {v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v11

    cmpl-float v11, v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    if-ltz v11, :cond_1

    add-float/2addr v8, v12

    .line 88
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v11

    cmpl-float v11, v11, v2

    if-lez v11, :cond_2

    add-float/2addr v6, v12

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v11

    cmpl-float v11, v11, v3

    if-ltz v11, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v11

    cmpg-float v11, v11, v2

    if-gtz v11, :cond_3

    add-float/2addr v5, v12

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v11

    cmpg-float v11, v11, v3

    if-gez v11, :cond_4

    add-float/2addr v7, v12

    .line 98
    :cond_4
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v10

    cmpg-float v10, v10, v1

    if-gtz v10, :cond_0

    add-float/2addr v9, v12

    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v5, v5, v0

    iput v5, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentWithin:F

    .line 103
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    mul-float v6, v6, v0

    iput v6, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveTarget:F

    .line 104
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    mul-float v7, v7, v0

    iput v7, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowTarget:F

    .line 105
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    mul-float v8, v8, v0

    iput v8, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveHigh:F

    .line 106
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v9, v1

    mul-float v9, v9, v0

    iput v9, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowLow:F

    return-void
.end method

.method private getMean()F
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    double-to-int v3, v3

    .line 44
    invoke-static {v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    double-to-float v0, v1

    .line 45
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getVariance()F
    .locals 10

    .line 49
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getMean()F

    move-result v0

    float-to-double v0, v0

    .line 52
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    double-to-int v5, v5

    .line 53
    invoke-static {v5}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v0, v6

    invoke-static {v5}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v5

    float-to-double v8, v5

    sub-double v8, v0, v8

    mul-double v6, v6, v8

    add-double/2addr v3, v6

    goto :goto_0

    :cond_0
    double-to-float v0, v3

    .line 55
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->glucoseArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAverage()F
    .locals 2

    .line 110
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 111
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->average:F

    return v0

    .line 113
    :cond_0
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->average:F

    return v0
.end method

.method public getFirstStdDev()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->firstStdDev:F

    return v0
.end method

.method public getPercentAboveHigh()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveHigh:F

    return v0
.end method

.method public getPercentAboveTarget()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentAboveTarget:F

    return v0
.end method

.method public getPercentBelowLow()F
    .locals 1

    .line 141
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowLow:F

    return v0
.end method

.method public getPercentBelowTarget()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentBelowTarget:F

    return v0
.end method

.method public getPercentWithin()F
    .locals 1

    .line 125
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->percentWithin:F

    return v0
.end method

.method public setAverage(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->average:F

    return-void
.end method
