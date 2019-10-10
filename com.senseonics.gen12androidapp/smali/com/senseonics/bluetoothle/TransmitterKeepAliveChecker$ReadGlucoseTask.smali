.class Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;
.super Ljava/util/TimerTask;
.source "TransmitterKeepAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadGlucoseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;


# direct methods
.method private constructor <init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;->this$0:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;->this$0:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->access$200(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    return-void
.end method
