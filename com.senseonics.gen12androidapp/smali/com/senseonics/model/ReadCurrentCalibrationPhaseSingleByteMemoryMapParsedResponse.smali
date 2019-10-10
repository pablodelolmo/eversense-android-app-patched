.class public Lcom/senseonics/model/ReadCurrentCalibrationPhaseSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadCurrentCalibrationPhaseSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


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
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/senseonics/util/Utils$CAL_PHASE;->values()[Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    aget-object p1, v0, p1

    .line 21
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->currentCalibrationPhaseAddress:[I

    return-object v0
.end method
