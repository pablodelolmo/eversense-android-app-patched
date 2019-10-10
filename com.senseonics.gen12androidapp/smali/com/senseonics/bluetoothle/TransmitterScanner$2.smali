.class Lcom/senseonics/bluetoothle/TransmitterScanner$2;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 85
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->val$transmitters:Ljava/util/Set;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->val$discoverCallback:Lcom/senseonics/bluetoothle/DiscoverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 88
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-static {p2, p3}, Lcom/senseonics/bluetoothle/TransmitterScanner;->access$200(Lcom/senseonics/bluetoothle/TransmitterScanner;[B)Ljava/util/List;

    move-result-object p2

    sget-object p3, Lcom/senseonics/bluetoothle/TransmitterScanner;->SENSEONICS_SERVICE_HANDLE_UUID:Ljava/util/UUID;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    sget-object p2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 90
    new-instance p3, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 91
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->val$transmitters:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$2;->this$0:Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/TransmitterScanner;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;

    invoke-direct {p2, p0, p3}, Lcom/senseonics/bluetoothle/TransmitterScanner$2$1;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner$2;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
