.class public Lcom/senseonics/util/AccountConstants;
.super Ljava/lang/Object;
.source "AccountConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;,
        Lcom/senseonics/util/AccountConstants$MLDMSResult;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final FORCE_LOGOUT_BUNDLE_KEY:Ljava/lang/String;

.field private final GMT_DATETIME_INVALID:Ljava/lang/String;

.field public final TAG_CHECK_AND_UPDATE_PASSWORD_RESULT:Ljava/lang/String;

.field public final TAG_UPLOAD_SENSOR_INFO_RESULT:Ljava/lang/String;

.field private final Tag:Ljava/lang/String;

.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field public final checkAndUpdatePasswordWebserviceFunctionCall:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field public final getUserIDByUserEmailWebserviceFunctionCall:Ljava/lang/String;

.field private final kGetUploadResultTagEnd:Ljava/lang/String;

.field private final kGetUploadResultTagStart:Ljava/lang/String;

.field private final kGetUserIDTagEnd:Ljava/lang/String;

.field private final kGetUserIDTagStart:Ljava/lang/String;

.field public final kUploadResultCount:I

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

.field public final uploadDeviceEventsWebserviceFunctionCall:Ljava/lang/String;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/senseonics/util/UserInfoSecureStorer;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2000-01-01T00:00:00"

    .line 67
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->GMT_DATETIME_INVALID:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/GetUserIDByUserEmail"

    .line 69
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->getUserIDByUserEmailWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    .line 70
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->uploadDeviceEventsWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    .line 71
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->checkAndUpdatePasswordWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "CheckAndUpdatePasswordResult"

    .line 74
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->TAG_CHECK_AND_UPDATE_PASSWORD_RESULT:Ljava/lang/String;

    const-string v0, "UploadSensorInfoResult"

    .line 75
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->TAG_UPLOAD_SENSOR_INFO_RESULT:Ljava/lang/String;

    const-string v0, "<GetUserIDByUserEmailResult>"

    .line 77
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUserIDTagStart:Ljava/lang/String;

    const-string v0, "</GetUserIDByUserEmailResult>"

    .line 78
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUserIDTagEnd:Ljava/lang/String;

    const-string v0, "<b:int>"

    .line 79
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUploadResultTagStart:Ljava/lang/String;

    const-string v0, "</b:int>"

    .line 80
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->kGetUploadResultTagEnd:Ljava/lang/String;

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lcom/senseonics/util/AccountConstants;->kUploadResultCount:I

    const-string v0, "DMS(AccountConstants)"

    .line 82
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->Tag:Ljava/lang/String;

    const-string v0, "force_logout"

    .line 83
    iput-object v0, p0, Lcom/senseonics/util/AccountConstants;->FORCE_LOGOUT_BUNDLE_KEY:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 149
    iput-object p3, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    .line 150
    iput-object p4, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 151
    iput-object p5, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 152
    iput-object p6, p0, Lcom/senseonics/util/AccountConstants;->alertHelper:Lcom/senseonics/util/AlertHelper;

    return-void
.end method

.method private IntArrayToHexString([I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1036
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntToHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private IntToHexString(I)Ljava/lang/String;
    .locals 3

    const-string v0, "%02x"

    const/4 v1, 0x1

    .line 1044
    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkIfValidString(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkIfVersionChanged(Ljava/lang/String;)Z
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getSettingsForString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    .line 395
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    .line 398
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v4

    :goto_0
    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const-string v4, ""

    .line 404
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 406
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 410
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-ne v1, v2, :cond_4

    .line 418
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Logout"

    invoke-direct {v0, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Reason"

    const-string v3, "V Change"

    .line 419
    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 418
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    :cond_4
    return v1
.end method

.method private generateSalt(I)[B
    .locals 1

    .line 1349
    new-array p1, p1, [B

    .line 1350
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1351
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method private getAllEvents(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 601
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 603
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/db/DatabaseManager;->getAllDMSEventPointsStartingFrom(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 617
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 618
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v2, v3, :cond_0

    .line 620
    :cond_1
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v2

    .line 621
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 624
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "98"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, p1

    const/4 p1, 0x0

    .line 643
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    const-string v3, ""

    .line 646
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/events/EventPoint;

    .line 649
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    .line 650
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v7

    add-int/lit8 p1, p1, 0x1

    .line 652
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v4

    .line 654
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v8

    .line 655
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0000"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v1

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "000000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 683
    :cond_3
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 685
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getBase64ExerciseEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, p2

    const/4 p2, 0x0

    .line 839
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const-string v3, ""

    .line 842
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/events/EventPoint;

    .line 843
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    .line 844
    check-cast v4, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v4}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v7

    .line 846
    invoke-virtual {v7}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->getSubType()I

    move-result v7

    .line 847
    invoke-virtual {v4}, Lcom/senseonics/events/ExerciseEventPoint;->getDuration()I

    move-result v4

    add-int/lit8 v8, v0, 0x1

    .line 850
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 851
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    move v0, v8

    goto/16 :goto_0

    :cond_0
    return-object v2
.end method

.method private getBase64HealthEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, p2

    const/4 p2, 0x0

    .line 792
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const-string v3, ""

    .line 795
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/events/EventPoint;

    .line 796
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    .line 798
    check-cast v4, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v4}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v7

    .line 800
    invoke-virtual {v7}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v7

    .line 801
    invoke-virtual {v4}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v4

    .line 802
    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->getSubType()I

    move-result v4

    add-int/lit8 v8, v0, 0x1

    .line 805
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 806
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 810
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v5, 0x8

    aput v5, v0, v1

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    move v0, v8

    goto/16 :goto_0

    :cond_0
    return-object v2
.end method

.method private getBase64InsulinEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, p2

    const/4 p2, 0x0

    .line 744
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const-string v3, ""

    .line 747
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/events/EventPoint;

    .line 748
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    .line 749
    check-cast v4, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v4}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v7

    .line 751
    invoke-virtual {v7}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v7

    .line 752
    invoke-virtual {v4}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v4

    const/high16 v8, 0x41200000    # 10.0f

    mul-float v4, v4, v8

    float-to-int v4, v4

    add-int/lit8 v8, v0, 0x1

    .line 755
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 756
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v5, v0, [I

    aput v0, v5, v1

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    move v0, v8

    goto/16 :goto_0

    :cond_0
    return-object v2
.end method

.method private getBase64MealEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, p2

    const/4 p2, 0x0

    .line 695
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const-string v3, ""

    .line 698
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/events/EventPoint;

    .line 699
    invoke-virtual {v4}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    .line 700
    check-cast v4, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v4}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v7

    .line 702
    invoke-virtual {v7}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v7

    .line 703
    invoke-virtual {v4}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v4

    add-int/lit8 v8, v0, 0x1

    .line 706
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 707
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v5, 0x2

    aput v5, v0, v1

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    move v0, v8

    goto/16 :goto_0

    :cond_0
    return-object v2
.end method

.method private getBase64PatientEventData(I)Ljava/lang/String;
    .locals 10

    .line 883
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 884
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 885
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 886
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x28

    const/16 v3, 0x190

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/senseonics/db/DatabaseManager;->getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    .line 894
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 895
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/events/EventPoint;

    .line 896
    sget-object v7, Lcom/senseonics/util/AccountConstants$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 908
    :pswitch_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 905
    :pswitch_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 902
    :pswitch_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 899
    :pswitch_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 914
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "9E"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 919
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 920
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 921
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v9, v5, v6

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    .line 923
    invoke-static {v9}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v8

    .line 928
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 932
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/senseonics/util/AccountConstants;->getBase64MealEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, p1

    .line 935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v5}, Lcom/senseonics/util/AccountConstants;->getBase64InsulinEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v5, v6

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v5}, Lcom/senseonics/util/AccountConstants;->getBase64HealthEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v5, v7

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v5}, Lcom/senseonics/util/AccountConstants;->getBase64ExerciseEventLogData(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 943
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 944
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/16 v1, 0xb

    .line 515
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 516
    iget-object p1, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getSensorLogsStartingFrom(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object p1

    .line 519
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "8C"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "010000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 527
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const-string v3, ""

    .line 530
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/graph/util/Glucose;

    .line 533
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v5

    .line 534
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v7

    .line 535
    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v8

    .line 540
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v9

    .line 541
    invoke-direct {p0, v5, v6}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v5

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "00"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v5}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v5

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v5}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v5

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v5}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v5

    .line 569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v5}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v5

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4, v5}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v4

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "000000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 590
    :cond_0
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 592
    new-instance p2, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method private getDateArrayFromGMTTimeStamp(J)[I
    .locals 2

    .line 483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 486
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, 0x1

    .line 488
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    .line 489
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x5

    .line 490
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 492
    invoke-static {p2, v1, p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object p1

    return-object p1
.end method

.method private getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 953
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 954
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v3

    .line 955
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getCustomField2()I

    move-result v4

    .line 956
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v5

    .line 958
    invoke-static {v2, v3, v4, v5}, Lcom/senseonics/util/Utils;->getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 961
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v2

    .line 962
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "93"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0100"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 974
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 977
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move-object v1, p1

    const/4 p1, 0x0

    .line 981
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    const-string v2, ""

    .line 984
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/events/EventPoint;

    .line 987
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 988
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v6

    add-int/lit8 p1, p1, 0x1

    .line 990
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    .line 991
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getCustomField()I

    move-result v8

    .line 992
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getCustomField2()I

    move-result v9

    .line 993
    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v3

    .line 994
    invoke-static {v7, v8, v9, v3}, Lcom/senseonics/util/Utils;->getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I

    move-result v3

    .line 996
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getDateArrayFromGMTTimeStamp(J)[I

    move-result-object v7

    .line 997
    invoke-direct {p0, v4, v5}, Lcom/senseonics/util/AccountConstants;->getTimeArrayFromGMTTimeStamp(J)[I

    move-result-object v4

    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v3, v2, p2

    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1024
    :cond_2
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 1026
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 1510
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 1511
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1513
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    iget-object v1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 1515
    invoke-static {v2}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCriticalFaultFetchLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v13, p0, Lcom/senseonics/util/AccountConstants;->alertHelper:Lcom/senseonics/util/AlertHelper;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v4, p1

    .line 1513
    invoke-virtual/range {v0 .. v13}, Lcom/senseonics/db/DatabaseManager;->getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getTimeArrayFromGMTTimeStamp(J)[I
    .locals 2

    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 501
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 p1, 0xb

    .line 503
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 p2, 0xc

    .line 504
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v1, 0xd

    .line 505
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 507
    invoke-static {p1, p2, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p1

    return-object p1
.end method

.method private setDefaultEnableAutoSync()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountEnableAutoSync"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public FormattedGMTDateAndTimeString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "2000-01-01T00:00:00"

    return-object p1

    .line 1464
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 1465
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1466
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public HasValidAccountInfo()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUserIDFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public OpenCreateAccountURL(Landroid/content/Context;)V
    .locals 2

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://www.eversensedms.com/Account/Register"

    .line 461
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 463
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OpenForgotPasswordURL(Landroid/content/Context;)V
    .locals 3

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://www.eversensedms.com/Account/ForgotPassword"

    .line 471
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 473
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    :goto_0
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Forgot Password"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Info"

    const-string v2, "User Clicked"

    .line 479
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 478
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;
    .locals 3

    .line 1049
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1051
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1052
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1056
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data32BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    .line 1057
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->IntArrayToHexString([I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1063
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .line 1322
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v1, 0xea60

    .line 1324
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1325
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "UTF-8"

    .line 1326
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1328
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1330
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1331
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1332
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1333
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, p1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1335
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1337
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public fetchSensorIDFromModel()Ljava/lang/String;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public fetchTxNameFromModel()Ljava/lang/String;
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public fetchTxSerialNoFromModel()Ljava/lang/String;
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2

    .line 1313
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v1, "application/soap+xml; charset=utf-8"

    .line 1314
    invoke-virtual {v0, p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 1315
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method public generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1360
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 v0, 0x10

    .line 1361
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->generateSalt(I)[B

    move-result-object v0

    .line 1363
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x3e8

    const/16 v3, 0x100

    invoke-direct {v1, p1, v0, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/4 v2, 0x0

    .line 1364
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([CC)V

    :try_start_0
    const-string p1, "PBKDF2WithHmacSHA1"

    .line 1367
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 1368
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/16 v3, 0x20

    .line 1370
    new-array v4, v3, [B

    .line 1371
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1373
    array-length p1, v0

    const/4 v3, 0x1

    add-int/2addr p1, v3

    array-length v5, v4

    add-int/2addr p1, v5

    new-array p1, p1, [B

    .line 1374
    aput-byte v2, p1, v2

    .line 1375
    array-length v5, v0

    invoke-static {v0, v2, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    array-length v0, v0

    add-int/2addr v0, v3

    array-length v3, v4

    invoke-static {v4, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 1385
    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 1384
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    return-object p1
.end method

.method public generateCheckAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope \nxmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction</wsa:Action><wsa:To>%wsaTo</wsa:To></soap:Header><soap:Body>\n<tem:CheckAndUpdatePassword>\n<tem:Email>%userEmail</tem:Email>\n<tem:PasswordHash>%pwdHash</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary</tem:PasswordBinary>\n</tem:CheckAndUpdatePassword>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction"

    const-string v2, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    .line 1088
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%wsaTo"

    const-string v2, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 1089
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%userEmail"

    .line 1090
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%pwdHash"

    .line 1091
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%pwdBinary"

    .line 1092
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateGetUserIDByEmailRequestString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction</wsa:Action><wsa:To>%wsaTo</wsa:To></soap:Header>\n<soap:Body>\n<tem:GetUserIDByUserEmail>\n<tem:userEmail>%userEmail</tem:userEmail>\n</tem:GetUserIDByUserEmail>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction"

    const-string v2, "http://tempuri.org/IAgentServerService/GetUserIDByUserEmail"

    .line 1114
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%wsaTo"

    const-string v2, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 1115
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%userEmail"

    .line 1118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-nez p7, :cond_0

    .line 1204
    invoke-direct {p0, p5, p6}, Lcom/senseonics/util/AccountConstants;->getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-direct {p0, p5}, Lcom/senseonics/util/AccountConstants;->getAllEvents(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1208
    invoke-direct {p0, v1}, Lcom/senseonics/util/AccountConstants;->getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-direct {p0, p5}, Lcom/senseonics/util/AccountConstants;->getBase64PatientEventData(I)Ljava/lang/String;

    move-result-object p5

    .line 1214
    invoke-direct {p0, v1, p6}, Lcom/senseonics/util/AccountConstants;->getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    const-string v0, "jAABAAAAAAA="

    const-string v2, "mAEAAAAA"

    const-string p5, "ngEAAAA="

    const-string p6, "kwEAAAAAAAAAAA=="

    :goto_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\">\n<wsa:Action>%wsaAction</wsa:Action>\n<wsa:To>%wsaTo</wsa:To>\n</soap:Header>\n<soap:Body>\n<tem:UploadDeviceEvents_CareApp>\n<tem:userID>%userID</tem:userID>\n<tem:PasswordHash>%pwdHash</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary</tem:PasswordBinary>\n<tem:deviceType>%devicetype</tem:deviceType>\n<tem:deviceName>%devicename</tem:deviceName>\n<tem:deviceID>%deviceID</tem:deviceID>\n<tem:data xmlns:b=\"http://schemas.microsoft.com/2003/10/Serialization/Arrays\" xmlns:i=\"http://www.w3.org/2001/XMLSchema-instance\">\n<b:base64Binary>%timezoneoffset</b:base64Binary>\n<b:base64Binary>%sensorglucose</b:base64Binary>\n<b:base64Binary>%manualglucose</b:base64Binary>\n<b:base64Binary>%patientevents</b:base64Binary>\n<b:base64Binary>%alertalarm</b:base64Binary>\n</tem:data>\n</tem:UploadDeviceEvents_CareApp>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v3, "%wsaAction"

    const-string v4, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    .line 1256
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%wsaTo"

    const-string v4, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 1257
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%userID"

    .line 1259
    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%pwdHash"

    .line 1260
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%pwdBinary"

    .line 1261
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%devicetype"

    const-string p3, "SMSIMeter"

    .line 1262
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%devicename"

    const-string p3, "Smart Transmitter (Android)"

    .line 1263
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p7, :cond_1

    const-string p2, "%deviceID"

    .line 1266
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "%deviceID"

    const-string p3, ""

    .line 1269
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "%timezoneoffset"

    .line 1272
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%sensorglucose"

    .line 1273
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%manualglucose"

    .line 1274
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%patientevents"

    .line 1275
    invoke-virtual {p1, p2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%alertalarm"

    .line 1276
    invoke-virtual {p1, p2, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccountAccessTokenFromPreference()Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountAccessToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountAccessTokenTimeFromPreference()Ljava/lang/Long;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAccountEnableAutoSync()Z
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    .line 287
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountEnableAutoSync"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountFirstNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountFirstName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountLastNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountLastName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPasswordFromPreference()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountProfileImageFromPreference()Ljava/lang/String;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountProfileImage"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountRealNameFromPreference()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountFirstNameFromPreference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountLastNameFromPreference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountRefreshTokenFromPreference()Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountRefreshToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUserIDFromPreference()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUsernameFromPreference()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase64_Sensor_BGM_Patient_Alert_Data(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/AccountConstants;->getBase64SensorData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->getAllEvents(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1397
    invoke-direct {p0, v2}, Lcom/senseonics/util/AccountConstants;->getBase64BGMData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1400
    invoke-direct {p0, p1}, Lcom/senseonics/util/AccountConstants;->getBase64PatientEventData(I)Ljava/lang/String;

    move-result-object p1

    .line 1403
    invoke-direct {p0, v2, p2}, Lcom/senseonics/util/AccountConstants;->getGlucoseAlertsData(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1405
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCoveredUserName()Ljava/lang/String;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "*****"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    .line 372
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-gt v0, v3, :cond_1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 375
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-gt v0, v4, :cond_2

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getCoveredUsernameIfExists()Ljava/lang/String;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDiagnosticDataLastSyncedOnDateTimeFromPreference()J
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlucoseUnit()I
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentGlucoseUnit"

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastCriticalFaults()Ljava/lang/String;
    .locals 10

    .line 1472
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCriticalFaultTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->getList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    .line 1475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 1477
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/util/Notification;

    .line 1479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1480
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1482
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v6

    .line 1483
    invoke-virtual {v4}, Lcom/senseonics/util/Notification;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    .line 1485
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1487
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v7

    .line 1489
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v9, :cond_0

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v9, :cond_1

    .line 1491
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1495
    :cond_1
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v9, :cond_3

    .line 1497
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1500
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/senseonics/util/AccountConstants;->FormattedGMTDateAndTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_4

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public getLastSyncedOnDateTimeFromPreference()J
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncedOnDateTimeStringFromPreference()Ljava/lang/String;
    .locals 4

    .line 270
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 272
    sget-object v0, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    return-object v0

    .line 274
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 276
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSyncedStartDateTimeFromPreference()J
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedStartDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberListLastFetchedOnDateTimeFromPreference()J
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "MemberListLastFetchedOnDateTime"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMigrationPasswordUpdated()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountMigrationPasswordUpdated"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSyncDaysFromPreference()I
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountSyncDays"

    sget v2, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->getSettingsForDefault(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUploadResultFromResponse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const-string v2, "<b:int>"

    .line 1290
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "</b:int>"

    .line 1291
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    const-string v4, "<b:int>"

    .line 1295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "<b:int>"

    .line 1300
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "</b:int>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getUserIDFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<GetUserIDByUserEmailResult>"

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "</GetUserIDByUserEmailResult>"

    .line 1131
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    const-string v2, "<GetUserIDByUserEmailResult>"

    .line 1135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "N/A"

    :goto_0
    return-object p1
.end method

.method public initAccountPreferences()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountSyncDays"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountSyncDays"

    sget v2, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountLastSyncedOnDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedOnDateTime"

    invoke-static {v0, v3, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "AccountLastSyncedStartDateTime"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedStartDateTime"

    invoke-static {v0, v3, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-static {v0, v3, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountSyncInterval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountSyncInterval"

    const-string v2, "30 Mins"

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_4
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedInIfNotExist()V

    .line 334
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    return-void
.end method

.method public initAccountSecurePreference()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountRefreshToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountRefreshToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountAccessToken"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountAccessToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public isAccountLoggedIn()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareRequestStringForUploadingData(I)Ljava/lang/String;
    .locals 8

    .line 1150
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountUserIDFromPreference()Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1153
    invoke-virtual {p0, v0}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v0, ""

    .line 1155
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v4

    .line 1162
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    .line 1156
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/util/AccountConstants;->generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public prepareRequestStringForUploadingLoginData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1173
    invoke-virtual {p0, p1}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-virtual {p0, p1}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string p1, ""

    .line 1176
    invoke-virtual {v2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v3, :cond_0

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    .line 1177
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/util/AccountConstants;->generateUploadDeviceDataRequestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public presetLoggedInAndEnableAutoSync()V
    .locals 4

    .line 428
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedInIfNotExist()V

    .line 429
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSyncIfNotExist()V

    const-string v0, "VersionOfLastRun"

    .line 432
    invoke-direct {p0, v0}, Lcom/senseonics/util/AccountConstants;->checkIfVersionChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSync()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Logout"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Reason"

    const-string v3, "No Valid Account Info"

    .line 437
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 436
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetDiagnosticDataLastSyncedOnInPreference()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountDiagnosticDataLastSyncedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetLastSyncedOnInPreference()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetLastSyncedStartInPreference()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountLastSyncedStartDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public resetMemberListLastFetchedOnInPreference()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "MemberListLastFetchedOnDateTime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V
    .locals 4

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 242
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountDiagnosticDataLastSyncedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToLastSyncedOnInPreference()V
    .locals 4

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 214
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToLastSyncedStartInPreference()V
    .locals 4

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 228
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "AccountLastSyncedStartDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentDateTimeToMemberListLastFetchedOnInPreference()V
    .locals 4

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 256
    iget-object v2, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v3, "MemberListLastFetchedOnDateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaultEnableAutoSyncIfNotExist()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountEnableAutoSync"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultEnableAutoSync()V

    :cond_0
    return-void
.end method

.method public setDefaultLoggedIn()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultLoggedInIfNotExist()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountIsLoggedIn"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setDefaultLoggedIn()V

    :cond_0
    return-void
.end method

.method public setMigrationPasswordUpdated(Z)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/senseonics/util/AccountConstants;->context:Landroid/content/Context;

    const-string v1, "AccountMigrationPasswordUpdated"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1343
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
