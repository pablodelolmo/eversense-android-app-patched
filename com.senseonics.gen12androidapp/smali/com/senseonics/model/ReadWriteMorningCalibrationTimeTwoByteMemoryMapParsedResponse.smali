.class public Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 3

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 21
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p2

    .line 24
    aget v0, p2, v1

    aget v2, p2, p1

    invoke-static {v0, v2}, Lcom/senseonics/util/Utils;->convertHourFromGMTtoLocal(II)[I

    move-result-object v0

    .line 25
    aget v2, v0, v1

    invoke-virtual {p3, v2}, Lcom/senseonics/model/TransmitterStateModel;->setMorningCalibrationLocalTimeHour(I)V

    .line 26
    aget v0, v0, p1

    invoke-virtual {p3, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMorningCalibrationLocalTimeMinute(I)V

    .line 28
    aget v0, p2, v1

    invoke-virtual {p3, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMorningCalibrationTimeHour(I)V

    .line 29
    aget p1, p2, p1

    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setMorningCalibrationTimeMinute(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    return-object v0
.end method
