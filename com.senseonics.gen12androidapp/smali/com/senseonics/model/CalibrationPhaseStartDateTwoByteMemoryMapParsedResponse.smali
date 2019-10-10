.class public Lcom/senseonics/model/CalibrationPhaseStartDateTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "CalibrationPhaseStartDateTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object p1

    .line 20
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setCalibrationPhaseStartDateOnly([I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->startDateOfCalibrationPhaseAddress:[I

    return-object v0
.end method
