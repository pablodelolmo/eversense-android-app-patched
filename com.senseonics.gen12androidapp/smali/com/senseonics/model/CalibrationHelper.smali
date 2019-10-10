.class public Lcom/senseonics/model/CalibrationHelper;
.super Ljava/lang/Object;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;,
        Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final RETRY_CAL_BLINDED_WAIT_HOURS:I

.field private final RETRY_CAL_NOT_READY_WAIT_MINUTES:I

.field private final RETRY_CAL_RATE_WAIT_HOURS:I

.field private final RETRY_CAL_REJECTED_WAIT_MINUTES:I

.field private final RETRY_CAL_TOO_DIFFERENT_WAIT_HOURS:I

.field private final RETRY_CAL_TOO_HIGH_WAIT_HOURS:I

.field private final RETRY_CAL_TOO_LOW_WAIT_HOURS:I

.field private context:Landroid/content/Context;

.field private justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_LOW_WAIT_HOURS:I

    const/4 v1, 0x5

    .line 17
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_REJECTED_WAIT_MINUTES:I

    const/4 v1, 0x6

    .line 18
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_BLINDED_WAIT_HOURS:I

    const/16 v1, 0x1e

    .line 19
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_NOT_READY_WAIT_MINUTES:I

    .line 20
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_DIFFERENT_WAIT_HOURS:I

    .line 21
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_RATE_WAIT_HOURS:I

    .line 22
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_HIGH_WAIT_HOURS:I

    .line 29
    iput-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getJustSubmittedCalibrationEvent()Lcom/senseonics/events/CalibrationEventPoint;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;

    return-object v0
.end method

.method public getShortTitleForCalibrationUseFlag(I)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getShortTitle()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 5

    .line 49
    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getMessage()I

    move-result v0

    const-string v1, ""

    .line 53
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$1;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_USE_FLAG:[I

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 105
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 102
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    const/4 p3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 99
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    const/16 p3, 0x1e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxCalibrationThreshold()I

    move-result p3

    invoke-static {v1, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    .line 88
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    :pswitch_6
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMinCalibrationThreshold()I

    move-result p3

    invoke-static {v1, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :pswitch_7
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 66
    invoke-static {v1, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    .line 64
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_8
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDuration()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleForCalibrationUseFlag(I)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getTitle()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setJustSubmittedCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;

    return-void
.end method
