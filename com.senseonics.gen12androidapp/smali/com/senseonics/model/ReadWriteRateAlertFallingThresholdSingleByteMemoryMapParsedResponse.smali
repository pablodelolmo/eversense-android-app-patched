.class public Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


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
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 19
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setRateAlertFallingThreshold(F)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    return-object v0
.end method
