.class public Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;
.super Ljava/lang/Object;
.source "TransmitterConnectionEvent.java"


# instance fields
.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-void
.end method


# virtual methods
.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 18
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "transmitter"

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
