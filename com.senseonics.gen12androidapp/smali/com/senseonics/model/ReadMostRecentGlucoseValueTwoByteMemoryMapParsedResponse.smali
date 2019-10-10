.class public Lcom/senseonics/model/ReadMostRecentGlucoseValueTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadMostRecentGlucoseValueTwoByteMemoryMapParsedResponse.java"

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

    .line 20
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst(II)I

    move-result p1

    .line 21
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setMostRecentGlucoseRegisterValue(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseValueAddress:[I

    return-object v0
.end method
