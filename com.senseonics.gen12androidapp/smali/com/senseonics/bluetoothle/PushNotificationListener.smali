.class Lcom/senseonics/bluetoothle/PushNotificationListener;
.super Ljava/lang/Object;
.source "PushNotificationListener.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private dmsStateModelSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

.field private dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

.field private dmsSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private myCircleMemberManager:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSSyncManager;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/model/SyncModel;Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/mycircle/home/MyCircleMemberManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 83
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->context:Landroid/content/Context;

    .line 84
    iput-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, p3

    .line 85
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    move-object v2, p4

    .line 86
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    move-object v2, p5

    .line 87
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move-object v2, p6

    .line 88
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    move-object v2, p7

    .line 89
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    move-object v2, p8

    .line 90
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v2, p9

    .line 91
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v2, p10

    .line 92
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p11

    .line 93
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    move-object v2, p12

    .line 94
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    move-object/from16 v2, p14

    .line 95
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    move-object/from16 v2, p13

    .line 96
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

    move-object/from16 v2, p15

    .line 97
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    move-object/from16 v2, p16

    .line 98
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncModel:Lcom/senseonics/model/SyncModel;

    move-object/from16 v2, p17

    .line 99
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

    move-object/from16 v2, p18

    .line 100
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->myCircleMemberManager:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    move-object/from16 v2, p19

    .line 101
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 102
    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private appendInt([II)[I
    .locals 2

    .line 717
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 718
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 719
    aput p2, p1, v0

    return-object p1
.end method

.method private checkIfGlucosePushNotification(II)I
    .locals 1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x41

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method private checkPushNotificationCRC([IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 724
    new-array v1, v0, [I

    const-string v2, "5.12"

    .line 728
    invoke-virtual {p4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_0

    add-int/lit8 p2, p2, 0x4

    .line 730
    aget p4, p1, v0

    invoke-direct {p0, p4, p2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkIfGlucosePushNotification(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 734
    aget v2, p1, p4

    invoke-direct {p0, v1, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->appendInt([II)[I

    move-result-object v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 737
    :cond_1
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p4

    .line 738
    invoke-static {p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p4

    .line 740
    aget v1, p4, v0

    aget v2, p1, p2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    aget p4, p4, v3

    add-int/2addr p2, v3

    aget p1, p1, p2

    if-eq p4, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    const-string p1, "CHECK_CORRECTION"

    .line 746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " CRC good? "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkPushNotificationLength(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "5.12"

    .line 755
    invoke-virtual {p5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p5

    if-ltz p5, :cond_0

    add-int/lit8 p2, p2, 0x4

    .line 757
    invoke-direct {p0, p3, p2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkIfGlucosePushNotification(II)I

    move-result p2

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "CHECK_CORRECTION"

    .line 763
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " msgLength:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " correctLength:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    const-string p2, "CHECK_CORRECTION"

    .line 767
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " length good? "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private checkResponseLengthAndCRC([IILjava/lang/String;)Z
    .locals 8

    .line 796
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getDefaultFWVersion()Ljava/lang/String;

    move-result-object v6

    const-string v0, "Check"

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FW version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 801
    :try_start_0
    array-length v1, p1

    aget v3, p1, v7

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkPushNotificationLength(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 806
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkPushNotificationCRC([IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v7

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    return v7
.end method

.method private decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 566
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    .line 563
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultFWVersion()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "5.12"

    :cond_0
    return-object v0
.end method

.method private getPushNotificationFlag([II)I
    .locals 1

    .line 785
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getDefaultFWVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5.12"

    .line 787
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private isCalibrationAlarmOrAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "CalibrationAlarmOrAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 651
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGlucoseLevelAlarmPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "GlucoseLevelAlarmPushNotificationCommand"

    const/4 v1, 0x4

    .line 626
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGlucoseLevelAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "GlucoseLevelAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 634
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGlucoseRateAlertOrPredictiveAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "GlucoseRateAlertOrPredictiveAlertPushNotificationCommand"

    const/4 v1, 0x5

    .line 642
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isKeepAliveCommandCorrect([I)Z
    .locals 2

    const-string v0, "KeepAliveCommand"

    const/4 v1, 0x3

    .line 700
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isResponseIdInRange(I)Z
    .locals 1

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x60

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSensorHWStatusAlarmOrAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "SensorHWStatusAlarmOrAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 667
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isSensorReadAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "SensorReadAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 693
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isSensorReplacementAlarmOrAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "SensorReplacementAlarmOrAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 659
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTransmitterBatteryAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "TransmitterBatteryAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 685
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTransmitterStatusAlarmOrAlertPushNotificationCommandCorrect([I)Z
    .locals 2

    const-string v0, "TransmitterStatusAlarmOrAlertPushNotificationCommand"

    const/4 v1, 0x4

    .line 676
    invoke-direct {p0, p1, v1, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private postCareRemoteNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gcm/RegistrationIDRepository;->getMyFollowerGCMRegIDsThenPostGCM(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V

    return-void
.end method

.method private saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;
    .locals 7

    .line 600
    new-instance v6, Lcom/senseonics/events/AlertEventPoint;

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    int-to-long p1, p5

    .line 602
    invoke-virtual {v6, p1, p2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 604
    invoke-virtual {v6, p1}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    const/4 p1, 0x0

    .line 605
    invoke-virtual {v6, p1}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 606
    invoke-virtual {v6, p6}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    .line 607
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v6, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v6
.end method

.method private saveCalibrationAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;[I)Lcom/senseonics/events/EventPoint;
    .locals 2

    .line 591
    new-instance v0, Lcom/senseonics/events/EventPoint;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p3}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object p3

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-direct {v0, p3, v1, p1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    const-string p1, ""

    .line 592
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 594
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method

.method private saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;
    .locals 2

    .line 575
    new-instance v0, Lcom/senseonics/events/EventPoint;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p6}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object p6

    invoke-direct {v0, p6, p5, p1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 576
    invoke-virtual {v0, p3}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    int-to-long p3, p4

    .line 578
    invoke-virtual {v0, p3, p4}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 579
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 580
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, p1, :cond_0

    .line 581
    sget p1, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 584
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method

.method private setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 1

    .line 612
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 615
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p1

    .line 614
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_0
    return-void
.end method

.method private shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z
    .locals 5

    .line 531
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->isCritical()Z

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    .line 533
    const-class v2, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " | isCritical: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | isVibrationEnabled: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 536
    const-class p1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--- QUIET: DND is on ---"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 13

    .line 106
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    .line 108
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x43

    if-ne v4, v1, :cond_5

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isCalibrationAlarmOrAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 111
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 114
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 118
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    .line 119
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPMSPInfo()V

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 123
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 127
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 128
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveCalibrationAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2, v4}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 138
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushing dialog into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/CalibrationRequestEvent;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/senseonics/events/CalibrationRequestEvent;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    :cond_2
    :goto_0
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v0, :cond_4

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    :cond_4
    :goto_1
    move-object v0, v1

    goto/16 :goto_9

    :cond_5
    const/16 v1, 0x42

    .line 152
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_e

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isGlucoseRateAlertOrPredictiveAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 153
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 155
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 157
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 158
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 162
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 163
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    .line 165
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v7

    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v2

    .line 166
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v4, v5}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 168
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 169
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v4

    if-nez v4, :cond_8

    .line 170
    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v4, :cond_6

    .line 171
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto :goto_2

    .line 172
    :cond_6
    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v4, :cond_7

    .line 173
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 175
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    goto :goto_3

    .line 177
    :cond_8
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lcom/senseonics/events/RateAlertEvent;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/senseonics/events/RateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v0, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    move-object v0, v1

    .line 189
    :cond_a
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 190
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 194
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 195
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    .line 197
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v7

    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v2

    .line 200
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v5}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 202
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v4, v5}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 204
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 205
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v4

    if-nez v4, :cond_d

    .line 206
    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v4, :cond_b

    .line 207
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto :goto_4

    .line 208
    :cond_b
    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v4, :cond_c

    .line 209
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 212
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    goto/16 :goto_1

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/PredictiveRateAlertEvent;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/senseonics/events/PredictiveRateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v0, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x40

    .line 226
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    const/4 v5, 0x4

    if-ne v1, v4, :cond_10

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isGlucoseLevelAlarmPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 227
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 229
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 230
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v1, v1, v4

    .line 231
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v8

    .line 233
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    .line 234
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v5

    aget v5, v5, v4

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    add-int/2addr v4, v2

    aget v2, v6, v4

    shl-int/lit8 v2, v2, 0x8

    or-int v10, v5, v2

    if-eqz v8, :cond_23

    .line 237
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 240
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 245
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2, v4}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 247
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 248
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_f

    .line 249
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 250
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 252
    :cond_f
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/AlertOrAlarmEvent;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/senseonics/events/AlertOrAlarmEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_10
    const/16 v1, 0x41

    .line 263
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_12

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isGlucoseLevelAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 264
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 266
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 267
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v1, v1, v4

    .line 268
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v8

    .line 270
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    .line 271
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v5

    aget v5, v5, v4

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    add-int/2addr v4, v2

    aget v2, v6, v4

    shl-int/lit8 v2, v2, 0x8

    or-int v10, v5, v2

    if-eqz v8, :cond_23

    .line 274
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 277
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 282
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2, v4}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 284
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 285
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_11

    .line 286
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 287
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 289
    :cond_11
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/AlertOrAlarmEvent;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/senseonics/events/AlertOrAlarmEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_12
    const/16 v1, 0x47

    .line 295
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_14

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isTransmitterBatteryAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 296
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 298
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 299
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 300
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 304
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v5

    sget-object v7, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    const/4 v8, -0x1

    sget v9, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v10

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 305
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 307
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 308
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_13

    .line 309
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 310
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_1

    .line 312
    :cond_13
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x45

    .line 317
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_18

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorHWStatusAlarmOrAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 318
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 320
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 321
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v1, v1, v4

    .line 322
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v4, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 326
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v10

    .line 327
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v6

    const-string v8, ""

    const/4 v9, -0x1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v11

    move-object v5, p0

    move-object v7, v1

    invoke-direct/range {v5 .. v11}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 328
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 331
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v4, :cond_15

    .line 333
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v5}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 342
    :cond_15
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v4, :cond_16

    goto :goto_5

    :cond_16
    const/4 v2, 0x0

    .line 346
    :goto_5
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 347
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v4

    if-nez v4, :cond_17

    .line 348
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_1

    :cond_17
    if-eqz v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x44

    .line 358
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_1a

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorReplacementAlarmOrAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 359
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 361
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 362
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 363
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 367
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 368
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v7, ""

    const/4 v8, -0x1

    .line 371
    sget v9, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v10

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 374
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_19

    .line 376
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 377
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_1

    .line 379
    :cond_19
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1a
    const/16 v1, 0x46

    .line 392
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_1c

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isTransmitterStatusAlarmOrAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 393
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 395
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 396
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 397
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 400
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 401
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v5

    const-string v7, ""

    const/4 v8, -0x1

    sget v9, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v10

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 403
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 405
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 406
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_1

    .line 407
    :cond_1b
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_4

    .line 408
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1c
    const/16 v1, 0x49

    .line 420
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    if-ne v1, v4, :cond_21

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorReadAlertPushNotificationCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 421
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 423
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 424
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v1, v1, v4

    .line 425
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v4, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 429
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 431
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v0

    .line 432
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 434
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v4, :cond_1e

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v4, :cond_1d

    goto :goto_7

    :cond_1d
    :goto_6
    move v10, v0

    goto :goto_8

    .line 436
    :cond_1e
    :goto_7
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    .line 438
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v4, v5}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 439
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 443
    :cond_1f
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v5}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_6

    .line 446
    :goto_8
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v6

    const-string v8, ""

    const/4 v9, -0x1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v11

    move-object v5, p0

    move-object v7, v1

    invoke-direct/range {v5 .. v11}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 447
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 449
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-nez v2, :cond_20

    .line 451
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 452
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_1

    .line 454
    :cond_20
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_21
    const/16 v1, 0x50

    .line 467
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_23

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isKeepAliveCommandCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 469
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/KeepAliveReceivedEvent;

    invoke-direct {v2}, Lcom/senseonics/events/KeepAliveReceivedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->turnOffClinicalModeIfNeeded(Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V

    .line 473
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->turnOffTempProfileIfNeeded()V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-DMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> Keep Alive <<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->startModelSync()V

    .line 488
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->startSync()V

    .line 491
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isResponseIdInRange(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 493
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 496
    :cond_22
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_23

    .line 497
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v1

    if-nez v1, :cond_23

    .line 498
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last_syncing_gmt_millis"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 499
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v3

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " PrepareSync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is it time to sync? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " if greater than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/senseonics/util/Utils;->AUTOMATIC_SYNC_ON_PUSH_INTERVAL:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", lastSyncMillis "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-wide v1, Lcom/senseonics/util/Utils;->AUTOMATIC_SYNC_ON_PUSH_INTERVAL:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_23

    .line 503
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    .line 521
    :cond_23
    :goto_9
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isResponseIdInRange(I)Z

    move-result p1

    if-eqz p1, :cond_24

    if-eqz v0, :cond_24

    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, p1, :cond_24

    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, p1, :cond_24

    .line 522
    const-class p1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set alert code for snooze:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSnooze(I)V

    .line 525
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadSensorGlucoseAlertsAndStatus()V

    :cond_24
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NewGlucoseSavedEvent;)V
    .locals 0

    return-void
.end method
