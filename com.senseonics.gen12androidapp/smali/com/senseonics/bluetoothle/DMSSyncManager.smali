.class public Lcom/senseonics/bluetoothle/DMSSyncManager;
.super Ljava/lang/Object;
.source "DMSSyncManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final ADD_HOURS:I

.field private final DMS_MAX_SYNC_HOURS:I

.field private final HOURS_BACK_DEFAULT:I

.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/model/SyncModel;Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/StateModelUploadUtility;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMS(DMSSyncManager)"

    .line 24
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->Tag:Ljava/lang/String;

    const/16 v0, 0x60

    .line 25
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->HOURS_BACK_DEFAULT:I

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->ADD_HOURS:I

    const/16 v0, 0x2d0

    .line 27
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->DMS_MAX_SYNC_HOURS:I

    .line 40
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 41
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 43
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 44
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 45
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 46
    iput-object p7, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    return-void
.end method

.method private allowNextOperation()Z
    .locals 13

    .line 148
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedStartDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string v0, "DMS(DMSSyncManager)"

    const-string v1, "allowNextOperation: no last upload start DMS time"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long v9, v7, v0

    const-string v4, "DMS(DMSSyncManager)"

    .line 157
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

    const-string v0, "DMS(DMSSyncManager)"

    const-string v1, "allowNextOperation: DMS Auto: invalid time"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedStartInPreference()V

    const/4 v6, 0x0

    .line 165
    :cond_1
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Allow_Next_Operation_Seconds()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    cmp-long v1, v9, v1

    if-gez v1, :cond_2

    const-string v1, "DMS(DMSSyncManager)"

    .line 167
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
    const-string v0, "DMS(DMSSyncManager)"

    .line 172
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

    .line 127
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-string v6, "DMS(DMSSyncManager)"

    .line 136
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

    .line 137
    div-long/2addr v4, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    div-long/2addr v4, v0

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d0

    .line 138
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const-string v1, "DMS(DMSSyncManager)"

    .line 141
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

.method private syncNow(I)V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: No Internet"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: Auto Sync is not enabled"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: Sync Tx is in progress"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager;->allowNextOperation()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: not allow next operation"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_4
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager;->calculateHoursBack()I

    move-result v4

    if-nez p1, :cond_5

    const/4 p1, 0x2

    if-le v4, p1, :cond_5

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: immediate upload not allowed"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, ">>> Sync Now <<<"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Lcom/senseonics/uploadData/DMSUploadTaskREST;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 121
    invoke-virtual {p1, v0}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_6
    :goto_0
    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "PANIC: Initial Launch | not loggin in"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startSync(I)V
    .locals 11

    .line 50
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "DMS(DMSSyncManager)"

    const-string v1, "no last upload DMS time -> SYNC NOW"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncNow(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-string v8, "DMS(DMSSyncManager)"

    .line 60
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

    if-gez v0, :cond_1

    const-string p1, "DMS(DMSSyncManager)"

    const-string v0, "DMS Auto: invalid time"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    return-void

    :cond_1
    int-to-long v0, p1

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    const-string v0, "DMS(DMSSyncManager)"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Less than ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " minutes)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_2
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncNow(I)V

    :goto_0
    return-void
.end method
