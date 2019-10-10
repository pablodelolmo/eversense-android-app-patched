.class public Lcom/senseonics/gen12androidapp/BluetoothServiceClient;
.super Ljava/lang/Object;
.source "BluetoothServiceClient.java"


# instance fields
.field private bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

.field private isBound:Z


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->isBound:Z

    .line 18
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)V
    .locals 3

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    const/16 v2, 0x41

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->isBound:Z

    return-void
.end method

.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Landroid/app/Activity;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->isBound:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bluetoothServiceConnection:Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->isBound:Z

    :cond_0
    return-void
.end method
