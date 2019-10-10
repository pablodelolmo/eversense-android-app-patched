.class public Lcom/senseonics/util/StateModelUploadUtility;
.super Ljava/lang/Object;
.source "StateModelUploadUtility.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final APP_ACTIVE:I

.field private final SENSOR_ACTIVE:I

.field private final TRANSMITTER_ACTIVE:I

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->TRANSMITTER_ACTIVE:I

    .line 26
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->SENSOR_ACTIVE:I

    .line 27
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->APP_ACTIVE:I

    .line 39
    iput-object p1, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 40
    iput-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    .line 223
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private boolToInt(Z)I
    .locals 0

    return p1
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, ""

    .line 244
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v5, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v0, v1, :cond_3

    aget-char v6, p0, v0

    if-eqz v4, :cond_1

    .line 245
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_1

    .line 249
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    .line 252
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method private static getCountryInformation()Ljava/lang/String;
    .locals 5

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 266
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 3

    .line 229
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 230
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {v1}, Lcom/senseonics/util/StateModelUploadUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/senseonics/util/StateModelUploadUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;
    .locals 9

    const-string v0, ""

    .line 173
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 176
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 179
    :goto_0
    new-instance v8, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;

    const-string v2, "Android OS"

    .line 181
    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 185
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility;->getCountryInformation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v8
.end method

.method public fetchStateModelCurrentValueInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->formatGMTDateAndTimeString(J)Ljava/lang/String;

    move-result-object v4

    .line 195
    new-instance v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 196
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v1

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/senseonics/util/Utils;->INT_MAX:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 198
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$ARROW_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 199
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 200
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getBatteryPercentForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;
    .locals 12

    .line 65
    new-instance v8, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 66
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 67
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 68
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v4, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 69
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/senseonics/util/AccountConstants;->FormattedGMTDateAndTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.4f,%.4f,%.4f,%.4f,%.4f"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 71
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 72
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedRefChannelMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 73
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedDriftMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 74
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedLowRefMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 75
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedSpike()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v6, v11

    .line 70
    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.4f"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 77
    invoke-virtual {v11}, Lcom/senseonics/model/TransmitterStateModel;->getEEP24MSP()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v8
.end method

.method public fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;
    .locals 58

    move-object/from16 v0, p0

    .line 85
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 86
    iget-object v2, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v2

    .line 87
    iget-object v3, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v3

    .line 88
    iget-object v4, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v4

    .line 89
    iget-object v5, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v5

    .line 90
    iget-object v6, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v6

    .line 91
    iget-object v7, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v7

    .line 92
    iget-object v8, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->isHighGlucoseAlarmsEnabled()Z

    move-result v8

    invoke-direct {v0, v8}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v8

    .line 93
    iget-object v9, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v9

    .line 94
    iget-object v10, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v10}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v10

    .line 95
    iget-object v11, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v11}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalNightTime()I

    move-result v11

    .line 96
    iget-object v12, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v12}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalNightTime()I

    move-result v12

    .line 97
    iget-object v13, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v13}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    invoke-direct {v0, v13}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v13

    .line 111
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result v14

    const/16 v16, 0x0

    if-eqz v14, :cond_0

    const-string v14, "-1"

    .line 116
    iget-object v15, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v15}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveHighAlertsActivated()Z

    move-result v15

    invoke-direct {v0, v15}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v15

    move-object/from16 v17, v14

    .line 117
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveLowAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v18, v14

    .line 118
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v19, v14

    .line 119
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v20, v14

    .line 120
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isRateFallingAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v21, v14

    .line 121
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isRateRisingAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v22, v14

    .line 122
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    .line 123
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v56, v9

    move/from16 v55, v10

    move/from16 v54, v11

    move/from16 v53, v12

    move/from16 v52, v13

    move-object/from16 v46, v14

    move v13, v15

    move-object/from16 v37, v17

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v9, v21

    move/from16 v57, v22

    move-object/from16 v45, v23

    const/4 v0, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    .line 127
    iget-object v15, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v15}, Lcom/senseonics/model/TransmitterStateModel;->isRateAlertsActivated()Z

    move-result v15

    invoke-direct {v0, v15}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v15

    move/from16 v24, v14

    .line 128
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v25, v14

    .line 129
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v17, "-1"

    const-string v18, "-1"

    move/from16 v56, v9

    move/from16 v55, v10

    move/from16 v54, v11

    move/from16 v53, v12

    move/from16 v52, v13

    move-object/from16 v37, v14

    move-object/from16 v45, v17

    move-object/from16 v46, v18

    move/from16 v14, v24

    move/from16 v0, v25

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v57, 0x0

    .line 140
    :goto_0
    new-instance v16, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 148
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 149
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 153
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 154
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 155
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 157
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move/from16 v0, v57

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move/from16 v0, v56

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move/from16 v0, v55

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move/from16 v0, v54

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move/from16 v0, v53

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move/from16 v0, v52

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v26, v16

    invoke-direct/range {v26 .. v51}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v16
.end method

.method public fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;
    .locals 14

    .line 46
    new-instance v13, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 47
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 48
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 50
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 51
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 53
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v8, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 54
    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/senseonics/util/AccountConstants;->FormattedGMTDateAndTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 55
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastCriticalFaults()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 56
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 57
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v13
.end method
