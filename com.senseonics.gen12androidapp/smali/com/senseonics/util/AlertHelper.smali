.class public Lcom/senseonics/util/AlertHelper;
.super Ljava/lang/Object;
.source "AlertHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private model:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method


# virtual methods
.method public calculateDaysSinceInsertion(JJ)I
    .locals 0

    sub-long/2addr p3, p1

    long-to-double p1, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x404e000000000000L    # 60.0

    div-double/2addr p1, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4038000000000000L    # 24.0

    div-double/2addr p1, p3

    double-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 24
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p3

    .line 27
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p4, :cond_0

    .line 28
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_0
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p4, :cond_1

    .line 30
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p4, :cond_2

    .line 32
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 37
    :goto_0
    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 2

    .line 42
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    .line 44
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_0

    .line 45
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 46
    :cond_0
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_1

    .line 47
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_2

    .line 49
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_2
    :goto_0
    return-object v0
.end method
