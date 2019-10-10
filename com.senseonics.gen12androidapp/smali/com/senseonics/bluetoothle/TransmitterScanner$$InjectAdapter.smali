.class public final Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterScanner$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterScanner;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/TransmitterScanner;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothAdapterWrapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
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

.field private queryHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private scanPeriod:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.TransmitterScanner"

    const-string v1, "members/com.senseonics.bluetoothle.TransmitterScanner"

    .line 27
    const-class v2, Lcom/senseonics/bluetoothle/TransmitterScanner;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.bluetoothle.BluetoothAdapterWrapper"

    .line 37
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 38
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=SCAN_PERIOD_MILLISECONDS)/java.lang.Long"

    .line 39
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->scanPeriod:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ConnectedTransmitterAsyncQueryHandler"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->queryHandler:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterScanner;
    .locals 7

    .line 61
    new-instance v6, Lcom/senseonics/bluetoothle/TransmitterScanner;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->scanPeriod:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->queryHandler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/TransmitterScanner;-><init>(Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;Landroid/os/Handler;JLcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterScanner;

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
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->scanPeriod:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner$$InjectAdapter;->queryHandler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
