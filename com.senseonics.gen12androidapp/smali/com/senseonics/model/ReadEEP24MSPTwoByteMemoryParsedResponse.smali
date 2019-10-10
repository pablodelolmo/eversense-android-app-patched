.class public Lcom/senseonics/model/ReadEEP24MSPTwoByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadEEP24MSPTwoByteMemoryParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


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
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    int-to-float p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 20
    invoke-virtual {p3, p2}, Lcom/senseonics/model/TransmitterStateModel;->setEEP24MSP(F)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 13
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->eep24MSPAddress:[I

    return-object v0
.end method
