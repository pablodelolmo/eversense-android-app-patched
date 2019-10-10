.class public Lcom/senseonics/bluetoothle/ServiceModule;
.super Ljava/lang/Object;
.source "ServiceModule.java"


# annotations
.annotation runtime Ldagger/Module;
    addsTo = Lcom/senseonics/gen12androidapp/ApplicationModule;
    injects = {
        Lcom/senseonics/bluetoothle/BluetoothService;,
        Lcom/senseonics/graph/GraphCacheIntentService;
    }
    library = true
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ServiceModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected provideBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "bluetooth"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    return-object p1
.end method

.method protected provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    return-object p1
.end method

.method protected provideDisconnectExpiryPeriod()J
    .locals 6
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "DISCONNECT_EXPIRY_PERIOD"
    .end annotation

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/ServiceModule;->provideDisconnectIntervalFollowUp()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected provideDisconnectIntervalFollowUp()J
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "DISCONNECT_INTERVAL_FOLLOWUP"
    .end annotation

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method provideIsForeground()Z
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "IS_FOREGROUND"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected provideScanPeriodMilliseconds()J
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SCAN_PERIOD_MILLISECONDS"
    .end annotation

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected provideTransmitterContentProviderUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "transmitter"
    .end annotation

    const-string v0, "content://com.senseonics.gen12androidapp.transmitter"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected providesBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ServiceModule;->context:Landroid/content/Context;

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothService;

    return-object v0
.end method
