.class public final Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;",
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

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.TransmitterStaleGlucoseVisibilityChecker"

    const-string v1, "members/com.senseonics.bluetoothle.TransmitterStaleGlucoseVisibilityChecker"

    .line 30
    const-class v2, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.bluetoothle.TransmitterStatusAlertVisibilityKeeper"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 41
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.bluetoothle.TransmitterStatusAlertVisibilityChecker"

    .line 42
    const-class v3, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;
    .locals 3

    .line 62
    new-instance v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;-><init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;)V

    return-void
.end method
