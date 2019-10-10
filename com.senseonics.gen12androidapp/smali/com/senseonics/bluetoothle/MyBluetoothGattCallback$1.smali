.class Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;
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

.field final synthetic val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;->this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;->this$0:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->access$000(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;)Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    return-void
.end method
