.class public final Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterStaleGlucoseChecker$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
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

.field private databaseManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
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

.field private messageCoder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/MessageCoder;",
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

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
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

    const-string v0, "com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    const-string v1, "members/com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    .line 38
    const-class v2, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 48
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TransmitterStatusAlertVisibilityKeeper"

    .line 49
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationEventPersistor"

    .line 50
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 51
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 52
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 53
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 54
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 55
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.MessageCoder"

    .line 56
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 57
    const-class v1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.bluetoothle.TransmitterStatusChecker"

    .line 58
    const-class v3, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
    .locals 12

    .line 86
    new-instance v11, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/util/NotificationEventPersistor;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/util/NotificationUtility;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/senseonics/gen12androidapp/MessageCoder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/senseonics/db/DatabaseManager;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/db/DatabaseManager;)V

    .line 87
    invoke-virtual {p0, v11}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V

    return-object v11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

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

    .line 67
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V

    return-void
.end method
