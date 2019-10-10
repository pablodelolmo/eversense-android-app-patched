.class Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private haveServiceSemaphore:Ljava/util/concurrent/Semaphore;

.field private isConnected:Z


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->haveServiceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 27
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->haveServiceSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->haveServiceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 52
    :cond_0
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service will be returned as null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupted, for good or bad, returning service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->isConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->isConnected:Z

    .line 32
    check-cast p2, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->haveServiceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 34
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/events/BluetoothServiceBoundEvent;

    invoke-direct {p2}, Lcom/senseonics/events/BluetoothServiceBoundEvent;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->isConnected:Z

    .line 39
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/BluetoothServiceUnboundEvent;

    invoke-direct {v0}, Lcom/senseonics/events/BluetoothServiceUnboundEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
