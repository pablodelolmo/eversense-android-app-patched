.class public Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;
.super Ljava/lang/Object;
.source "TransmitterRSSIEvent.java"


# instance fields
.field private RSSIValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->RSSIValue:I

    return-void
.end method


# virtual methods
.method public getRSSIValue()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->RSSIValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterRSSIEvent: rssi value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->RSSIValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
