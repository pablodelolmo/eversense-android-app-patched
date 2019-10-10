.class public final Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DMSSyncManager_SOAP$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private applicationForegroundState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
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

.field private notificationUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private syncModelIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.DMSSyncManager_SOAP"

    const-string v1, "members/com.senseonics.bluetoothle.DMSSyncManager_SOAP"

    .line 29
    const-class v2, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 39
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "android.content.Context"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->context:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 41
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 42
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 43
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SyncModel"

    .line 44
    const-class v1, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->syncModelIn:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;
    .locals 8

    .line 67
    new-instance v7, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/util/NotificationUtility;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->syncModelIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/model/SyncModel;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;-><init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/model/SyncModel;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

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
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP$$InjectAdapter;->syncModelIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
