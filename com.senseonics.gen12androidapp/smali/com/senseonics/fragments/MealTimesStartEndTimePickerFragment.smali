.class public Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "MealTimesStartEndTimePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private endMinute:I

.field endTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field private endTimePicker:Landroid/widget/RelativeLayout;

.field private endTimeText:Landroid/widget/TextView;

.field private endTimeTextView:Landroid/widget/TextView;

.field private endtHour:I

.field public mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

.field private mealTimeTextTextView:Landroid/widget/TextView;

.field private mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

.field private mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field private startHour:I

.field private startMinute:I

.field startTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field private startTimePicker:Landroid/widget/RelativeLayout;

.field private startTimeText:Landroid/widget/TextView;

.field private startTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 23
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v0, 0x6

    .line 24
    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    .line 200
    new-instance v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 212
    new-instance v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$4;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    return p0
.end method

.method static synthetic access$102(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    return p1
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    return p0
.end method

.method static synthetic access$202(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    return p1
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    return p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    return p1
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    return p0
.end method

.method static synthetic access$402(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    return p1
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTimeTextView(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTimeTextView(II)V

    return-void
.end method

.method private setEndTime(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 192
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    .line 193
    iput p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTimeTextView(II)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEndTimeTextView(II)V
    .locals 2

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 170
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 171
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 173
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setStartTime(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 181
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    .line 182
    iput p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTimeTextView(II)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setStartTimeTextView(II)V
    .locals 2

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 161
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 162
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b00a5

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    const p2, 0x7f09019d

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeTextTextView:Landroid/widget/TextView;

    const p2, 0x7f090267

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    const p2, 0x7f090266

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f090100

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    const p2, 0x7f0900fe

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f090268

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900ff

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    .line 42
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 43
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object p3

    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->PASS_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p2, p3, p2

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 50
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->updateViews()V

    return-void
.end method

.method public saveEndTimesDataHandlerValue(II)V
    .locals 2

    .line 140
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSleepEndTime(II)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setDinnerEndTime(II)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSnackEndTime(II)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setLunchEndTime(II)V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setBreakfastEndTime(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveStartTimesDataHandlerValue(II)V
    .locals 2

    .line 120
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSleepStartTime(II)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setDinnerStartTime(II)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSnackStartTime(II)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setLunchStartTime(II)V

    goto :goto_0

    .line 122
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setBreakfastStartTime(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBothTimesDataHandlerValue()V
    .locals 2

    .line 95
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 114
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndtMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto/16 :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 106
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 102
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMealTimesManager(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

    return-void
.end method

.method public updateViews()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setBothTimesDataHandlerValue()V

    .line 56
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x106000b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f06001e

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
