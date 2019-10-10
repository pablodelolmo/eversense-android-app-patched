.class public Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;
.super Landroid/os/Binder;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothService;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    return-object v0
.end method
