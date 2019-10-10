.class public Lcom/senseonics/gen12androidapp/MySensorActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MySensorActivity.java"


# instance fields
.field private detectedserialNumberTextView:Landroid/widget/TextView;

.field private detectedserialNumberTitleView:Landroid/widget/TextView;

.field private insertionDateTextView:Landroid/widget/TextView;

.field private insertionDateTitleView:Landroid/widget/TextView;

.field private insertionTimeTextView:Landroid/widget/TextView;

.field private insertionTimeTitleView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorInsertionDateAndTimeArrived:Z

.field private sensorLinkedSensorArrived:Z

.field private sensorUnLinkedSensorArrived:Z

.field private serialNumberTextView:Landroid/widget/TextView;

.field private serialNumberTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 23
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 24
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    return-void
.end method

.method private checkIfAllDataLoaded()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method private refreshSensorInfo()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 65
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    .line 66
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->loadDataFromTransmitter()V

    return-void
.end method

.method private showDetectedSerialNumber()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 158
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showInsertionDate()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 129
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->formatDateOnlyForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 135
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showInsertionTime()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    .line 141
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 140
    invoke-static {v1, v2, p0}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 147
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showSerialNumber()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateViews()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showSerialNumber()V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showInsertionDate()V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showInsertionTime()V

    .line 99
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showDetectedSerialNumber()V

    return-void
.end method


# virtual methods
.method public loadDataFromTransmitter()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateViews()V

    .line 73
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_2

    .line 75
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 83
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postDetectedSensorId()V

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002d

    .line 30
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->initializeLayout(I)Landroid/view/View;

    .line 32
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090243

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f090159

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    const p1, 0x7f09015b

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    const p1, 0x7f0900cb

    .line 37
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f090244

    .line 39
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f09015a

    .line 40
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTitleView:Landroid/widget/TextView;

    const p1, 0x7f09015c

    .line 41
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTitleView:Landroid/widget/TextView;

    const p1, 0x7f0900cc

    .line 42
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTitleView:Landroid/widget/TextView;

    .line 44
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f100145

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 45
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f080099

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->refreshSensorInfo()V

    .line 163
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 168
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    .line 178
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 173
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    .line 58
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->refreshSensorInfo()V

    .line 52
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public updateDisplay()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->checkIfAllDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateViews()V

    .line 105
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method
