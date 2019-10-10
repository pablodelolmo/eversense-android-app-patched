.class public Lcom/senseonics/util/TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangedReceiver.java"


# instance fields
.field protected bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;

    invoke-interface {p1, p0}, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;->inject(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 29
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 34
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    .line 37
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationLocalTimeHour()I

    move-result p1

    .line 38
    iget-object p2, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationLocalTimeMinute()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-eq p2, v2, :cond_1

    .line 40
    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    aget v3, p1, v1

    aget p1, p1, v0

    invoke-virtual {p2, v3, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteMorningCalibrationTime(II)V

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationLocalTimeHour()I

    move-result p1

    .line 45
    iget-object p2, p0, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationLocalTimeMinute()I

    move-result p2

    if-eq p1, v2, :cond_2

    if-eq p2, v2, :cond_2

    .line 47
    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    aget v1, p1, v1

    aget p1, p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteEveningCalibrationTime(II)V

    :cond_2
    :goto_0
    return-void
.end method
