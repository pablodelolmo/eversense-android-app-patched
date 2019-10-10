.class Lcom/senseonics/bluetoothle/BluetoothService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothService;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$1;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/bluetoothle/BluetoothConnector;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
