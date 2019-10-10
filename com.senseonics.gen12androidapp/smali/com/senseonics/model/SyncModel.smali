.class public Lcom/senseonics/model/SyncModel;
.super Ljava/lang/Object;
.source "SyncModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

.field private glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

.field private glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    return-void
.end method

.method private calculatePercent(II)F
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method private clearRanges()V
    .locals 2

    .line 129
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 130
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf2

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 131
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf1

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    return-void
.end method


# virtual methods
.method public addSyncingRequests(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    .line 114
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    .line 116
    const-class v1, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glucoseRange min max now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    .line 119
    const-class v1, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glucose Log Range min max now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    .line 122
    const-class v1, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glucose alert Range min max now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 2

    .line 97
    const-class v0, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    return-void
.end method

.method public getSyncingPercent()I
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getPercent()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getPercent()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getPercent()I

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v3}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v4}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v4}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    const-class v4, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-class v4, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weighed Glucose : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    iget-object v6, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v6}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v6

    invoke-direct {p0, v6, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-class v4, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weighted glucose log : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, v1

    iget-object v6, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v6}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v6

    invoke-direct {p0, v6, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v6

    mul-float v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-class v4, Lcom/senseonics/model/SyncModel;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weighted glucose alert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, v2

    iget-object v6, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v6}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v6

    invoke-direct {p0, v6, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v6

    mul-float v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 87
    invoke-virtual {v4}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v4

    mul-float v0, v0, v4

    iget-object v4, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 88
    invoke-virtual {v4}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v4

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 89
    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/senseonics/model/SyncModel;->calculatePercent(II)F

    move-result v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 86
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public isSyncFinished()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncing()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCurrentSyncingResponseId(Lcom/senseonics/bluetoothle/ResponseOperations$Response;)V
    .locals 5

    .line 136
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getData()[I

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    aget p1, v0, v4

    aget v1, v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 140
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentRecordNumber(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 142
    aget p1, v0, v4

    aget v0, v0, v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 143
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentRecordNumber(I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getResponseId()I

    move-result p1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 145
    aget p1, v0, v4

    aget v0, v0, v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 146
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentRecordNumber(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldPostRefreshGraph()Z
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string v1, "#3640_2"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldPostRefreshGraph p1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPostSyncingProgress()Z
    .locals 8

    .line 29
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v0, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float v2, v2, v0

    float-to-double v2, v2

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v3, v3, v0

    .line 35
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v0

    .line 36
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v5, v5, v0

    .line 37
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v0, v0, v6

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "#3640_2"

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldPostSyncingProgress p0:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",p1:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",p2:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",p3:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",p4:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public skippingTheRestOfTheResponses(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/senseonics/model/SyncModel;->glucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentToMaxOfCurrentRange()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 154
    iget-object p1, p0, Lcom/senseonics/model/SyncModel;->glucoseLogRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentToMaxOfCurrentRange()V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {p1}, Lcom/senseonics/model/RangeWithCurrentValue;->setCurrentToMaxOfCurrentRange()V

    :cond_2
    :goto_0
    return-void
.end method
