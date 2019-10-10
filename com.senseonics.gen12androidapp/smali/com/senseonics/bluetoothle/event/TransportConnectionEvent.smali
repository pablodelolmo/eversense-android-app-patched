.class public Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;
.super Ljava/lang/Object;
.source "TransportConnectionEvent.java"


# instance fields
.field private final transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-void
.end method


# virtual methods
.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method
