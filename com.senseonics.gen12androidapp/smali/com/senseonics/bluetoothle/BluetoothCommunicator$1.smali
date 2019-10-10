.class Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;
.super Ljava/lang/Object;
.source "BluetoothCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothCommunicator;->onEvent(Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$000(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    new-instance v1, Lcom/senseonics/bluetoothle/Transmitter;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z

    :cond_0
    return-void
.end method
