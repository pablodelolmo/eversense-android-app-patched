.class public final Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MyBluetoothGattCallback$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/bluetooth/BluetoothManager;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.MyBluetoothGattCallback"

    const-string v1, "members/com.senseonics.bluetoothle.MyBluetoothGattCallback"

    .line 27
    const-class v2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 37
    const-class v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 38
    const-class v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ConnectionStateModifier"

    .line 39
    const-class v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    const-string v0, "android.bluetooth.BluetoothManager"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;
    .locals 5

    .line 61
    new-instance v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;Lcom/senseonics/bluetoothle/ConnectionStateModifier;Landroid/bluetooth/BluetoothManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

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

    .line 49
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
