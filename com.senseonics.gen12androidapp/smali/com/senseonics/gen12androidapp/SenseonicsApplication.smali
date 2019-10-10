.class public Lcom/senseonics/gen12androidapp/SenseonicsApplication;
.super Landroid/app/Application;
.source "SenseonicsApplication.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ObjectGraphApplication;


# instance fields
.field applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bluetoothServiceClient:Lcom/senseonics/gen12androidapp/BluetoothServiceClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field databaseManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private objectGraph:Ldagger/ObjectGraph;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->createObjectGraph([Ljava/lang/Object;)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public varargs createObjectGraph([Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-static {p1}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->objectGraph:Ldagger/ObjectGraph;

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->objectGraph:Ldagger/ObjectGraph;

    invoke-virtual {p1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->bluetoothServiceClient:Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    return-object v0
.end method

.method protected getModules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/AndroidModule;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-direct {v1}, Lcom/senseonics/gen12androidapp/ApplicationModule;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inject(Ljava/lang/Object;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->objectGraph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 48
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->databaseManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->close()V

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public varargs plus([Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->objectGraph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object p1

    return-object p1
.end method
