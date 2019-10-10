.class public Lcom/senseonics/bluetoothle/BluetoothService;
.super Landroid/app/Service;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;
    }
.end annotation


# instance fields
.field protected asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final binder:Landroid/os/IBinder;

.field protected bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bleHealthUpload:Lcom/senseonics/bluetoothle/BleHealthUpload;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothAdapterWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothGattCallback:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothManager:Landroid/bluetooth/BluetoothManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field public commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field isForeground:Z
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "IS_FOREGROUND"
    .end annotation
.end field

.field protected notificationUtility:Lcom/senseonics/util/NotificationUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected pushNotificationListener:Lcom/senseonics/bluetoothle/PushNotificationListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected rssiReader:Lcom/senseonics/bluetoothle/RssiReader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterAuthorityUri:Landroid/net/Uri;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "transmitter"
    .end annotation
.end field

.field protected transmitterConnectionNotificationScheduler:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterKeepAliveChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterKeepAliveVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterPersistor:Lcom/senseonics/db/TransmitterPersistor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStaleGlucoseChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStaleGlucoseVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private postReadGlucoseData()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readGlucoseData()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadMostRecentGlucoseValue()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMostRecentGlucoseValue()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadRawDataValues()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 573
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 574
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 575
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 576
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 577
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 578
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 579
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method


# virtual methods
.method public connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    .line 219
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterConnectionStates;->transmittersThatNeedDisconnecting()Ljava/util/List;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->stopLeScanIfCurrentlyScanning()V

    if-eqz p2, :cond_1

    .line 226
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {p2, p1, v0}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 230
    :cond_1
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 231
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x0

    .line 235
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const-wide/16 v0, 0xbb8

    .line 237
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    .line 238
    const-class v3, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bond start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/senseonics/bluetoothle/BluetoothService$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/senseonics/bluetoothle/BluetoothService$3;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;Landroid/bluetooth/BluetoothDevice;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public connectToPreviouslyConnectedDevice()V
    .locals 2

    .line 285
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectToPreviouslyConnectedDevice was called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$4;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$4;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    .line 300
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->startQuery(Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;)V

    return-void
.end method

.method public disconnect(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 3

    .line 278
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 281
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterAuthorityUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 116
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-direct {v2, p0}, Lcom/senseonics/bluetoothle/ServiceModule;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x539

    .line 121
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->startForeground(ILandroid/app/Notification;)V

    .line 125
    :cond_0
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$2;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$2;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    .line 168
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;

    invoke-direct {v2, v0}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->connectToPreviouslyConnectedDevice()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 178
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 188
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p2

    .line 195
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;

    invoke-virtual {p3, p1}, Lcom/senseonics/bluetoothle/CommandProcessor;->process(Landroid/content/Intent;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p3, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 198
    const-class p3, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request queued: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->isForeground:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x539

    .line 202
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {p3}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/senseonics/bluetoothle/BluetoothService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public postAlgorithmParameterFormatVersion()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAlgorithmParameterFormatVersion()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postBatteryLifeRequest()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readBatteryLevelRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postBatteryVoltageRequest()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readBatteryVoltageRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postCalibrationThresholds()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 426
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMaxCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postCompletedCalibrationsCountRequest()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->completedCalibrationsCount()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postCurrentCalibrationPhaseRequest()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postDayStartTime(II)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeDayStartTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postDetectedSensorId()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->detectedSensorId()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postEnterDiagnosticMode()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->enterDiagnosticMode()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postExitDiagnosticMode()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->exitDiagnosticMode()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postFirstAndLastBloodGlucoseDataRecordNumberRequest()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readFirstAndLastBloodGlucoseDataRecordNumber()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postForceGlucoseMeasurement()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->forceGlucoseMeasurement()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postGetModelRequest()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->model()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postGlucoseAlarmRepeatIntervalAndStartTime()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 462
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 463
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 464
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 465
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDayStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 466
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNightStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postHysteresisPercentRequest()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postHysteresisValueRequest()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postLastCalibrationDateTimeRequest()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->lastCalDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 336
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->lastCalTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postLinkedSensorId()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->linkedSensorId()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMEPMSPInfo()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedValue()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 452
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedRefChannelMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 453
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedDriftMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 454
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedLowRefMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 455
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedSpike()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 456
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readEEP24MSP()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesAfterNextCalibrationTime()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesAfterNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesBeforeNextCalibrationTime()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesBeforeNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesRemainingUntilCalibrationAllowed()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesRemainingUntilCalibrationAllowed()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNextCalibrationDate()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNextCalibrationDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNextCalibrationTime()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNightStartTime(II)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeNightStartTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPhaseStartDateTimeRequest()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->phaseStartDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 341
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->phaseStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPingRequest()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->ping()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPredictiveHysteresisPercentRequest()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPredictiveHysteresisValueRequest()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadClinicalModeRequest()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readClinicalMode()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadCommunicationProtocolVersionRequest()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readCommunicationProtocolVersion()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadDelayBLEDisconnectAlarmAddressRequest()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDelayBLEDisconnectAlarmAddressRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadDoNotDisturbModeRequest()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDoNotDisturbModeRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadEveningCalibrationTime()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readEveningCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseAlarmEnabledRequest()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmEnabledRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseAlarmRequest()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseTargetRequest()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadLowGlucoseAlarmRequest()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadLowGlucoseTargetRequest()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadMorningCalibrationTime()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMorningCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveAlertsRequest()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveHighAlertsRequest()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHighAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveLowAlertsRequest()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveLowAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveTimeIntervalRequest()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveFallingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 534
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveRisingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateAlert()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateAlertThresholdRequest()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlertFallingThresholdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 551
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlertRisingThresholdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateFallingAlert()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateFallingAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateRisingAlert()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateRisingAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRawDataAndGlucoseData()V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRawDataValues()V

    .line 556
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadMostRecentGlucoseValue()V

    .line 557
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadGlucoseData()V

    return-void
.end method

.method public postReadSensorGlucoseAlertsAndStatus()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readGlucoseAlertsAndStatus()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadSensorIdRequest()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorIdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadSignalStrengthRequest()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadUnlinkedSensorIdRequest()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readUnlinkedSensorIdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadVibrateModeRequest()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readVibrateModeRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadyForCalibration()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readReadyForCalibration()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSendBloodGlucoseDataResponse(Lcom/senseonics/events/CalibrationEventPoint;F)V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getTimestamp()J

    move-result-wide v1

    .line 487
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getGlucoseLevel()I

    move-result p1

    const/4 v3, 0x1

    .line 486
    invoke-static {v1, v2, p1, v3, p2}, Lcom/senseonics/bluetoothle/Request;->writeBloodGlucoseEvent(JIZF)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSendCurrentDateAndTimeToTransmitter()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->sendCurrentDateAndTimeToTransmitter()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorGlucoseAlertRecordRangeRequest()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readFirstAndLastSensorGlucoseAlertRecordNumbers()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorGlucoseRecordRangeRequest()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readFirstAndLastSensorGlucoseRecordNumbers()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorGlucoseSamplingInterval()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorGlucoseSamplingInterval()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorInsertionDate()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorInsertionDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorInsertionTime()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorInsertionTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSyncRequest(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    new-instance v7, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v3

    .line 317
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v5

    const/16 v6, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/bluetoothle/Request;-><init>(I[IIII)V

    .line 316
    invoke-virtual {v0, v7}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postVersionNumberRequest()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->versionExtension()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 331
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->version()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeAppVersion(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteClinicalMode(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeClinicalModeRequest(Z)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteEveningCalibrationTime(II)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeEveningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;F)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v1

    .line 497
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getGlucoseLevel()I

    move-result p1

    const/4 v3, 0x0

    .line 496
    invoke-static {v1, v2, p1, v3, p2}, Lcom/senseonics/bluetoothle/Request;->writeBloodGlucoseEvent(JIZF)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteMorningCalibrationTime(II)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeMorningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventTypeId()I

    move-result v3

    .line 492
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventSubTypeId()I

    move-result v4

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->quantity()I

    move-result p1

    .line 491
    invoke-static {v1, v2, v3, v4, p1}, Lcom/senseonics/bluetoothle/Request;->writePatientEvent(JIII)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteSensorID(J)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeSensorID(J)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteTransmitterChunk([III)I
    .locals 0

    .line 628
    invoke-static {p1, p2, p3}, Lcom/senseonics/bluetoothle/Request;->writeTransmitterChunk([III)Ljava/util/List;

    move-result-object p1

    .line 629
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p2, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->putAll(Ljava/util/List;)V

    .line 630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public postWriteTransmitterNameRequest(Ljava/lang/String;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeFirstFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 612
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeLastFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postwriteDoNotDisturbModeRequest(Z)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeDoNotDisturbModeRequest(Z)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public readRemoteRSSI()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->readRemoteRSSI()V

    return-void
.end method

.method public startDiscovery(Lcom/senseonics/bluetoothle/DiscoverCallback;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->scan(Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    goto :goto_0

    .line 212
    :cond_0
    const-class p1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dude, turn bluetooth on!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
