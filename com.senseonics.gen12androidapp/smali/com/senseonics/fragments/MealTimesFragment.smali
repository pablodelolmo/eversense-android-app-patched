.class public Lcom/senseonics/fragments/MealTimesFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "MealTimesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;
    }
.end annotation


# instance fields
.field private breakfastPicker:Landroid/widget/RelativeLayout;

.field private breakfastTextView:Landroid/widget/TextView;

.field private dinnerPicker:Landroid/widget/RelativeLayout;

.field private dinnerTextView:Landroid/widget/TextView;

.field private lunchPicker:Landroid/widget/RelativeLayout;

.field private lunchTextView:Landroid/widget/TextView;

.field private mealTimeTextTextView:Landroid/widget/TextView;

.field private mealTimesManager:Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;

.field private mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field private sleepPicker:Landroid/widget/RelativeLayout;

.field private sleepTextView:Landroid/widget/TextView;

.field private snackPicker:Landroid/widget/RelativeLayout;

.field private snackTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/MealTimesFragment;)Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/senseonics/fragments/MealTimesFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object p0
.end method

.method private setTimeTextView(Landroid/widget/TextView;IIII)V
    .locals 3

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 130
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 131
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, p3, v2}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 133
    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v0, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 135
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesFragment;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-static {v0, p2, p4}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 138
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 14

    .line 54
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v3, p0, Lcom/senseonics/fragments/MealTimesFragment;->breakfastTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartHour()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartMinute()I

    move-result v5

    .line 56
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndHour()I

    move-result v6

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndMinute()I

    move-result v7

    move-object v2, p0

    .line 55
    invoke-direct/range {v2 .. v7}, Lcom/senseonics/fragments/MealTimesFragment;->setTimeTextView(Landroid/widget/TextView;IIII)V

    .line 58
    iget-object v9, p0, Lcom/senseonics/fragments/MealTimesFragment;->lunchTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartHour()I

    move-result v10

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartMinute()I

    move-result v11

    .line 59
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndHour()I

    move-result v12

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndMinute()I

    move-result v13

    move-object v8, p0

    .line 58
    invoke-direct/range {v8 .. v13}, Lcom/senseonics/fragments/MealTimesFragment;->setTimeTextView(Landroid/widget/TextView;IIII)V

    .line 61
    iget-object v2, p0, Lcom/senseonics/fragments/MealTimesFragment;->snackTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartHour()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartMinute()I

    move-result v4

    .line 62
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndHour()I

    move-result v5

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndMinute()I

    move-result v6

    move-object v1, p0

    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/fragments/MealTimesFragment;->setTimeTextView(Landroid/widget/TextView;IIII)V

    .line 64
    iget-object v8, p0, Lcom/senseonics/fragments/MealTimesFragment;->dinnerTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartHour()I

    move-result v9

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartMinute()I

    move-result v10

    .line 65
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndHour()I

    move-result v11

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndMinute()I

    move-result v12

    move-object v7, p0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/senseonics/fragments/MealTimesFragment;->setTimeTextView(Landroid/widget/TextView;IIII)V

    .line 67
    iget-object v2, p0, Lcom/senseonics/fragments/MealTimesFragment;->sleepTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartHour()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartMinute()I

    move-result v4

    .line 68
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndHour()I

    move-result v5

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndtMinute()I

    move-result v6

    .line 67
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/fragments/MealTimesFragment;->setTimeTextView(Landroid/widget/TextView;IIII)V

    .line 72
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment;->breakfastPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesFragment$1;-><init>(Lcom/senseonics/fragments/MealTimesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment;->lunchPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesFragment$2;-><init>(Lcom/senseonics/fragments/MealTimesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment;->snackPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesFragment$3;-><init>(Lcom/senseonics/fragments/MealTimesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment;->dinnerPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesFragment$4;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesFragment$4;-><init>(Lcom/senseonics/fragments/MealTimesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment;->sleepPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesFragment$5;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesFragment$5;-><init>(Lcom/senseonics/fragments/MealTimesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b0078

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09019d

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->mealTimeTextTextView:Landroid/widget/TextView;

    .line 31
    sget-object p2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const p2, 0x7f090085

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->breakfastPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f090198

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->lunchPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f090255

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->snackPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900d4

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->dinnerPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f090251

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->sleepPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f090087

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->breakfastTextView:Landroid/widget/TextView;

    const p2, 0x7f09019a

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->lunchTextView:Landroid/widget/TextView;

    const p2, 0x7f090257

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->snackTextView:Landroid/widget/TextView;

    const p2, 0x7f0900d6

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->dinnerTextView:Landroid/widget/TextView;

    const p2, 0x7f090253

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesFragment;->sleepTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 48
    invoke-direct {p0}, Lcom/senseonics/fragments/MealTimesFragment;->updateView()V

    return-void
.end method

.method public setMealTimesManager(Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesFragment;->mealTimesManager:Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;

    return-void
.end method
