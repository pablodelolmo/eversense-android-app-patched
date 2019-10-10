.class final Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager_SOAP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfoToDMSServerWithDelay(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountConstants:Lcom/senseonics/util/AccountConstants;

.field final synthetic val$eventBus:Lde/greenrobot/event/EventBus;

.field final synthetic val$stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;


# direct methods
.method constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$accountConstants:Lcom/senseonics/util/AccountConstants;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP$1;->val$eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->access$000(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void
.end method
