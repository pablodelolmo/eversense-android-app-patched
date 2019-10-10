.class public final Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothPairingPresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothPairingPresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/pairing/BluetoothPairingPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private bus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private enabler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingModel;",
            ">;"
        }
    .end annotation
.end field

.field private view:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.pairing.BluetoothPairingPresenter"

    const-string v1, "members/com.senseonics.pairing.BluetoothPairingPresenter"

    .line 29
    const-class v2, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 39
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->bus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.pairing.BluetoothPairingModel"

    .line 40
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.pairing.BluetoothPairingView"

    .line 41
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->view:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.pairing.BluetoothEnabler"

    .line 42
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    const-string v0, "android.bluetooth.BluetoothAdapter"

    .line 43
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    const-string v0, "android.app.Activity"

    .line 44
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->activity:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothPairingPresenter;
    .locals 8

    .line 67
    new-instance v7, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/pairing/BluetoothPairingModel;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/pairing/BluetoothEnabler;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->activity:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/pairing/BluetoothPairingPresenter;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothPairingModel;Lcom/senseonics/pairing/BluetoothPairingView;Lcom/senseonics/pairing/BluetoothEnabler;Landroid/bluetooth/BluetoothAdapter;Landroid/app/Activity;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothPairingPresenter;

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

    .line 53
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenter$$InjectAdapter;->activity:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
