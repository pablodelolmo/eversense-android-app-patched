.class public Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue8TwoByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadRawDataValue8TwoByteMemoryParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    const-string p2, "RawValue"

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw 8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object p2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p3, p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 17
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue8Address:[I

    return-object v0
.end method
