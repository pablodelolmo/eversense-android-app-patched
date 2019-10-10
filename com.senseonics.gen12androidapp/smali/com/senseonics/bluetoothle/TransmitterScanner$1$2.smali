.class Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterScanner$1;->stopScanOnTimeout()V
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

    .line 72
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$100(Lcom/senseonics/bluetoothle/TransmitterScanner;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v1, v1, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$100(Lcom/senseonics/bluetoothle/TransmitterScanner;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$102(Lcom/senseonics/bluetoothle/TransmitterScanner;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 78
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$1$2;->this$1:Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/TransmitterScanner$1;->val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

    invoke-interface {v0}, Lcom/senseonics/bluetoothle/DiscoverCallback;->onDiscoveryTimeout()V

    :cond_0
    return-void
.end method
