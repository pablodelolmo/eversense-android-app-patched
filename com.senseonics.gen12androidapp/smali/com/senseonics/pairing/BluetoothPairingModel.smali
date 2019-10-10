.class public Lcom/senseonics/pairing/BluetoothPairingModel;
.super Ljava/lang/Object;
.source "BluetoothPairingModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private bDiscoverOnce:Z

.field private enabler:Lcom/senseonics/pairing/BluetoothEnabler;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private service:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private transmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothEnabler;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/pairing/BluetoothEnabler;",
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 43
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->enabler:Lcom/senseonics/pairing/BluetoothEnabler;

    .line 44
    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->service:Ljavax/inject/Provider;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/pairing/BluetoothPairingModel;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/senseonics/pairing/BluetoothPairingModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/senseonics/pairing/BluetoothPairingModel;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public discover()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/pairing/events/model/BeginDiscoveryEvent;

    invoke-direct {v1}, Lcom/senseonics/pairing/events/model/BeginDiscoveryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->service:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothService;

    new-instance v1, Lcom/senseonics/pairing/BluetoothPairingModel$1;

    invoke-direct {v1, p0}, Lcom/senseonics/pairing/BluetoothPairingModel$1;-><init>(Lcom/senseonics/pairing/BluetoothPairingModel;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->startDiscovery(Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    return-void
.end method

.method public initiateInitialDiscovery()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingModel;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->bDiscoverOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->enabler:Lcom/senseonics/pairing/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothEnabler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingModel;->discover()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->bDiscoverOnce:Z

    :cond_0
    return-void
.end method

.method public isServiceBound()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->service:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshConnectionState(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/Transmitter;

    .line 58
    invoke-virtual {p1, v1}, Lcom/senseonics/bluetoothle/Transmitter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/Transmitter;->setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setTransmitters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    return-void
.end method

.method public setbDiscoverOnce(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->bDiscoverOnce:Z

    return-void
.end method

.method public transmitterPressed(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->service:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->service:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/BluetoothService;->disconnect(Lcom/senseonics/bluetoothle/Transmitter;)V

    :goto_0
    return-void
.end method

.method public triggerBluetoothEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 94
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitters:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
