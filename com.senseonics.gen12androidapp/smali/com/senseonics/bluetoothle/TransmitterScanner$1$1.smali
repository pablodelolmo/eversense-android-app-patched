.class Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterScanner$1;->lastConnectedTransmitter(Lcom/senseonics/bluetoothle/Transmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/TransmitterScanner$1;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v2, v2, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$transmitters:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/senseonics/bluetoothle/DiscoverCallback;->onDevice(Ljava/util/List;)V

    return-void
.end method
