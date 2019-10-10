.class public Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;
.super Ljava/lang/Object;
.source "BluetoothGattErrorEvent.java"


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method
