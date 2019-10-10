.class public final Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterStateSyncer$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterStateSyncer;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/TransmitterStateSyncer;",
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

.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private contextIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.TransmitterStateSyncer"

    const-string v1, "members/com.senseonics.bluetoothle.TransmitterStateSyncer"

    .line 28
    const-class v2, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.bluetoothle.BluetoothService"

    .line 38
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 39
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    const-string v0, "android.content.Context"

    .line 41
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 42
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterStateSyncer;
    .locals 7

    .line 64
    new-instance v6, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;Landroid/content/SharedPreferences;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

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

    .line 51
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
