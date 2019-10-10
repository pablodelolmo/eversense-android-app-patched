.class public Lcom/senseonics/model/ReadDayStartTimeTwoByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadDayStartTimeTwoByteMemoryParsedResponse.java"

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
    .locals 2

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 20
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p2

    .line 22
    aget v0, p2, v1

    invoke-virtual {p3, v0}, Lcom/senseonics/model/TransmitterStateModel;->setDayStartTimeHour(I)V

    .line 23
    aget p1, p2, p1

    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setDayStartTimeMinute(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    return-object v0
.end method
