.class public Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;
.super Ljava/lang/Object;
.source "SensorLinkDMSStateModelSyncManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final UPLOAD_MAX:I

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private stateModelUploadUtilitySoap:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

.field private uploadCounter:I


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/AccountConstants;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->UPLOAD_MAX:I

    .line 25
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    .line 26
    iput-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->stateModelUploadUtilitySoap:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 27
    iput-object p3, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 28
    iput-object p4, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 29
    iget-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private resetUploadCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->uploadCounter:I

    return-void
.end method

.method private upload()V
    .locals 3

    .line 54
    iget v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->uploadCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->uploadCounter:I

    .line 55
    iget v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->uploadCounter:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->resetUploadCounter()V

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->stateModelUploadUtilitySoap:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void
.end method


# virtual methods
.method public initUpload()V
    .locals 0

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;)V
    .locals 0

    return-void
.end method
