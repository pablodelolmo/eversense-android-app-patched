.class public Lcom/senseonics/fragments/StatisticsListFragment;
.super Lcom/senseonics/fragments/BaseStatisticsFragment;
.source "StatisticsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/senseonics/util/StatisticsAdapter;

.field private listView:Landroid/widget/ListView;

.field private statistics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private tvDateRange:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/StatisticsListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/util/StatisticsAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->adapter:Lcom/senseonics/util/StatisticsAdapter;

    return-object p0
.end method


# virtual methods
.method public addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V
    .locals 9

    if-eqz p2, :cond_0

    .line 234
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v8, Lcom/senseonics/util/Statistics;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    double-to-int v3, v1

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    double-to-int v4, v1

    const/4 v1, 0x2

    aget-wide v1, p2, v1

    double-to-int v5, v1

    const/4 v1, 0x4

    aget-wide v1, p2, v1

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;IIID)V

    .line 234
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v7, Lcom/senseonics/util/Statistics;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;IIID)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;[D)V
    .locals 9

    if-eqz p2, :cond_0

    .line 225
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v8, Lcom/senseonics/util/Statistics;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    double-to-int v3, v1

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    double-to-int v4, v1

    const/4 v1, 0x2

    aget-wide v1, p2, v1

    double-to-int v5, v1

    const/4 v1, 0x4

    aget-wide v1, p2, v1

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;IIID)V

    .line 225
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v7, Lcom/senseonics/util/Statistics;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;IIID)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public generateStatistics(I)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "-90"

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x5a

    .line 103
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "-30"

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x1e

    .line 96
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "-14"

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0xe

    .line 89
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const-string v0, "-7"

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x7

    .line 83
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const-string v0, "-1"

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x1

    .line 77
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment;->tvDateRange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->createProgressDialogIfNeeded()V

    .line 112
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->showProgressDialogIfNeeded()V

    .line 113
    new-instance p1, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;-><init>(Lcom/senseonics/fragments/StatisticsListFragment;Lcom/senseonics/fragments/StatisticsListFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getEmailBody()Ljava/lang/String;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsListFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmailTitle()Ljava/lang/String;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsListFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseStatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0b0080

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901da

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900a7

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f090185

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->listView:Landroid/widget/ListView;

    const p2, 0x7f0902b9

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0902ca

    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/StatisticsListFragment;->tvDateRange:Landroid/widget/TextView;

    .line 44
    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsListFragment;->tvDateRange:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const p3, 0x7f0f019e

    invoke-virtual {p0, p3, v0}, Lcom/senseonics/fragments/StatisticsListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment;->initTabs(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->updateTabSelection()V

    .line 56
    new-instance p2, Lcom/senseonics/util/StatisticsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    invoke-direct {p2, p3, v0}, Lcom/senseonics/util/StatisticsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->adapter:Lcom/senseonics/util/StatisticsAdapter;

    .line 57
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsListFragment;->adapter:Lcom/senseonics/util/StatisticsAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->selectedState:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->selectedState:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment;->generateStatistics(I)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
