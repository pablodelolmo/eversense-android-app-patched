.class public final Lcom/senseonics/gen12androidapp/BluetoothServiceConnection$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothServiceConnection$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceConnection"

    const-string v1, "members/com.senseonics.gen12androidapp.BluetoothServiceConnection"

    .line 24
    const-class v2, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 34
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;
    .locals 2

    .line 52
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;-><init>(Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

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

    .line 43
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
