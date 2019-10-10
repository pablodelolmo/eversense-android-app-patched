.class public Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
.super Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.source "TransmitterStaleGlucoseChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/db/DatabaseManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;)V

    .line 40
    iput-object p8, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    iput-object p9, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 42
    iput-object p10, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 44
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method

.method private checkGlucose()V
    .locals 0

    return-void
.end method

.method private connectedBeyondThresholdFrom(J)Z
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TransmitterConnectedTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 117
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long p1, p1, v4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasActiveAlertStatus()Z
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v0

    const/16 v1, 0x8

    .line 131
    aget v1, v0, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 133
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v3, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 134
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x4

    .line 139
    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private hasLoggedAlerts()Z
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 152
    new-array v2, v2, [Lcom/senseonics/util/TransmitterMessageCode;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/senseonics/db/DatabaseManager;->notificationEventsExistsSince(JLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private isGlucoseTooStaleFrom(J)Z
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 124
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getStateValue()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getIsGlucoseStale()Z

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 48
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "TransmitterConnectedTime"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/GraphCheckStaleDataEvent;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/MessageCodeChangedEvent;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseReceivedEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseTimedOutEvent;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method protected shouldShowAlert()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowStaleGlucoseAlert()Z

    move-result v0

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setIsGlucoseStale(Z)V

    return-void
.end method
