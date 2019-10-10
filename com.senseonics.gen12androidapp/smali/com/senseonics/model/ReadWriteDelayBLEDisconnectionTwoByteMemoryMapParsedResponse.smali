.class public Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse.java"

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
    .locals 0

    .line 19
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst(II)I

    move-result p1

    .line 20
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setDelayBLEDisconnectionAlarm(I)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForDelayBLEDisconnectionAlarm(Z)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    return-object v0
.end method
