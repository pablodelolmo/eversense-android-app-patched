.class Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterScanner$2;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$2;

.field final synthetic val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/TransmitterScanner$2;Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$2;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan found transmitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$2;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$2;

    iget-object v2, v2, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->val$transmitters:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/senseonics/bluetoothle/DiscoverCallback;->onDevice(Ljava/util/List;)V

    return-void
.end method
