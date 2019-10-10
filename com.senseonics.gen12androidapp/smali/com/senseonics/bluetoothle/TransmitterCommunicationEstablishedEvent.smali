.class public Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;
.super Ljava/lang/Object;
.source "TransmitterCommunicationEstablishedEvent.java"


# instance fields
.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 13
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 14
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-void
.end method


# virtual methods
.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getCommandCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->commandCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method
