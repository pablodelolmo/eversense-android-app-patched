.class public Lcom/senseonics/gen12androidapp/CustomCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CustomCountDownTimer.java"


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;JJ)V
    .locals 0

    .line 16
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 17
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    .line 18
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->cancel()V

    .line 35
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/CalibrationCountdownEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/senseonics/events/CalibrationCountdownEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/CalibrationCountdownEvent;

    invoke-direct {v1, p1, p2}, Lcom/senseonics/events/CalibrationCountdownEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
