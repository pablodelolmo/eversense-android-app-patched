.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "SoundSettingsSimplifiedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;,
        Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;",
        ">;"
    }
.end annotation


# instance fields
.field private final DISCONNECT_MINUTES_MAX:I

.field private final DISCONNECT_MINUTES_MIN:I

.field private final HIGH_SNOOZE_MAX:I

.field private final HIGH_SNOOZE_MIN:I

.field private final LOW_SNOOZE_MAX:I

.field private final LOW_SNOOZE_MIN:I

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

.field private supportDisconnectMinuteSetting:Z


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/AlarmRingtoneManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/Context;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->LOW_SNOOZE_MIN:I

    const/16 v1, 0x1e

    .line 38
    iput v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->LOW_SNOOZE_MAX:I

    const/16 v2, 0xf

    .line 39
    iput v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->HIGH_SNOOZE_MIN:I

    const/16 v2, 0xb4

    .line 40
    iput v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->HIGH_SNOOZE_MAX:I

    .line 41
    iput v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->DISCONNECT_MINUTES_MIN:I

    .line 42
    iput v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->DISCONNECT_MINUTES_MAX:I

    .line 69
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    .line 70
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 71
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    .line 72
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 73
    iput-object p5, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 74
    iput-object p6, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    .line 75
    iput-object p7, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 76
    iput-object p8, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 77
    iput-object p9, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 79
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForDelayBLEDisconnectionAlarm()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->uploadThresholdInfoToDMSServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getDNDSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 232
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    return-object v0
.end method

.method private getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 156
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/16 v1, 0x1e

    const/4 v2, 0x5

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, v2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/16 v1, 0xf

    const/16 v3, 0xb4

    invoke-virtual {v0, v1, v3, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, v2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    :goto_0
    new-instance v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/util/ArrayList;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)V

    .line 196
    new-instance v2, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v2
.end method

.method private getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 222
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideProgressAndRefresh()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->hideProgress()V

    .line 134
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->refreshView()V

    return-void
.end method

.method private refreshView()V
    .locals 12

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->getTextColorForConnection(Landroid/content/Context;Z)I

    move-result v4

    .line 141
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 142
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 144
    invoke-virtual {v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 145
    invoke-virtual {v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 146
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 147
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 148
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 149
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 150
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getDNDSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v11

    .line 141
    invoke-interface/range {v2 .. v11}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->refreshView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private uploadThresholdInfoToDMSServer()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfoToDMSServerWithDelay(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V
    .locals 8

    .line 84
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    const-string v0, "LowAlarmDay"

    .line 88
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    const-string v0, "HighAlarmDay"

    .line 89
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 90
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v4

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 91
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v5

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 92
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v6

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/16 v7, 0x8

    :goto_0
    move-object v1, p1

    .line 87
    invoke-interface/range {v1 .. v7}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;I)V

    .line 94
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->refreshView()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 100
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedVibrateModeEvent;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForDelayBLEDisconnectionAlarm()Z

    move-result p1

    .line 126
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    if-eq v0, p1, :cond_1

    .line 127
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    .line 128
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-interface {v0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->setDisconnectLayoutVisibility(I)V

    :cond_1
    return-void
.end method
