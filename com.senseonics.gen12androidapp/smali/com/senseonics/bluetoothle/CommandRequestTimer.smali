.class public Lcom/senseonics/bluetoothle/CommandRequestTimer;
.super Ljava/lang/Object;
.source "CommandRequestTimer.java"


# static fields
.field public static final BATTERY_LEVEL_REQUEST_DELAY:I = 0x0

.field public static final BATTERY_LEVEL_REQUEST_PERIOD:I = 0xea60

.field public static final CALIBRATION_PHASE_REQUEST_PERIOD:I = 0xea60

.field static final DELAY_FOR_FIRST_COMMAND_AS_TAKEN_FROM_ORIGINAL_CODE:I = 0x3e8

.field public static final GLUCOSE_ALERT_REQUEST_PERIOD:I = 0xea60

.field public static final GLUCOSE_DATA_REQUEST_PERIOD:I = 0xea60

.field public static final SIGNAL_STRENGTH_REQUEST_DELAY:I = 0x0

.field public static final SIGNAL_STRENGTH_REQUEST_PERIOD:I = 0xea60


# instance fields
.field private haveReceivedE9:Z

.field private requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

.field private timer:Ljava/util/Timer;

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
.method public constructor <init>(Ljavax/inject/Provider;Lcom/senseonics/bluetoothle/RequestBlockingSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    .line 28
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method public haveReceivedE9()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return v0
.end method

.method public notReceivedE9()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return-void
.end method

.method public receivedE9()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return-void
.end method

.method public scheduleIntervalCommands()V
    .locals 13

    .line 50
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduleIntervalCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    .line 52
    iget-object v1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;

    invoke-direct {v2, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    iget-object v7, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v8, Lcom/senseonics/bluetoothle/CommandRequestTimer$3;

    invoke-direct {v8, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$3;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0xea60

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 79
    iget-object v6, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v7, Lcom/senseonics/bluetoothle/CommandRequestTimer$5;

    invoke-direct {v7, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$5;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0xea60

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setupForAutoReconnect()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->clear()V

    .line 110
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->saveBondingInformation()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public setupTaskSchedule()V
    .locals 4

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    .line 34
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setupTaskSchedule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    .line 36
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
