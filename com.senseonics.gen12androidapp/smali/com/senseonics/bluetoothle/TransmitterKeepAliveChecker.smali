.class public Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
.super Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.source "TransmitterKeepAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;,
        Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alertTimer:Ljava/util/Timer;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private readGlucoseTimer:Ljava/util/Timer;

.field private timerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;Ljavax/inject/Provider;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;",
            "Lcom/senseonics/util/NotificationEventPersistor;",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
            "Lcom/senseonics/util/NotificationUtility;",
            "Lde/greenrobot/event/EventBus;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;)V

    .line 36
    iput-object p8, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p9, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 39
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method private cancelTimers()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 77
    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private keepAliveOrGlucoseResponseReceived()V
    .locals 0

    return-void
.end method

.method private startTimers()V
    .locals 6

    .line 82
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->cancelTimers()V

    .line 84
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    .line 85
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$1;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x79

    .line 87
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 85
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 90
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    .line 91
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;

    invoke-direct {v1, p0, v2}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xb5

    .line 93
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected getStateValue()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getKeepAliveAlertActive()Z

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->keepAliveOrGlucoseResponseReceived()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseReceivedEvent;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->keepAliveOrGlucoseResponseReceived()V

    return-void
.end method

.method protected shouldShowAlert()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowKeepAliveAlert()Z

    move-result v0

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setKeepAliveAlertActive(Z)V

    return-void
.end method
