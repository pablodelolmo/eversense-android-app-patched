.class public Lcom/senseonics/pairing/events/view/TransmitterPressed;
.super Ljava/lang/Object;
.source "TransmitterPressed.java"


# instance fields
.field public transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-void
.end method
