.class public final Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothService$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;"
    }
.end annotation


# instance fields
.field private asyncQueryHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private bleHealthMonitor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BleHealthMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private bleHealthUpload:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BleHealthUpload;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapterWrapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private bluetoothCommunicator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothConnector:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothConnector;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothGattCallback:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private commandProcessor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/CommandProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private connectionStateModifier:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ConnectionStateModifier;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isForeground:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private pushNotificationListener:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/PushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestBlockingSet:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ">;"
        }
    .end annotation
.end field

.field private rssiReader:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RssiReader;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterAuthorityUri:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterConnectionStates:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterConnectionStates;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterKeepAliveChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterPersistor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/TransmitterPersistor;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterScanner:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterScanner;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStaleGlucoseChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.BluetoothService"

    const-string v1, "members/com.senseonics.bluetoothle.BluetoothService"

    .line 54
    const-class v2, Lcom/senseonics/bluetoothle/BluetoothService;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.bluetoothle.TransmitterScanner"

    .line 64
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BluetoothAdapterWrapper"

    .line 65
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    const-string v0, "javax.inject.Provider<com.senseonics.bluetoothle.BluetoothAdapterWrapper>"

    .line 66
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 67
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=IS_FOREGROUND)/java.lang.Boolean"

    .line 68
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=transmitter)/android.net.Uri"

    .line 69
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ConnectedTransmitterAsyncQueryHandler"

    .line 70
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ConnectionStateModifier"

    .line 71
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 72
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BluetoothCommunicator"

    .line 73
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BluetoothConnector"

    .line 74
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    const-string v0, "android.bluetooth.BluetoothManager"

    .line 75
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterConnectionStates"

    .line 76
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.RequestBlockingSet"

    .line 77
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterConnectionNotificationScheduler"

    .line 78
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.PushNotificationListener"

    .line 79
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.TransmitterPersistor"

    .line 80
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.CommandProcessor"

    .line 81
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 82
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.MyBluetoothGattCallback"

    .line 83
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterKeepAliveChecker"

    .line 84
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    .line 85
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterKeepAliveVisibilityChecker"

    .line 86
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterStaleGlucoseVisibilityChecker"

    .line 87
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.RssiReader"

    .line 88
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BleHealthUpload"

    .line 89
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BleHealthMonitor"

    .line 90
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 134
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/BluetoothService;-><init>()V

    .line 135
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterScanner;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    .line 146
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 147
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapperProvider:Ljavax/inject/Provider;

    .line 148
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    .line 149
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->isForeground:Z

    .line 150
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterAuthorityUri:Landroid/net/Uri;

    .line 151
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    .line 152
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    .line 153
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    .line 154
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    .line 155
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothConnector;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;

    .line 156
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 157
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    .line 158
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    .line 159
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionNotificationScheduler:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    .line 160
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->pushNotificationListener:Lcom/senseonics/bluetoothle/PushNotificationListener;

    .line 161
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/db/TransmitterPersistor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterPersistor:Lcom/senseonics/db/TransmitterPersistor;

    .line 162
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/CommandProcessor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;

    .line 163
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/NotificationUtility;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 164
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothGattCallback:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    .line 165
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterKeepAliveChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    .line 166
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterStaleGlucoseChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    .line 167
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterKeepAliveVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;

    .line 168
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterStaleGlucoseVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    .line 169
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/RssiReader;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    .line 170
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BleHealthUpload;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bleHealthUpload:Lcom/senseonics/bluetoothle/BleHealthUpload;

    .line 171
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BleHealthMonitor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-void
.end method
