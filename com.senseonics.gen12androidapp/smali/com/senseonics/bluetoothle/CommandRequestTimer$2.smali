.class Lcom/senseonics/bluetoothle/CommandRequestTimer$2;
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

    .line 52
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "task for signal strength"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method
