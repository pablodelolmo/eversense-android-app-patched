.class Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;
.super Ljava/lang/Object;
.source "BluetoothCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

.field final synthetic val$transmitterName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$transmitterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$transmitterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$100(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {v1, v2}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;-><init>(Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
