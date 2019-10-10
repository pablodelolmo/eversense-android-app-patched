.class public Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "GlucoseSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hasSupport:Z

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

.field private settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

.field private settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

.field private settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

.field private settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

.field private settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

.field private settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

.field private settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

.field private settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

.field private settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

.field private settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

.field private settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

.field private thresholdsController:Lcom/senseonics/util/ThresholdsController;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    .line 90
    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    move-object v1, p1

    .line 92
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    move-object v1, p2

    .line 93
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    move-object v1, p3

    .line 94
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v1, p4

    .line 95
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    move-object v1, p5

    .line 96
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    move-object v1, p6

    .line 97
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    move-object v1, p7

    .line 98
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    move-object v2, p8

    .line 99
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    move-object v2, p9

    .line 100
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, p10

    .line 101
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v2, p11

    .line 103
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    move-object v2, p12

    .line 104
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    move-object/from16 v2, p13

    .line 105
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    move-object/from16 v2, p14

    .line 106
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    move-object/from16 v2, p15

    .line 107
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    move-object/from16 v2, p16

    .line 108
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    move-object/from16 v2, p17

    .line 109
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    move-object/from16 v2, p18

    .line 110
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    move-object/from16 v2, p19

    .line 111
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    move-object/from16 v2, p20

    .line 112
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    move-object/from16 v2, p21

    .line 113
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    move-object/from16 v2, p22

    .line 114
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    .line 116
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result v1

    iput-boolean v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/util/ThresholdsController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->displayTempProfileEnabledWarning()V

    return-void
.end method

.method static synthetic access$600(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->uploadThresholdInfoToDMSServer()V

    return-void
.end method

.method private displayTempProfileEnabledWarning()V
    .locals 7

    .line 471
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    const/4 v2, 0x0

    const v3, 0x7f0f024c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method private getHeaderClickListener(III)Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPredictiveRateLayoutClickListener(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 439
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v0
.end method

.method private getPredictiveRatePickerManager(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 453
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-object v0
.end method

.method private getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 424
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)V

    return-object v0
.end method

.method private getTextColorForAlertText(ZZ)I
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p1, 0x7f06001e

    goto :goto_0

    :cond_0
    const p1, 0x7f060065

    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 301
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v0
.end method

.method private getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 318
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;II)V

    return-object v0
.end method

.method private refreshAlarmGlucoseLevels()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 201
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshAlarmGlucoseLevels_Additional()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshHighGlucoseAlarmSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V

    .line 210
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V
    .locals 10

    .line 289
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v6

    .line 290
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/senseonics/util/Utils;->getTextColorForConnection(Landroid/content/Context;Z)I

    move-result v7

    .line 291
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 292
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v2

    .line 293
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLayoutID()I

    move-result v3

    .line 294
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLabelTvID()I

    move-result v4

    .line 295
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v5

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 296
    invoke-virtual {p1, v0, v8, v9}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getModelValueString(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-interface/range {v1 .. v8}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshGlucoseSection(IIIIZILjava/lang/String;)V

    return-void
.end method

.method private refreshHighGlucoseAlarmSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 248
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v10

    .line 249
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v15

    .line 250
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/senseonics/util/Utils;->getTextColorForConnection(Landroid/content/Context;Z)I

    move-result v12

    .line 251
    invoke-direct {v0, v10, v15}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getTextColorForAlertText(ZZ)I

    move-result v13

    .line 253
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v4

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTvID()I

    move-result v5

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchID()I

    move-result v6

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLayoutID()I

    move-result v7

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLabelTvID()I

    move-result v8

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v9

    and-int v11, v10, v15

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    iget-object v14, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    move/from16 v17, v15

    iget-object v15, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 261
    invoke-virtual {v1, v2, v14, v15}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getModelValueString(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v16

    move/from16 v15, v17

    .line 253
    invoke-interface/range {v3 .. v16}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshHighGlucoseAlarmSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private refreshPredictiveAlerts()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveHighAlerts()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveLowAlerts()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 407
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v10

    .line 408
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v15

    .line 409
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/senseonics/util/Utils;->getTextColorForConnection(Landroid/content/Context;Z)I

    move-result v12

    .line 410
    invoke-direct {v0, v10, v15}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getTextColorForAlertText(ZZ)I

    move-result v13

    .line 412
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getViewID()I

    move-result v4

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTvID()I

    move-result v5

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchID()I

    move-result v6

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLayoutID()I

    move-result v7

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLabelTvID()I

    move-result v8

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueTvID()I

    move-result v9

    if-eqz v10, :cond_0

    if-eqz v15, :cond_0

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 419
    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getModelValueString(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v16

    .line 412
    invoke-interface/range {v3 .. v16}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshPredictiveRateSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private refreshRateAlerts()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshRateFallingAlerts()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshRateRisingAlerts()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshTargetGlucoseLevels()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 220
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshViews()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshAlarmGlucoseLevels_Additional()V

    .line 179
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshTargetGlucoseLevels()V

    .line 180
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveHighAlerts()V

    .line 181
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveLowAlerts()V

    .line 182
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateFallingAlerts()V

    .line 183
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateRisingAlerts()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshAlarmGlucoseLevels()V

    .line 187
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshTargetGlucoseLevels()V

    .line 188
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveAlerts()V

    .line 189
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateAlerts()V

    :goto_0
    return-void
.end method

.method private setupAlarmGlucoseLevels()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 196
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupAlarmGlucoseLevels_Additional()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupHighGlucoseAlarmAdditionalSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V

    .line 206
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 268
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v2

    .line 269
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLayoutID()I

    move-result v3

    .line 270
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLabelTvID()I

    move-result v4

    .line 271
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v5

    .line 274
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v0

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v6

    invoke-direct {p0, p1, v0, v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 276
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTitleID()I

    move-result v7

    .line 267
    invoke-interface/range {v1 .. v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V

    .line 279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 280
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v1

    .line 281
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getHeaderSectionID()I

    move-result v2

    .line 282
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 279
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupHighGlucoseAlarmAdditionalSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V
    .locals 10

    .line 224
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 225
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v2

    .line 226
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTvID()I

    move-result v3

    .line 227
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLayoutID()I

    move-result v4

    .line 228
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLabelTvID()I

    move-result v5

    .line 229
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v6

    .line 232
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v0

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v7

    invoke-direct {p0, p1, v0, v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v7

    .line 234
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTitleID()I

    move-result v8

    .line 235
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTitleID()I

    move-result v9

    .line 224
    invoke-interface/range {v1 .. v9}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupHighGlucoseAlarmSection(IIIIILandroid/view/View$OnClickListener;II)V

    .line 238
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 239
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v1

    .line 240
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getHeaderSectionID()I

    move-result v2

    .line 241
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 238
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupPredictiveAlerts()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveHighAlerts()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveLowAlerts()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V
    .locals 7

    .line 389
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 390
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getViewID()I

    move-result v2

    .line 391
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTvID()I

    move-result v3

    .line 392
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLayoutID()I

    move-result v4

    .line 393
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRatePickerManager(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRateLayoutClickListener(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 394
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTitleID()I

    move-result v6

    .line 389
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupPredictiveRateSection(IIILandroid/view/View$OnClickListener;I)V

    .line 397
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 398
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v1

    .line 399
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getHeaderSectionID()I

    move-result v2

    .line 400
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 397
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupRateAlerts()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupRateFallingAlerts()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupRateRisingAlerts()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupTargetGlucoseLevels()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 216
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupViews()V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupAlarmGlucoseLevels_Additional()V

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupTargetGlucoseLevels()V

    .line 163
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveHighAlerts()V

    .line 164
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveLowAlerts()V

    .line 165
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateFallingAlerts()V

    .line 166
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateRisingAlerts()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupAlarmGlucoseLevels()V

    .line 170
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupTargetGlucoseLevels()V

    .line 171
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveAlerts()V

    .line 172
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateAlerts()V

    :goto_0
    return-void
.end method

.method private uploadThresholdInfoToDMSServer()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfoToDMSServerWithDelay(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupViews()V

    .line 125
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method getLayoutID()I
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getGlucoseSettingLayout(Z)I

    move-result v0

    return v0
.end method

.method public isHasSupport()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->hideProgress()V

    .line 145
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/GlucoseSettingsChangedEvent;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->hideProgress()V

    .line 140
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result p1

    .line 151
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eq v0, p1, :cond_0

    .line 152
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    .line 153
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->replaceLayout()V

    .line 154
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupViews()V

    .line 155
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    :cond_0
    return-void
.end method

.method public setHasSupport(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    return-void
.end method
