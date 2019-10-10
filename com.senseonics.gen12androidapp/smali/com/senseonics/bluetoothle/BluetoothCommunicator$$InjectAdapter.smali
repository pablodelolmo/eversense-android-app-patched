.class public final Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothCommunicator$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private broadcaster:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;",
            ">;"
        }
    .end annotation
.end field

.field private commandRequestTimer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/CommandRequestTimer;",
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

.field private queue:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateSyncer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStateSyncer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.BluetoothCommunicator"

    const-string v1, "members/com.senseonics.bluetoothle.BluetoothCommunicator"

    .line 31
    const-class v2, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 41
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 42
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ConnectionStateModifier"

    .line 43
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.RequestBlockingSet"

    .line 44
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.CommandRequestTimer"

    .line 45
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterStateSyncer"

    .line 46
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.LegacyResponseHandlingEventBroadcaster"

    .line 47
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BluetoothService"

    .line 48
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BluetoothCommunicator;
    .locals 10

    .line 73
    new-instance v9, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/senseonics/bluetoothle/BluetoothService;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;Lcom/senseonics/bluetoothle/ConnectionStateModifier;Lcom/senseonics/bluetoothle/RequestBlockingSet;Lcom/senseonics/bluetoothle/CommandRequestTimer;Lcom/senseonics/bluetoothle/TransmitterStateSyncer;Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothCommunicator;

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

    .line 57
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
