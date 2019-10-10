.class public Lcom/senseonics/util/Alert;
.super Ljava/lang/Object;
.source "Alert.java"


# instance fields
.field private alertCode:I

.field private endTime:J

.field private glucoseLevel:I

.field private recordNumber:I

.field private startTime:J


# direct methods
.method public constructor <init>(JJIII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/senseonics/util/Alert;->startTime:J

    .line 15
    iput-wide p3, p0, Lcom/senseonics/util/Alert;->endTime:J

    .line 16
    iput p5, p0, Lcom/senseonics/util/Alert;->glucoseLevel:I

    .line 17
    iput p6, p0, Lcom/senseonics/util/Alert;->alertCode:I

    .line 18
    iput p7, p0, Lcom/senseonics/util/Alert;->recordNumber:I

    return-void
.end method


# virtual methods
.method public getAlertCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/senseonics/util/Alert;->alertCode:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/senseonics/util/Alert;->endTime:J

    return-wide v0
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/senseonics/util/Alert;->glucoseLevel:I

    return v0
.end method

.method public getRecordNumber()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/senseonics/util/Alert;->recordNumber:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/senseonics/util/Alert;->startTime:J

    return-wide v0
.end method

.method public setAlertCode(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/senseonics/util/Alert;->alertCode:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/senseonics/util/Alert;->endTime:J

    return-void
.end method

.method public setGlucoseLevel(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/senseonics/util/Alert;->glucoseLevel:I

    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/util/Alert;->recordNumber:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/senseonics/util/Alert;->startTime:J

    return-void
.end method
