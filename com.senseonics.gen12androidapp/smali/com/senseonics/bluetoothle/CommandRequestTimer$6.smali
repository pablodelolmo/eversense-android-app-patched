.class Lcom/senseonics/bluetoothle/CommandRequestTimer$6;
.super Ljava/util/TimerTask;
.source "CommandRequestTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/CommandRequestTimer;->scheduleIntervalCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "task for glucose data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 94
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 95
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 96
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 100
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 101
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMostRecentGlucoseValue()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 102
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readGlucoseData()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method
