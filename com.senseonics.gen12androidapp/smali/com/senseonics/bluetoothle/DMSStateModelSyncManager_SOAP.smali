.class public Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager_SOAP.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final STATE_MODEL__UPLOADING_INTERVAL:I

.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMS(StateModelSyncMgr)"

    .line 23
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->Tag:Ljava/lang/String;

    const/16 v0, 0x74

    .line 24
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->STATE_MODEL__UPLOADING_INTERVAL:I

    .line 34
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 35
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 37
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 38
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void
.end method

.method private modelSyncNow()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: No Internet"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: Sync Tx is in progress"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, ">>> Sync Model Now <<<"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: Initial Launch | not loggin in"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 6

    .line 98
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 110
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 117
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0, p1, p2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    .line 124
    :cond_0
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array p1, v1, [Ljava/lang/Void;

    .line 129
    invoke-virtual {v0, p1}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V

    return-void
.end method

.method private static uploadThresholdInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 136
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 141
    invoke-virtual {v0, p0}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static uploadThresholdInfoToDMSServerWithDelay(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 146
    new-instance v1, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    sget p0, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public startModelSync()V
    .locals 11

    .line 42
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "no last upload Diagnostic time -> SYNC MODEL NOW"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->modelSyncNow()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-string v8, "DMS(StateModelSyncMgr)"

    .line 51
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

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "Diagnostic Auto: invalid time"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetDiagnosticDataLastSyncedOnInPreference()V

    return-void

    :cond_1
    const-wide/32 v0, 0x6a3380

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "Diagnostic: Less than (116 minutes)"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->modelSyncNow()V

    :goto_0
    return-void
.end method
