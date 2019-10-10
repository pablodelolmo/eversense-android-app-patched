.class Lcom/senseonics/bluetoothle/BluetoothService$3;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothService;->connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothService;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService;Landroid/bluetooth/BluetoothDevice;Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 245
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. FIRST TIME Check state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v2, v2, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothGattCallback:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    .line 249
    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 248
    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/BluetoothConnector;->beginConnection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x1770

    .line 252
    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v2, v2, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/senseonics/bluetoothle/BluetoothService$3$1;

    invoke-direct {v3, p0}, Lcom/senseonics/bluetoothle/BluetoothService$3$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothService$3;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService$3;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    :goto_0
    return-void
.end method
