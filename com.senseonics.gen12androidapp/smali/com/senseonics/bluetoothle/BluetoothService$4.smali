.class Lcom/senseonics/bluetoothle/BluetoothService$4;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothService;->connectToPreviouslyConnectedDevice()V
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

    .line 287
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$4;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastConnectedTransmitter(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$4;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, v0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 292
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$4;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z

    return-void
.end method

.method public noLastConnectedTransmitter()V
    .locals 0

    return-void
.end method
