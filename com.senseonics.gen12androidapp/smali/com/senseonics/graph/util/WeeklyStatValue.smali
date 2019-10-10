.class public Lcom/senseonics/graph/util/WeeklyStatValue;
.super Ljava/lang/Object;
.source "WeeklyStatValue.java"


# static fields
.field public static final INVALID_AVG:I

.field public static final INVALID_MAX:I

.field public static final INVALID_MIN:I


# instance fields
.field private avg:I

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->avg:I

    .line 14
    iput p2, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->min:I

    .line 15
    iput p3, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->max:I

    return-void
.end method


# virtual methods
.method public getAvg()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->avg:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->min:I

    return v0
.end method

.method public setAvg(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->avg:I

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/senseonics/graph/util/WeeklyStatValue;->min:I

    return-void
.end method
