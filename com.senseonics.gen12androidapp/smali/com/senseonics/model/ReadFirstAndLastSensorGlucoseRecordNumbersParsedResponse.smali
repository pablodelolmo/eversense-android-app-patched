.class public Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;
.super Ljava/lang/Object;
.source "ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 3

    const/4 v0, 0x1

    .line 27
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    .line 28
    aget v1, p1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x6

    aget p1, p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    .line 30
    new-instance v1, Lcom/senseonics/util/Range;

    invoke-direct {v1, v0, p1}, Lcom/senseonics/util/Range;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSensorGlucoseRecordRange(Lcom/senseonics/util/Range;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastSensorGlucoseRecordNumbersResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x8e

    return v0
.end method
