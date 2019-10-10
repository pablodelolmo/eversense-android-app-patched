.class Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;
.super Ljava/lang/Object;
.source "MyBluetoothGattCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;->this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method
