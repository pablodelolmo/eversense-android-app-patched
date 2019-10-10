.class public final Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SensorLinkDMSStateModelSyncManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;",
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

.field private dmsStateModelSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;",
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

.field private stateModelUploadUtilitySoap:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/StateModelUploadUtility_SOAP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.SensorLinkDMSStateModelSyncManager"

    const-string v1, "members/com.senseonics.bluetoothle.SensorLinkDMSStateModelSyncManager"

    .line 27
    const-class v2, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.bluetoothle.DMSStateModelSyncManager"

    .line 37
    const-class v1, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.StateModelUploadUtility_SOAP"

    .line 38
    const-class v1, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->stateModelUploadUtilitySoap:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 39
    const-class v1, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 40
    const-class v1, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;
    .locals 5

    .line 61
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->stateModelUploadUtilitySoap:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/util/AccountConstants;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;-><init>(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/AccountConstants;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

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
    iget-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->stateModelUploadUtilitySoap:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
