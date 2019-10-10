.class public final Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TimeChangedReceiver$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/TimeChangedReceiver;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/TimeChangedReceiver;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/util/TimeChangedReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
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

    const-string v0, "com.senseonics.util.TimeChangedReceiver"

    const-string v1, "members/com.senseonics.util.TimeChangedReceiver"

    .line 29
    const-class v2, Lcom/senseonics/util/TimeChangedReceiver;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 39
    const-class v1, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 40
    const-class v1, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/TimeChangedReceiver;
    .locals 1

    .line 59
    new-instance v0, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-direct {v0}, Lcom/senseonics/util/TimeChangedReceiver;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->get()Lcom/senseonics/util/TimeChangedReceiver;

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
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iput-object v0, p1, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 71
    iget-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/TransmitterStateModel;

    iput-object v0, p1, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V

    return-void
.end method
