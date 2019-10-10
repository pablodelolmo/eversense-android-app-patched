.class Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;
.super Ljava/lang/Object;
.source "MyBluetoothGattCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->sendConnectionEstablishedEvents(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

.field final synthetic val$commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 143
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 144
    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->access$100(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;)Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v2, v3, v4, v0}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
