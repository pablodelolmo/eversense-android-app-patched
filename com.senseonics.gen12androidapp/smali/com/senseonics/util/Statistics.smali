.class public Lcom/senseonics/util/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# instance fields
.field private average:I

.field private count:D

.field private high:I

.field private low:I

.field private mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field private timeRange:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;IIID)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/util/Statistics;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 23
    iput p2, p0, Lcom/senseonics/util/Statistics;->average:I

    .line 24
    iput p3, p0, Lcom/senseonics/util/Statistics;->low:I

    .line 25
    iput p4, p0, Lcom/senseonics/util/Statistics;->high:I

    .line 26
    iput-wide p5, p0, Lcom/senseonics/util/Statistics;->count:D

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;IIID)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/senseonics/util/Statistics;->timeRange:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    .line 14
    iput p2, p0, Lcom/senseonics/util/Statistics;->average:I

    .line 15
    iput p3, p0, Lcom/senseonics/util/Statistics;->low:I

    .line 16
    iput p4, p0, Lcom/senseonics/util/Statistics;->high:I

    .line 17
    iput-wide p5, p0, Lcom/senseonics/util/Statistics;->count:D

    return-void
.end method


# virtual methods
.method public getAverage()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/senseonics/util/Statistics;->average:I

    return v0
.end method

.method public getCount()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/senseonics/util/Statistics;->count:D

    return-wide v0
.end method

.method public getHigh()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/senseonics/util/Statistics;->high:I

    return v0
.end method

.method public getLow()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/senseonics/util/Statistics;->low:I

    return v0
.end method

.method public getMealType()Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/util/Statistics;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object v0
.end method

.method getTimeRange()Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/util/Statistics;->timeRange:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    return-object v0
.end method

.method public setAverage(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/senseonics/util/Statistics;->average:I

    return-void
.end method

.method public setCount(I)V
    .locals 2

    int-to-double v0, p1

    .line 66
    iput-wide v0, p0, Lcom/senseonics/util/Statistics;->count:D

    return-void
.end method

.method public setHigh(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/util/Statistics;->high:I

    return-void
.end method

.method public setLow(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/senseonics/util/Statistics;->low:I

    return-void
.end method
