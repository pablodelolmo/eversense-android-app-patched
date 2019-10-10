.class Lcom/senseonics/model/RangeWithCurrentValue;
.super Ljava/lang/Object;
.source "RangeWithCurrentValue.java"


# instance fields
.field private currentRecordNumber:I

.field private max:I

.field private ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/util/Range;",
            ">;"
        }
    .end annotation
.end field

.field private responseId:I

.field private totalRecordsExpected:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->max:I

    .line 22
    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRange(II)V
    .locals 2

    .line 80
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    .line 81
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    new-instance v1, Lcom/senseonics/util/Range;

    sub-int p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {v1, p2, p1}, Lcom/senseonics/util/Range;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget p2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->max:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->max:I

    return-void
.end method

.method public getFinished()I
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Range;

    .line 46
    iget v3, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    invoke-virtual {v2, v3}, Lcom/senseonics/util/Range;->compareTo(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 48
    invoke-virtual {v2}, Lcom/senseonics/util/Range;->getCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->getTo()I

    move-result v2

    iget v4, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    if-gez v3, :cond_0

    .line 50
    invoke-virtual {v2}, Lcom/senseonics/util/Range;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getNumberOfRecordsExpected()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    return v0
.end method

.method public getPercent()I
    .locals 2

    .line 58
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v0

    int-to-float v0, v0

    .line 64
    iget v1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getResponseId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    return v0
.end method

.method public isSyncing()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->max:I

    iget v1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurrentRecordNumber(I)V
    .locals 1

    .line 31
    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    .line 32
    const-class p1, Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/senseonics/model/RangeWithCurrentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentToMaxOfCurrentRange()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Range;

    .line 88
    iget v2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    invoke-virtual {v1, v2}, Lcom/senseonics/util/Range;->compareTo(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "responseId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "max"

    iget v2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->max:I

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalRecordsExpected"

    iget v2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "currentRecordNumber"

    iget v2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->currentRecordNumber:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "percent"

    .line 74
    invoke-virtual {p0}, Lcom/senseonics/model/RangeWithCurrentValue;->getPercent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "finished"

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
