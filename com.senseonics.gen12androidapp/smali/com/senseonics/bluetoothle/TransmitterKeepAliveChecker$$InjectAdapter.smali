.class public final Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterKeepAliveChecker$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationForegroundState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
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

.field private dialogUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
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

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEventPersistor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationEventPersistor;",
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

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStatusChecker;",
            ">;"
        }
    .end annotation
.end field

.field private timerProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;>;"
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

    const-string v0, "com.senseonics.bluetoothle.TransmitterKeepAliveChecker"

    const-string v1, "members/com.senseonics.bluetoothle.TransmitterKeepAliveChecker"

    .line 37
    const-class v2, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 47
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterStatusAlertVisibilityKeeper"

    .line 48
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationEventPersistor"

    .line 49
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 50
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 51
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 52
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 53
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "javax.inject.Provider<java.util.Timer>"

    .line 54
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 55
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.bluetoothle.TransmitterStatusChecker"

    .line 56
    const-class v3, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
    .locals 11

    .line 83
    new-instance v10, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/util/NotificationEventPersistor;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/util/NotificationUtility;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;Ljavax/inject/Provider;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V

    .line 84
    invoke-virtual {p0, v10}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)V

    return-object v10
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

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

    .line 65
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)V

    return-void
.end method
