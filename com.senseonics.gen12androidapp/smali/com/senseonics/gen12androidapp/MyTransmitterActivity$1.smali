.class Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;
.super Ljava/util/TimerTask;
.source "MyTransmitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->startRssiTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MyTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->readRemoteRSSI()V

    :cond_0
    return-void
.end method
