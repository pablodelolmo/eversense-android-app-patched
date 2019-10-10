.class public Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;
.super Ljava/lang/Object;
.source "SendBloodGlucoseDataResponseParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/CalibrationHelper;Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    .line 35
    iput-object p2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 36
    iput-object p3, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    .line 37
    iput-object p4, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    iput-object p5, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 11

    const/4 v0, 0x1

    .line 53
    aget p1, p1, v0

    .line 55
    iget-object v1, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper;->getJustSubmittedCalibrationEvent()Lcom/senseonics/events/CalibrationEventPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object v2

    .line 59
    invoke-virtual {v1, p1}, Lcom/senseonics/events/CalibrationEventPoint;->setCalibrationFlag(I)V

    .line 62
    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCompletedCalibrationsCountRequest()V

    .line 67
    iget-object v2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateTimeRequest()V

    :cond_0
    const-string v2, "GMT"

    .line 71
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Lcom/senseonics/events/CalibrationEventPoint;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-static {v2}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v3

    const/16 v5, 0x10

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    .line 75
    iget-object v7, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "calibrationDateTime"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    sub-long/2addr v9, v5

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDuration()I

    move-result v2

    int-to-long v2, v2

    .line 79
    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v2, v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->startCountDownTimer(J)V

    .line 82
    iget-object v2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v2, v1, v0}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v3, Lcom/senseonics/events/GlucoseEventPoint;

    .line 87
    invoke-virtual {v1}, Lcom/senseonics/events/CalibrationEventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Lcom/senseonics/events/CalibrationEventPoint;->getGlucoseLevel()I

    move-result v5

    .line 90
    invoke-virtual {v1}, Lcom/senseonics/events/CalibrationEventPoint;->getNotes()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 85
    invoke-virtual {v2, v3, v0}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;

    iget-object v4, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    .line 96
    invoke-virtual {v4, p1}, Lcom/senseonics/model/CalibrationHelper;->getTitleForCalibrationUseFlag(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    .line 97
    invoke-virtual {v1}, Lcom/senseonics/events/CalibrationEventPoint;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v5, p1, v1, p2}, Lcom/senseonics/model/CalibrationHelper;->getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/senseonics/model/CalibrationHelper;->setJustSubmittedCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V

    .line 104
    :cond_2
    sget-object p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 108
    invoke-virtual {v1, v0}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 109
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0, v1}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isSendBloodGlucoseDataResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x95

    return v0
.end method
