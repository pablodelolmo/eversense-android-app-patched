.class Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;
.super Ljava/lang/Object;
.source "BluetoothCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/BluetoothCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConsumerRunnable"
.end annotation


# instance fields
.field private canRetry:Z

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private currentRequest:Lcom/senseonics/bluetoothle/Request;

.field private final theLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 278
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->condition:Ljava/util/concurrent/locks/Condition;

    .line 279
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->canRetry:Z

    return p0
.end method

.method static synthetic access$302(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;Z)Z
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->canRetry:Z

    return p1
.end method

.method static synthetic access$400(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->sendCurrentRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Lcom/senseonics/bluetoothle/Request;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->condition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private restartTimer()V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 307
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->timer:Ljava/util/Timer;

    .line 308
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 332
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 308
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendCurrentRequest()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Request;->getData()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Request;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->read(I[B)Z

    .line 371
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->restartTimer()V

    return-void
.end method


# virtual methods
.method public checkForExpectedResponse(I)V
    .locals 3

    .line 283
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testing response (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), against request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/Request;->isResponseIdTheLastExpectedResponse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Request;->getExpectedResponseId()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->restartTimer()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 290
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->canRetry:Z

    .line 291
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 292
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public getCurrentRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 340
    :goto_0
    :try_start_0
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top of run loop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$700(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->blockingPeek()Lcom/senseonics/bluetoothle/Request;

    .line 342
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$800(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->this$0:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->access$700(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->take()Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    .line 346
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->canRetry:Z

    .line 349
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->sendCurrentRequest()V

    .line 351
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->theLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    throw v0

    .line 357
    :cond_0
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not connected, so take a nap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 361
    :catch_0
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaving due to interrupted exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->canRetry:Z

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->currentRequest:Lcom/senseonics/bluetoothle/Request;

    return-void
.end method
