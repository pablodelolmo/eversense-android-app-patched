.class public Lcom/senseonics/gen12androidapp/MyTransmitterActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MyTransmitterActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rssiTextView:Landroid/widget/TextView;

.field private rssiTimer:Ljava/util/Timer;

.field private rssiValueTextView:Landroid/widget/TextView;

.field private rssiView:Landroid/view/View;

.field private transmitterBatteryLevelArrived:Z

.field private transmitterBatteryLevelTextView:Landroid/widget/TextView;

.field private transmitterBatteryLevelTitleView:Landroid/widget/TextView;

.field private transmitterCalibrationsMadeInThisPhaseArrived:Z

.field private transmitterCompletedCalsTextView:Landroid/widget/TextView;

.field private transmitterCompletedCalsTitleView:Landroid/widget/TextView;

.field private transmitterCurrentCalibrationPhaseArrived:Z

.field private transmitterCurrentPhaseTextView:Landroid/widget/TextView;

.field private transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

.field private transmitterFirmwareVersionArrived:Z

.field private transmitterFirmwareVersionTextView:Landroid/widget/TextView;

.field private transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

.field private transmitterLastCalTextView:Landroid/widget/TextView;

.field private transmitterLastCalTitleView:Landroid/widget/TextView;

.field private transmitterLastCalibrationDateAndTimeArrived:Z

.field private transmitterModelNoArrived:Z

.field private transmitterModelNumberTextView:Landroid/widget/TextView;

.field private transmitterModelNumberTitleView:Landroid/widget/TextView;

.field private transmitterNameTextView:Landroid/widget/TextView;

.field private transmitterNameTitleView:Landroid/widget/TextView;

.field private transmitterPhaseStartDateAndTimeArrived:Z

.field private transmitterPhaseStartTextView:Landroid/widget/TextView;

.field private transmitterPhaseStartTitleView:Landroid/widget/TextView;

.field private transmitterSerialNumberArrived:Z

.field private transmitterSerialNumberTextView:Landroid/widget/TextView;

.field private transmitterSerialNumberTitleView:Landroid/widget/TextView;

.field private transmtiterRSSILevelTextView:Landroid/widget/TextView;

.field private transmtiterRSSILevelTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 55
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 56
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 57
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 58
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 59
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 60
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCalibrationsMadeInThisPhaseArrived:Z

    .line 61
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    return-void
.end method

.method private checkIfAllDataLoaded()Z
    .locals 4

    .line 368
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCalibrationsMadeInThisPhaseArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    :goto_0
    const-class v1, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAllDataLoaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method private initMyTransmitterRequests(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    if-nez v0, :cond_1

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postPingRequest()V

    .line 391
    :cond_1
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    if-nez v0, :cond_2

    .line 392
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postGetModelRequest()V

    .line 396
    :cond_2
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    if-nez v0, :cond_3

    .line 397
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postVersionNumberRequest()V

    .line 401
    :cond_3
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    if-nez v0, :cond_4

    .line 402
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postLastCalibrationDateTimeRequest()V

    .line 406
    :cond_4
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    if-nez v0, :cond_5

    .line 407
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postPhaseStartDateTimeRequest()V

    .line 411
    :cond_5
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCalibrationsMadeInThisPhaseArrived:Z

    if-nez v0, :cond_6

    .line 412
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postCompletedCalibrationsCountRequest()V

    .line 416
    :cond_6
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    if-nez v0, :cond_7

    .line 417
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 421
    :cond_7
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    if-nez v0, :cond_8

    .line 422
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postBatteryLifeRequest()V

    :cond_8
    return-void
.end method

.method private refreshTransmitterInfo()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 111
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 112
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 113
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 114
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 115
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 116
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCalibrationsMadeInThisPhaseArrived:Z

    .line 117
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    .line 119
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->loadDataFromTransmitter()V

    .line 121
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->startRssiTimer()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateTransmitterRSSILevel(I)V

    :goto_0
    return-void
.end method

.method private showTransmitterBatteryLevel()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 314
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterCompletedCal()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-ltz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 278
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterCurrentPhase()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 290
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterFWVersion()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 240
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterLastCal()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 247
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 246
    invoke-static {v1, v2, p0}, Lcom/senseonics/util/Utils;->formatDateSimple(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 253
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterModelNumber()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 228
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterName()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 204
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterPhaseStart()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 260
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 259
    invoke-static {v1, v2, p0}, Lcom/senseonics/util/Utils;->formatDateSimple(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 266
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterSerialNumber()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 216
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private startRssiTimer()V
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    new-instance v2, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterActivity;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopRssiTimer()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateTransmitterRSSILevel(I)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 302
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public loadDataFromTransmitter()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateViews()V

    .line 130
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->initMyTransmitterRequests(Lcom/senseonics/bluetoothle/BluetoothService;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002e

    .line 67
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->initializeLayout(I)Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f017c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0900a6

    .line 71
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->content:Landroid/widget/LinearLayout;

    const p1, 0x7f09016b

    .line 72
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->parentLayout:Landroid/widget/LinearLayout;

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0901c0

    .line 74
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0901c6

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f0901be

    .line 76
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f0901ba

    .line 77
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    const p1, 0x7f0901bc

    .line 78
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    const p1, 0x7f0901c2

    .line 79
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    const p1, 0x7f0901b6

    .line 80
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    const p1, 0x7f0901b8

    .line 81
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    const p1, 0x7f0901c4

    .line 82
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    const p1, 0x7f0901b4

    .line 83
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    const p1, 0x7f0901c1

    .line 85
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901c7

    .line 86
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901bf

    .line 87
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901bb

    .line 88
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901bd

    .line 89
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901c3

    .line 90
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901b7

    .line 91
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901b9

    .line 92
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901c5

    .line 93
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901b5

    .line 94
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTitleView:Landroid/widget/TextView;

    .line 96
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f100145

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 97
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f080099

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->refreshTransmitterInfo()V

    .line 323
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;)V
    .locals 0

    .line 318
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->getRSSIValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateTransmitterRSSILevel(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedBatteryLevelEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 353
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedCalibrationsMadeInThisPhaseEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCalibrationsMadeInThisPhaseArrived:Z

    .line 358
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 362
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    .line 363
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 343
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 348
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 338
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 333
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 328
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->stopRssiTimer()V

    .line 157
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    .line 158
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->refreshTransmitterInfo()V

    .line 104
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public updateDisplay()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->checkIfAllDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateViews()V

    .line 140
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterName()V

    .line 185
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterSerialNumber()V

    .line 186
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterModelNumber()V

    .line 187
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterFWVersion()V

    .line 188
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterLastCal()V

    .line 189
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterPhaseStart()V

    .line 190
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterCompletedCal()V

    .line 191
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterCurrentPhase()V

    .line 192
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterBatteryLevel()V

    return-void
.end method
