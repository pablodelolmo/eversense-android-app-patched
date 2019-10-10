.class public Lcom/senseonics/events/NotificationEventActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "NotificationEventActivity.java"


# instance fields
.field protected currentDate:Ljava/util/Calendar;

.field private dateTextView:Landroid/widget/TextView;

.field protected eventPoint:Lcom/senseonics/events/EventPoint;

.field private eventTypeTextView:Landroid/widget/TextView;

.field private notificationDetailsTextView:Landroid/widget/TextView;

.field private notificationECNoTextView:Landroid/widget/TextView;

.field private notificationImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 26
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0099

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->initializeLayout(I)Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/events/NotificationEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/events/NotificationEventActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09010d

    .line 32
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    const p1, 0x7f09010c

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->dateTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e3

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    const p1, 0x7f0901e5

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationImageView:Landroid/widget/ImageView;

    const p1, 0x7f0901e4

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/senseonics/events/NotificationEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v0, "eventPoint"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "eventPoint"

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    iput-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 44
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    :cond_1
    const-string v0, "eventPoint"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "eventPoint"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/senseonics/events/EventPoint;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 57
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    .line 61
    sget-object v2, Lcom/senseonics/events/NotificationEventActivity$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 93
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 94
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 97
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_2

    .line 100
    invoke-virtual {p0, v2}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f027d

    if-ne v2, v4, :cond_2

    .line 103
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 105
    invoke-static {p0, v3, v2}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v4, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4, v0, v1}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 84
    :pswitch_1
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v2, p1}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 85
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v4, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v0, v1}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :pswitch_2
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v0, :cond_3

    .line 68
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 69
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v1

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 72
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v1

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->dateTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 122
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->dateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/senseonics/util/Utils;->formatWeekDateTimeForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
