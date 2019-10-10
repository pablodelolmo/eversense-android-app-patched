.class public Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "LinkedSensorIdAddressFourByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/FourByteMemoryMapParsedResponse;


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
.method public apply(IIIILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x10

    or-int/2addr p1, p2

    int-to-long p2, p1

    int-to-long v0, p4

    const/16 p4, 0x18

    shl-long/2addr v0, p4

    or-long/2addr p2, v0

    .line 23
    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->isValidSensorID(J)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/senseonics/model/TransmitterStateModel;->setLinkedSensorId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p5, p1}, Lcom/senseonics/model/TransmitterStateModel;->setLinkedSensorId(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    return-object v0
.end method
