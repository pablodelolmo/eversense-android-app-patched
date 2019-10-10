.class public final Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothPairingFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothPairingFragment;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/pairing/BluetoothPairingFragment;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/pairing/BluetoothPairingFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private presenter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingPresenter;",
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

    const-string v0, "com.senseonics.pairing.BluetoothPairingFragment"

    const-string v1, "members/com.senseonics.pairing.BluetoothPairingFragment"

    .line 29
    const-class v2, Lcom/senseonics/pairing/BluetoothPairingFragment;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.pairing.BluetoothPairingPresenter"

    .line 39
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.pairing.BluetoothPairingView"

    .line 40
    const-class v1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothPairingFragment;
    .locals 1

    .line 59
    new-instance v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {v0}, Lcom/senseonics/pairing/BluetoothPairingFragment;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothPairingFragment;

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
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;

    .line 71
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/pairing/BluetoothPairingView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingFragment;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V

    return-void
.end method
