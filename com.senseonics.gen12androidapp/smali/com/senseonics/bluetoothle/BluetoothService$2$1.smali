.class Lcom/senseonics/bluetoothle/BluetoothService$2$1;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/bluetoothle/BluetoothService$2;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService$2;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$2$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothService$2;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$2$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothService$2;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->connectToPreviouslyConnectedDevice()V

    return-void
.end method
