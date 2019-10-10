.class public Lcom/senseonics/events/AlertEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "AlertEventActivity.java"


# instance fields
.field private dateTextView:Landroid/widget/TextView;

.field protected eventTypeTextView:Landroid/widget/TextView;

.field private glucoseUnit:Ljava/lang/String;

.field private notificationECNoTextView:Landroid/widget/TextView;

.field private notificationImageView:Landroid/widget/ImageView;

.field private thresholdTextView:Landroid/widget/TextView;

.field private unitGlucoseTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f00af

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/senseonics/events/AlertEventActivity;->hasSaveButton:Z

    .line 32
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0088

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09010c

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->dateTextView:Landroid/widget/TextView;

    const p1, 0x7f09010d

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e4

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ad

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e5

    .line 37
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationImageView:Landroid/widget/ImageView;

    const p1, 0x7f090124

    .line 38
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->unitGlucoseTextView:Landroid/widget/TextView;

    .line 41
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->currentDate:Ljava/util/Calendar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->dateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/senseonics/util/Utils;->formatWeekDateTimeForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt p1, v0, :cond_0

    .line 48
    sget-object p1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->unitGlucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventActivity;->update()V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 13

    .line 60
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    .line 61
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    .line 64
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisHighGlocosePercent()I

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisLowGlucoseValueMgDl()I

    move-result v2

    .line 66
    iget-object v3, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisHighPredictiveGlocosePercent()I

    move-result v3

    .line 67
    iget-object v4, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisLowPredictiveGlucoseValueMgDl()I

    move-result v4

    .line 70
    iget-object v5, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v5}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v5

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const v10, 0x7f0f0023

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    if-ne v5, v6, :cond_3

    .line 71
    iget-object v3, p0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_1

    .line 74
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    int-to-float v0, v0

    mul-float v1, v1, v0

    div-float/2addr v1, v9

    .line 77
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    float-to-double v1, v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v2

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(+/- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v0, v2

    cmpl-double v0, v0, v11

    if-lez v0, :cond_2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v1

    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(+/- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 100
    :cond_3
    iget-object v5, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v5}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v5

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v5, v6, :cond_7

    .line 101
    iget-object v3, p0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_5

    .line 103
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    int-to-float v0, v0

    mul-float v1, v1, v0

    div-float/2addr v1, v9

    .line 106
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    float-to-double v1, v1

    cmpl-double v1, v1, v11

    if-lez v1, :cond_4

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(+/- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_2
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v0, v2

    cmpl-double v0, v0, v11

    if-lez v0, :cond_6

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(+/- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_3
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 130
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v1, :cond_c

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v1, :cond_a

    .line 133
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v0

    int-to-float v1, v3

    mul-float v0, v0, v1

    div-float/2addr v0, v9

    .line 136
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    float-to-double v2, v0

    cmpl-double v0, v2, v11

    if-lez v0, :cond_9

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(+/- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_4
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v0, v4

    cmpl-double v0, v0, v11

    if-lez v0, :cond_b

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(+/- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_5
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
