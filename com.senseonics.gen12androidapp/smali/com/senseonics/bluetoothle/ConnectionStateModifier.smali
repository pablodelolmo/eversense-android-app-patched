.class public Lcom/senseonics/bluetoothle/ConnectionStateModifier;
.super Ljava/lang/Object;
.source "ConnectionStateModifier.java"


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->eventBus:Lde/greenrobot/event/EventBus;

    .line 20
    iput-object p2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/ConnectionStateModifier;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;-><init>(Lcom/senseonics/bluetoothle/ConnectionStateModifier;Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setConnectionStateAndPublish(Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;",
            "Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;-><init>(Lcom/senseonics/bluetoothle/ConnectionStateModifier;Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
