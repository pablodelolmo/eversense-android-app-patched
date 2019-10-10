.class Lcom/senseonics/pairing/BluetoothPairingModel$1;
.super Ljava/lang/Object;
.source "BluetoothPairingModel.java"

# interfaces
.implements Lcom/senseonics/bluetoothle/DiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/pairing/BluetoothPairingModel;->discover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/pairing/BluetoothPairingModel;


# direct methods
.method constructor <init>(Lcom/senseonics/pairing/BluetoothPairingModel;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevice(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-static {v0, p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->access$002(Lcom/senseonics/pairing/BluetoothPairingModel;Ljava/util/List;)Ljava/util/List;

    .line 79
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-static {p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->access$100(Lcom/senseonics/pairing/BluetoothPairingModel;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-static {v1}, Lcom/senseonics/pairing/BluetoothPairingModel;->access$000(Lcom/senseonics/pairing/BluetoothPairingModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-static {p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->access$100(Lcom/senseonics/pairing/BluetoothPairingModel;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/senseonics/pairing/events/model/DiscoveryEvent;

    invoke-direct {v0}, Lcom/senseonics/pairing/events/model/DiscoveryEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDiscoveryTimeout()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-static {v0}, Lcom/senseonics/pairing/BluetoothPairingModel;->access$100(Lcom/senseonics/pairing/BluetoothPairingModel;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/senseonics/pairing/events/model/TimeoutEvent;

    invoke-direct {v1}, Lcom/senseonics/pairing/events/model/TimeoutEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
