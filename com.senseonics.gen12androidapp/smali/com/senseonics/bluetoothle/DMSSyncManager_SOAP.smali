.class public Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;
.super Ljava/lang/Object;
.source "DMSSyncManager_SOAP.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final DMS_MAX_SYNC_HOURS:I

.field private final HOURS_BACK_DEFAULT:I

.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/model/SyncModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    .line 23
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->Tag:Ljava/lang/String;

    const/16 v0, 0x60

    .line 24
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->HOURS_BACK_DEFAULT:I

    const/16 v0, 0x2d0

    .line 25
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->DMS_MAX_SYNC_HOURS:I

    .line 37
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 38
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    .line 40
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 41
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 42
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    return-void
.end method

.method private allowNextOperation()Z
    .locals 13

    .line 155
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedStartDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "allowNextOperation: no last upload start DMS time"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long v9, v7, v0

    const-string v4, "DMS(DMSSyncManager_SOAP)"

    .line 164
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentTimeInMills:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "|lastSyncStartTimeInMills:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|diff:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v9, v2

    if-gez v0, :cond_1

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "allowNextOperation: DMS Auto: invalid time"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedStartInPreference()V

    const/4 v6, 0x0

    .line 172
    :cond_1
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Allow_Next_Operation_Seconds()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    cmp-long v1, v9, v1

    if-gez v1, :cond_2

    const-string v1, "DMS(DMSSyncManager_SOAP)"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowNextOperation: Less than ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seconds)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_2
    :goto_0
    const-string v0, "DMS(DMSSyncManager_SOAP)"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowNextOperation? :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private calculateHoursBack()I
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-string v6, "DMS(DMSSyncManager_SOAP)"

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTimeInMills:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|lastSyncTimeInMills:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|diff:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 144
    div-long/2addr v4, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    div-long/2addr v4, v0

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d0

    .line 145
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const-string v1, "DMS(DMSSyncManager_SOAP)"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should sync last # of hours:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private syncNow()V
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "PANIC: No Internet"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "PANIC: Auto Sync is not enabled"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "PANIC: Sync Tx is in progress"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->allowNextOperation()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "PANIC: not allow next operation"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->calculateHoursBack()I

    move-result v7

    const/4 v0, 0x6

    if-le v7, v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PANIC: foreground upload not allowed (hours:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, ">>> Sync Now <<<"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/senseonics/util/DMSUploadTask;

    const/4 v1, 0x0

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    iget-object v8, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;ILde/greenrobot/event/EventBus;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 128
    invoke-virtual {v0, v1}, Lcom/senseonics/util/DMSUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_6
    :goto_0
    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "PANIC: Initial Launch | not loggin in"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startSync()V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getMigrationPasswordUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "-- RESET last sync time UPON detecting password updated --"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/util/AccountConstants;->setMigrationPasswordUpdated(Z)V

    .line 50
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "no last upload DMS time -> SYNC NOW"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncNow()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-string v8, "DMS(DMSSyncManager_SOAP)"

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeInMills:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "|lastSyncTimeInMills:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|diff:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    const-string v0, "DMS(DMSSyncManager_SOAP)"

    const-string v1, "DMS Auto: invalid time"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    return-void

    .line 71
    :cond_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Interval()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x3c

    mul-long v1, v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    cmp-long v1, v6, v1

    if-gez v1, :cond_3

    const-string v1, "DMS(DMSSyncManager_SOAP)"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Less than ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minutes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncNow()V

    :goto_0
    return-void
.end method
