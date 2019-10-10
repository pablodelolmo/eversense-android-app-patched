.class Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;
.super Ljava/util/TimerTask;
.source "BluetoothCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->restartTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$200(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$300(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$400(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)V

    .line 316
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$302(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;Z)Z

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$500(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Request;->getData()[I

    move-result-object v0

    aget v0, v0, v1

    const-string v1, "Bluetooth"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** Timeout command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " **************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    iget-object v1, v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$100(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/senseonics/events/SensorGlucoseTimedOutEvent;

    invoke-direct {v2}, Lcom/senseonics/events/SensorGlucoseTimedOutEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    iget-object v1, v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandTimedOut(I)V

    .line 326
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$600(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$200(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;->this$1:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->access$200(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 330
    throw v0
.end method
