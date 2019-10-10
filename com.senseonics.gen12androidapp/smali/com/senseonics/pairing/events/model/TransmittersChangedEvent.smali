.class public Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;
.super Ljava/lang/Object;
.source "TransmittersChangedEvent.java"


# instance fields
.field public transmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;->transmitters:Ljava/util/List;

    return-void
.end method
