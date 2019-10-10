.class public Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static DMS_STATE_MODEL_UPLOADING_INTERVAL:I = 0x78


# instance fields
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/model/SyncModel;Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMS(StateModelSyncMgr)"

    .line 25
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->Tag:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 39
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 41
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 42
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 43
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadThresholdInfo()V

    return-void
.end method

.method private modelSyncNow()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: No Internet"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: Sync Tx is in progress"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, ">>> Sync Model Now <<<"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadAllStateModelInfo()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: Initial Launch | not loggin in"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uploadThresholdInfo()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: No Valid Account Info"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository;->putThresholdInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;)V

    return-void
.end method


# virtual methods
.method public startModelSync(I)V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "DMS(StateModelSyncMgr)"

    const-string v0, "no last upload Diagnostic time -> SYNC MODEL NOW"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->modelSyncNow()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-string v8, "DMS(StateModelSyncMgr)"

    .line 56
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

    const-string p1, "DMS(StateModelSyncMgr)"

    const-string v0, "Diagnostic Auto: invalid time"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->resetDiagnosticDataLastSyncedOnInPreference()V

    return-void

    :cond_1
    int-to-long v0, p1

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    const-string v0, "DMS(StateModelSyncMgr)"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Diagnostic: Less than ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " minutes)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->modelSyncNow()V

    :goto_0
    return-void
.end method

.method public uploadAllStateModelInfo()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMS(StateModelSyncMgr)"

    const-string v1, "PANIC: No Valid Account Info"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->getTxID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    invoke-virtual {v1, v0}, Lcom/senseonics/uploadData/UploadDataRepository;->putTransmitterInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->getSensorID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/uploadData/UploadDataRepository;->putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;Lde/greenrobot/event/EventBus;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadThresholdInfo()V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository;->putAppInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)V

    .line 125
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V

    return-void
.end method

.method public uploadThresholdInfoToDMSServerWithDelay()V
    .locals 4

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance v1, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager$1;-><init>(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;)V

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
