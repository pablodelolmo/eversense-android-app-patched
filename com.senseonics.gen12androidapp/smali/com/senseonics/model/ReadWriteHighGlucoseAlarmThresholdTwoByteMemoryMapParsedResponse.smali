.class public Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


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
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    .line 22
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst(II)I

    move-result p1

    const-string p2, "Glucose thresholds"

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "high alarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setHighGlucoseAlarmThreshold(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 16
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    return-object v0
.end method
