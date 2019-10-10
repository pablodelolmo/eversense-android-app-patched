.class public Lcom/senseonics/view/NotificationDeviceStatus;
.super Landroid/widget/LinearLayout;
.source "NotificationDeviceStatus.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clearStatusDisplay()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06001e

    .line 133
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060050

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayNoSignal()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0f018c

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06001e

    .line 97
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060050

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 4

    .line 114
    sget-object v0, Lcom/senseonics/view/NotificationDeviceStatus$2;->$SwitchMap$com$senseonics$bluetoothle$Transmitter$CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f060050

    const v1, 0x7f06001e

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 124
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v3, 0x7f0f0191

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 126
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v3, 0x7f0f0087

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 120
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getColorInt(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const v1, 0x7f0f01b2

    invoke-direct {p0, v1, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 58
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b00ad

    .line 46
    invoke-static {p1, v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09029c

    .line 47
    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p1, 0x7f06001e

    .line 48
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 49
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f060050

    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z
    .locals 0

    .line 340
    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateCalibrationCountdown(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 139
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 140
    div-long v2, p1, v0

    long-to-int v2, v2

    .line 141
    rem-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x7f0f0044

    const/4 v0, 0x2

    .line 142
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f06001e

    .line 144
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 145
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p2, 0x7f060050

    invoke-direct {p0, p2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 3

    .line 152
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHoursLeftForWarmupPhase()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (< "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0142

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0122

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDisplayingConnectionState()Z
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f0f003b

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0f0191

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0f0087

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 64
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/senseonics/view/NotificationDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus$1;-><init>(Lcom/senseonics/view/NotificationDeviceStatus;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 8

    .line 159
    invoke-virtual {p1}, Lcom/senseonics/model/ModelChangedEvent;->getModel()Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled()Z

    move-result v2

    const v3, 0x7f060050

    const v4, 0x7f06001e

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 259
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f0f003b

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 261
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    sget-object v6, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v2, v6, :cond_1

    .line 265
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto/16 :goto_0

    .line 268
    :cond_1
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_2

    .line 269
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f0f0268

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 271
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 273
    :cond_2
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->displayNoSignal()V

    goto/16 :goto_0

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentAppAlertCodeBeReasonForBlinded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v6}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 279
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 280
    :cond_4
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isPlacementModeInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 282
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f0f01b7

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    :cond_5
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 285
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f0f007e

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 287
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 288
    :cond_6
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_7

    .line 289
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentMessageCodeBeReasonForBlinded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 290
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v6}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 293
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 294
    :cond_7
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    .line 295
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->updateCalibrationCountdown(J)V

    goto/16 :goto_0

    .line 300
    :cond_8
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_9

    .line 301
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f01b2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 305
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 306
    :cond_9
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v2, 0x1

    const v6, 0x7f0f012d

    const/4 v7, -0x1

    if-ne v0, v1, :cond_a

    .line 307
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-eq v0, v7, :cond_a

    .line 308
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v0

    sget v1, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    if-le v0, v1, :cond_a

    .line 310
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 313
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 314
    :cond_a
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 315
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v0

    .line 316
    invoke-virtual {p1, v0}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 317
    iget-object v1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 319
    :cond_b
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_c

    .line 320
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-eq v0, v7, :cond_c

    .line 322
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-direct {p0, v6, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 325
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 326
    :cond_c
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_d

    .line 327
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 329
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 331
    :cond_d
    invoke-direct {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 110
    const-class p1, Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRestoreInstanceState"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 103
    const-class v0, Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
