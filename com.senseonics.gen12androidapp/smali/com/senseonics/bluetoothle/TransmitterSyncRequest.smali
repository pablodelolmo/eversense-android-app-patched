.class public Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
.super Ljava/lang/Object;
.source "TransmitterSyncRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[I

.field private expectResponseCount:I

.field private expectedResponseId:I

.field private highestExpectedRecordNumber:I


# direct methods
.method public constructor <init>(I[III)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectedResponseId:I

    .line 13
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->data:[I

    .line 14
    iput p3, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->highestExpectedRecordNumber:I

    .line 15
    iput p4, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectResponseCount:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectedResponseId:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->highestExpectedRecordNumber:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->compareTo(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)I

    move-result p1

    return p1
.end method

.method public getData()[I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->data:[I

    return-object v0
.end method

.method public getExpectResponseCount()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectResponseCount:I

    return v0
.end method

.method public getExpectedResponseId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectedResponseId:I

    return v0
.end method

.method public getHighestExpectedRecordNumber()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->highestExpectedRecordNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "expectedResponseId"

    iget v2, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectedResponseId:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "highestExpectedRecordNumber"

    iget v2, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->highestExpectedRecordNumber:I

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "expectResponseCount"

    iget v2, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->expectResponseCount:I

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "data"

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->data:[I

    .line 40
    invoke-static {v2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
