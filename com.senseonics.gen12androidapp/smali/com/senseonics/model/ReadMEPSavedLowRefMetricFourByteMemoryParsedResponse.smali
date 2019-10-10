.class public Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/FourByteMemoryMapParsedResponse;


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
.method public apply(IIIILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    shl-int/lit8 p4, p4, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 20
    invoke-virtual {p5, p1}, Lcom/senseonics/model/TransmitterStateModel;->setMEPSavedLowRefMetric(F)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 13
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedLowRefMetricAddress:[I

    return-object v0
.end method
