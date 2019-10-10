.class public Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "BluetoothPairBaseActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ServiceActivity;


# static fields
.field private static final LOCATION_REQUEST_CODE:I = 0x1ce

.field protected static activityPaused:Z = false

.field public static patientEventPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alertHelper:Lcom/senseonics/util/AlertHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected appUpdateChecker:Lcom/senseonics/util/AppUpdateChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected calibrationHelper:Lcom/senseonics/model/CalibrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private invalidCredentialDialog:Landroid/app/Dialog;

.field private isOnCreate:Z

.field protected layoutSyncBar:Landroid/widget/RelativeLayout;

.field protected notificationUtility:Lcom/senseonics/util/NotificationUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected progressView:Landroid/view/View;

.field private readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

.field protected sharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected syncModel:Lcom/senseonics/model/SyncModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

.field protected transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    .line 226
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;-><init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

    return-void
.end method

.method private displayInvalidCredentialDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    .line 570
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private permissionsGranted([I)Z
    .locals 4

    .line 182
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private removeSyncProgressManager()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->remove()V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkPermissionsIfNeeded()V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 158
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 159
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;

    invoke-direct {v1}, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 161
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1ce

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method protected checkStaleData()V
    .locals 4

    .line 487
    new-instance v0, Lcom/senseonics/util/StaleDataChecker;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/StaleDataChecker;-><init>(JI)V

    .line 488
    invoke-virtual {v0}, Lcom/senseonics/util/StaleDataChecker;->isStaleData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    .line 491
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/GraphCheckStaleDataEvent;

    invoke-direct {v1}, Lcom/senseonics/events/GraphCheckStaleDataEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getTransmitterStateModel()Lcom/senseonics/model/TransmitterStateModel;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-object v0
.end method

.method public initBluetoothLE()V
    .locals 5

    .line 199
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const v2, 0x7f08013b

    const v3, 0x7f0f0198

    .line 203
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f003a

    .line 204
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected isThisActivityTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 141
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00c5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->progressView:Landroid/view/View;

    .line 142
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->progressView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->initBluetoothLE()V

    .line 148
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->removeDialogs()V

    .line 469
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->removeOtherDialogs()V

    .line 470
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 497
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 499
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transmitter conn changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    .line 502
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1}, Lcom/senseonics/model/SyncModel;->clear()V

    .line 503
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 504
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, p0}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 507
    new-instance p1, Lcom/senseonics/gen12androidapp/SyncProgressManager;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/senseonics/gen12androidapp/SyncProgressManager;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/BluetoothCommunicatorReadyEvent;)V
    .locals 0

    .line 529
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1}, Lcom/senseonics/model/SyncModel;->clear()V

    .line 531
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz p1, :cond_0

    .line 532
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 3

    .line 513
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result p1

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/senseonics/bluetoothle/ResponseOperations;->checkResponse([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;ILcom/senseonics/bluetoothle/BluetoothService;)Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/AlertOrAlarmEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/AlertOrAlarmEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/DMSUploadResultEvent;)V
    .locals 3

    const-string v0, "PairBase DMS"

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/events/DMSUploadResultEvent;->getResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p1}, Lcom/senseonics/events/DMSUploadResultEvent;->getResult()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0245

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/InvalidUserCredentialEvent;)V
    .locals 1

    const-string p1, "DMS(PairBaseActivity)"

    const-string v0, "InvalidUserCredentialEvent received"

    .line 544
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f013c

    .line 548
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f0242

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->displayInvalidCredentialDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/MyCircleMemberRemovedEvent;)V
    .locals 6

    .line 553
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    const v1, 0x7f0f0292

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 554
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    .line 555
    invoke-virtual {p1}, Lcom/senseonics/events/MyCircleMemberRemovedEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 556
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG"

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/PredictiveRateAlertEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/PredictiveRateAlertEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/RateAlertEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/RateAlertEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;)V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    invoke-virtual {p1}, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 561
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->refresh()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 447
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in BluetoothPairBaseActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->unbind(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 450
    sput-boolean v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->activityPaused:Z

    .line 451
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 452
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x1ce

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, p3}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->permissionsGranted([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;

    invoke-direct {p2}, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 381
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onResume()V

    .line 383
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bind(Landroid/app/Activity;)V

    .line 384
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationUtility;->cancelAllNotification()V

    .line 388
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 389
    new-instance v0, Lcom/senseonics/gen12androidapp/SyncProgressManager;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/SyncProgressManager;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    .line 391
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in BluetoothPairBaseActivity onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    const/4 v0, 0x0

    .line 394
    sput-boolean v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->activityPaused:Z

    .line 397
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ActivityOnResumeEvent;

    invoke-direct {v2}, Lcom/senseonics/events/ActivityOnResumeEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->checkStaleData()V

    .line 403
    instance-of v1, p0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v1, :cond_0

    .line 404
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v2, v3, :cond_0

    .line 405
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    :cond_0
    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 421
    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    if-nez v1, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isSameActivityPausedResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, p0, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->fireDoNotDisturbAlertDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 426
    :cond_2
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    .line 430
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    if-ne v1, v2, :cond_4

    .line 431
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isOnCreate:Z

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->appUpdateChecker:Lcom/senseonics/util/AppUpdateChecker;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AppUpdateChecker;->checkForSoftwareUpdate(Landroid/content/Context;)V

    .line 442
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->update()V

    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 474
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;-><init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-object v0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method protected sendCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/CalibrationHelper;->setJustSubmittedCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V

    .line 210
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postSendBloodGlucoseDataResponse(Lcom/senseonics/events/CalibrationEventPoint;F)V

    return-void
.end method

.method public setDatabaseManager(Lcom/senseonics/db/DatabaseManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    return-void
.end method

.method public setTransmitterStateModel(Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method public transmitterNameChanged(Ljava/lang/String;)V
    .locals 0

    .line 214
    sput-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    return-void
.end method

.method public writeNByteToTransmitterFinished()V
    .locals 2

    .line 218
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/senseonics/util/Utils;->WRITE_N_BYTE_FINISHED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
