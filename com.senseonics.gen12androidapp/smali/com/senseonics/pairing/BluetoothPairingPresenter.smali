.class public Lcom/senseonics/pairing/BluetoothPairingPresenter;
.super Ljava/lang/Object;
.source "BluetoothPairingPresenter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private bus:Lde/greenrobot/event/EventBus;

.field private final enabler:Lcom/senseonics/pairing/BluetoothEnabler;

.field private model:Lcom/senseonics/pairing/BluetoothPairingModel;

.field private view:Lcom/senseonics/pairing/BluetoothPairingView;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothPairingModel;Lcom/senseonics/pairing/BluetoothPairingView;Lcom/senseonics/pairing/BluetoothEnabler;Landroid/bluetooth/BluetoothAdapter;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    .line 38
    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    .line 39
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->bus:Lde/greenrobot/event/EventBus;

    .line 40
    iput-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->enabler:Lcom/senseonics/pairing/BluetoothEnabler;

    .line 41
    iput-object p5, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 42
    iput-object p6, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->activity:Landroid/app/Activity;

    return-void
.end method

.method private refresh()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->selectMenuItem(Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;)V

    .line 64
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothPairingView;->refreshList()V

    .line 67
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothPairingModel;->initiateInitialDiscovery()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled()Z

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->triggerBluetoothEnabled(Z)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->refreshConnectionState(Lcom/senseonics/bluetoothle/Transmitter;)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/BluetoothServiceBoundEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/senseonics/pairing/BluetoothPairingPresenter;->refresh()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/model/BeginDiscoveryEvent;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {p1}, Lcom/senseonics/pairing/BluetoothPairingView;->beginRefreshButtonAnimation()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/model/DiscoveryEvent;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {p1}, Lcom/senseonics/pairing/BluetoothPairingView;->stopRefreshButtonAnimation()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/model/TimeoutEvent;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {p1}, Lcom/senseonics/pairing/BluetoothPairingView;->stopRefreshButtonAnimation()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/events/model/TransmittersChangedEvent;->transmitters:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/senseonics/pairing/BluetoothPairingView;->setDevices(Ljava/util/List;)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->enabler:Lcom/senseonics/pairing/BluetoothEnabler;

    invoke-virtual {p1}, Lcom/senseonics/pairing/BluetoothEnabler;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    invoke-virtual {p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->discover()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/view/TransmitterPressed;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    iget-object p1, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v0, p1}, Lcom/senseonics/pairing/BluetoothPairingModel;->transmitterPressed(Lcom/senseonics/bluetoothle/Transmitter;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/senseonics/pairing/BluetoothPairingPresenter;->refresh()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
