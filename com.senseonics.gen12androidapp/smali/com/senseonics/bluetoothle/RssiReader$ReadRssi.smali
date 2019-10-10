.class Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;
.super Ljava/util/TimerTask;
.source "RssiReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/RssiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadRssi"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/RssiReader;


# direct methods
.method private constructor <init>(Lcom/senseonics/bluetoothle/RssiReader;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;->this$0:Lcom/senseonics/bluetoothle/RssiReader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/bluetoothle/RssiReader;Lcom/senseonics/bluetoothle/RssiReader$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;-><init>(Lcom/senseonics/bluetoothle/RssiReader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;->this$0:Lcom/senseonics/bluetoothle/RssiReader;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/RssiReader;->access$100(Lcom/senseonics/bluetoothle/RssiReader;)Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->readRemoteRSSI()V

    return-void
.end method
