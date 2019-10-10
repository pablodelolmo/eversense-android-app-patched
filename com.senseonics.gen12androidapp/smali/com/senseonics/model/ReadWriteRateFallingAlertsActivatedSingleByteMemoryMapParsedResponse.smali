.class public Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse.java"

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

    if-eqz p1, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setRateFallingAlertsActivated(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setRateFallingAlertsActivated(Z)V

    :goto_0
    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    return-object v0
.end method
