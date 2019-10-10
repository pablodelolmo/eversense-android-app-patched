.class public Lcom/senseonics/fragments/PopupGraphManagerView;
.super Landroid/widget/RelativeLayout;
.source "PopupGraphManagerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0085

    .line 38
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const-class p1, Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", my: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getHeight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDashTextBold(Landroid/widget/TextView;)V
    .locals 2

    .line 288
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public putEventPopUp(FLcom/senseonics/events/EventPoint;II)V
    .locals 13

    .line 168
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v1

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v1, v2, :cond_0

    .line 169
    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v1

    .line 171
    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :goto_1
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    .line 179
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 180
    sget-object v3, Lcom/senseonics/fragments/PopupGraphManagerView$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const v3, 0x7f080061

    const v6, 0x7f080065

    const v7, 0x7f080190

    const v8, 0x106000b

    const v9, 0x7f060051

    const v10, 0x7f06001f

    const v11, 0x7f060050

    const v12, 0x106000c

    packed-switch v2, :pswitch_data_0

    const-string v0, " "

    const/4 v2, -0x1

    move-object v6, v0

    move-object v7, v1

    const v8, 0x106000c

    const v9, 0x106000b

    const/4 v10, -0x1

    goto/16 :goto_5

    .line 268
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/events/EventUtils;->getExerciseIntensityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/events/ExerciseEventPoint;->getDurationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800e4

    move-object v7, v0

    move-object v6, v1

    const v8, 0x7f060050

    const v9, 0x7f06001f

    const v10, 0x7f0800e4

    goto/16 :goto_5

    .line 261
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/senseonics/events/EventUtils;->getHealthSeverityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800ea

    move-object v7, v0

    move-object v6, v1

    const v8, 0x7f060050

    const v9, 0x7f06001f

    const v10, 0x7f0800ea

    goto/16 :goto_5

    .line 253
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/events/EventUtils;->getInsulinTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0279

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800ec

    move-object v7, v0

    move-object v6, v1

    const v8, 0x7f060050

    const v9, 0x7f06001f

    const v10, 0x7f0800ec

    goto/16 :goto_5

    .line 246
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f010c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800ee

    move-object v7, v0

    move-object v6, v1

    const v8, 0x7f060050

    const v9, 0x7f06001f

    const v10, 0x7f0800ee

    goto/16 :goto_5

    .line 240
    :pswitch_4
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800e6

    move-object v6, v0

    move-object v7, v1

    const v8, 0x7f060050

    const v9, 0x7f06001f

    const v10, 0x7f0800e6

    goto/16 :goto_5

    :pswitch_5
    const v2, 0x7f06004d

    .line 232
    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    .line 233
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v1

    const v9, 0x7f06004d

    goto :goto_2

    .line 220
    :pswitch_6
    move-object v0, p2

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    .line 221
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v1

    const v8, 0x106000c

    :goto_2
    const v10, 0x7f080190

    goto :goto_5

    .line 210
    :pswitch_7
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 203
    :pswitch_8
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 195
    :pswitch_9
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v6, v0

    move-object v7, v1

    const v8, 0x106000c

    const v10, 0x7f080065

    goto :goto_5

    .line 188
    :pswitch_a
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v6, v0

    move-object v7, v1

    const v8, 0x106000c

    const v10, 0x7f080061

    goto :goto_5

    .line 182
    :pswitch_b
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {p2}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result v0

    move v10, v0

    move-object v7, v1

    move-object v6, v2

    const v8, 0x7f060050

    const v9, 0x7f06001f

    :goto_5
    move-object v2, p0

    move v3, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 282
    invoke-virtual/range {v2 .. v12}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putGlucosePopUp(FLcom/senseonics/graph/util/Glucose;IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 13

    move-object/from16 v0, p5

    .line 129
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v9

    .line 132
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 133
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 134
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const-string v1, " "

    goto :goto_0

    .line 142
    :goto_1
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getNotificationIconForGlucose(I)I

    move-result v10

    .line 144
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v8

    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 145
    invoke-virtual/range {v2 .. v12}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public putNoSensorGlucosePopUp(FII)V
    .locals 11

    .line 151
    sget-object v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    const-string v3, ""

    .line 154
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018d

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v8, -0x1

    const v6, 0x7f06001e

    const v7, 0x106000b

    move-object v0, p0

    move v1, p1

    move v9, p2

    move v10, p3

    .line 161
    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    add-int v6, v4, v5

    .line 54
    const-class v7, Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", my: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", alert: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", arrowSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f090125

    .line 61
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v7, p2

    .line 62
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f06001e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    invoke-direct {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->setDashTextBold(Landroid/widget/TextView;)V

    const v6, 0x7f0902ae

    .line 67
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v7, p3

    .line 68
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090124

    .line 71
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f090208

    .line 76
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0901e0

    .line 79
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 81
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v11, 0x2

    new-array v12, v11, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    aput v14, v12, v15

    invoke-direct {v9, v10, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v10, 0x0

    .line 89
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 90
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x7f090150

    .line 93
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eq v3, v8, :cond_0

    .line 95
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v3, 0x7f09029c

    .line 104
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v7, p4

    .line 106
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0902ed

    .line 110
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v1, p5

    .line 112
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, v13}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    const v1, 0x7f09020a

    .line 115
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/senseonics/view/Arrow;

    .line 116
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    div-int/lit8 v4, v5, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/senseonics/view/Arrow;->setBackgroundColor(I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/senseonics/view/Arrow;->setTriangleColor(I)V

    .line 123
    invoke-virtual {v1, v3}, Lcom/senseonics/view/Arrow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
