.class Lcom/senseonics/bluetoothle/BluetoothConnector$1;
.super Ljava/lang/Object;
.source "BluetoothConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothConnector;->beginConnection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothConnector;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothConnector;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Landroid/content/Context;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothConnector;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&&&&& CLOSE gatt before beginConnection &&&&&"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothConnector;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothConnector;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 34
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/senseonics/bluetoothle/BluetoothConnector;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 35
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothConnector;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothConnector$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/BluetoothConnector;->access$000(Lcom/senseonics/bluetoothle/BluetoothConnector;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Landroid/content/Context;)V

    return-void
.end method
