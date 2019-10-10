.class public Lcom/senseonics/model/ReadReadyForCalibrationSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadReadyForCalibrationSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 18
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setReadyForCalibrationState(I)V

    .line 19
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->fireReadyForCalibrationChangedEvent()V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 13
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->readyForCalibrationAddress:[I

    return-object v0
.end method
