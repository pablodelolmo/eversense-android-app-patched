.class public Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;
.super Ljava/lang/Object;
.source "CharacteristicChangedEvent.java"


# instance fields
.field private final data:[I

.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method public constructor <init>([ILcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->data:[I

    .line 9
    iput-object p2, p0, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->data:[I

    return-object v0
.end method

.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method
