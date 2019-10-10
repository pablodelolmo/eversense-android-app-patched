.class public Lcom/senseonics/gen12androidapp/AndroidModule;
.super Ljava/lang/Object;
.source "AndroidModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/senseonics/gen12androidapp/SenseonicsApplication;
    }
    library = true
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method provideApplicationForegroundState()Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 66
    new-instance v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;-><init>()V

    return-object v0
.end method

.method protected provideContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected provideDatabaseManager()Lcom/senseonics/db/DatabaseManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 41
    new-instance v0, Lcom/senseonics/db/DatabaseManager;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/senseonics/db/DatabaseManager;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->open()V

    return-object v0
.end method

.method protected provideEventBus()Lde/greenrobot/event/EventBus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 62
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method provideGraphCache(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)Lcom/senseonics/graph/GraphCache;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 71
    new-instance v0, Lcom/senseonics/graph/GraphCache;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/graph/GraphCache;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)V

    return-object v0
.end method

.method protected provideHandler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method protected provideNotificationManager()Landroid/app/NotificationManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method protected provideSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    sget-object v1, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
