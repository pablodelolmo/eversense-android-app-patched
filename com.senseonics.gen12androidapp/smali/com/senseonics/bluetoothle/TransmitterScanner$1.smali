.class Lcom/senseonics/bluetoothle/TransmitterScanner$1;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"

# interfaces
.implements Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterScanner;->scan(Lcom/senseonics/bluetoothle/DiscoverCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

.field final synthetic val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

.field final synthetic val$transmitters:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/TransmitterScanner;Ljava/util/Set;Lcom/senseonics/bluetoothle/DiscoverCallback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$transmitters:Ljava/util/Set;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startScanning()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$000(Lcom/senseonics/bluetoothle/TransmitterScanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$100(Lcom/senseonics/bluetoothle/TransmitterScanner;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_0
    return-void
.end method

.method private stopScanOnTimeout()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner$1;)V

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-wide v2, v2, Lcom/senseonics/bluetoothle/TransmitterScanner;->scanPeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public lastConnectedTransmitter(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$transmitters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/TransmitterScanner;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1$1;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->startScanning()V

    .line 56
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->stopScanOnTimeout()V

    return-void
.end method

.method public noLastConnectedTransmitter()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->startScanning()V

    .line 68
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->stopScanOnTimeout()V

    return-void
.end method
