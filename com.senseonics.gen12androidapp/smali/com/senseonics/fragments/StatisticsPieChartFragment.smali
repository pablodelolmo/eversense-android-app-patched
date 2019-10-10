.class public Lcom/senseonics/fragments/StatisticsPieChartFragment;
.super Lcom/senseonics/fragments/BaseStatisticsFragment;
.source "StatisticsPieChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;
    }
.end annotation


# instance fields
.field private chartSize:I

.field private colors:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private paddingHorizontal:I

.field private pieChartLayout:Landroid/widget/RelativeLayout;

.field private rectf:Landroid/graphics/RectF;

.field private tvDateRange:Landroid/widget/TextView;

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;-><init>()V

    return-void
.end method

.method private calculatePercentBase([I)[I
    .locals 11

    .line 252
    array-length v0, p1

    new-array v0, v0, [I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 255
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_0

    .line 256
    aget v7, p1, v4

    int-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v1

    const/4 v1, 0x0

    .line 260
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 261
    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x64

    int-to-double v9, v2

    div-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    aput v2, v0, v1

    .line 262
    aget v2, v0, v1

    int-to-double v9, v2

    add-double/2addr v7, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    cmpl-double p1, v7, v1

    if-eqz p1, :cond_2

    .line 267
    aget p1, v0, v3

    int-to-double v4, p1

    sub-double/2addr v1, v7

    add-double/2addr v4, v1

    double-to-int p1, v4

    aput p1, v0, v3

    :cond_2
    return-object v0
.end method

.method private getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;
    .locals 1

    .line 285
    sget-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    invoke-virtual {p2}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const-string p1, " "

    return-object p1

    :pswitch_0
    const p2, 0x7f0f0299

    .line 291
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p2, 0x7f0f0038

    .line 289
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p2, 0x7f0f001f

    .line 287
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private timesData([II)[I
    .locals 5

    .line 238
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 240
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 241
    aget v4, p1, v2

    mul-int v4, v4, p2

    div-int/lit8 v4, v4, 0x64

    aput v4, v0, v2

    .line 242
    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eq v3, p2, :cond_1

    .line 246
    aget p1, v0, v1

    sub-int/2addr p2, v3

    add-int/2addr p1, p2

    aput p1, v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addListItem(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d7

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090200

    .line 228
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " %"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x5a

    .line 121
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 122
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

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x1e

    .line 115
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 116
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

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0xe

    .line 109
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 110
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

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x7

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

    goto :goto_0

    :pswitch_4
    const-string v0, "-1"

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x1

    .line 97
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 98
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

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->tvDateRange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->createProgressDialogIfNeeded()V

    .line 130
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->showProgressDialogIfNeeded()V

    .line 131
    new-instance p1, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;-><init>(Lcom/senseonics/fragments/StatisticsPieChartFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 280
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d0

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
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseStatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0b007e

    .line 42
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901da

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900a7

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f090205

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0902b9

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0902ca

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->tvDateRange:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->tvDateRange:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, p3

    const v0, 0x7f0f0107

    invoke-virtual {p0, v0, v2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    sget p2, Lcom/senseonics/util/Utils;->screenWidth:I

    int-to-double v2, p2

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double v2, v2, v4

    double-to-int p2, v2

    .line 60
    iput p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    .line 62
    iput p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    .line 63
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    int-to-float v0, v0

    iget v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    int-to-float v2, v2

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    iget v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    iget v5, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->rectf:Landroid/graphics/RectF;

    const/4 p2, 0x3

    .line 66
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    .line 67
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060055

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, p3

    .line 68
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060048

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 71
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    .line 72
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    .line 73
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 74
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    .line 76
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->initTabs(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->updateTabSelection()V

    return-object p1
.end method

.method public refreshContent([ILandroid/content/Context;)V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 192
    array-length v0, p1

    new-array v0, v0, [I

    .line 193
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->calculatePercentBase([I)[I

    move-result-object p1

    const/16 v0, 0x168

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->timesData([II)[I

    move-result-object v0

    .line 196
    new-instance v1, Lcom/senseonics/util/PieChart;

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->rectf:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-direct {v1, p2, v2, v3, v0}, Lcom/senseonics/util/PieChart;-><init>(Landroid/content/Context;Landroid/graphics/RectF;[I[I)V

    .line 197
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    iget v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    invoke-virtual {v1, v2}, Lcom/senseonics/util/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 205
    iget v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 207
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p2, 0x7f08012b

    .line 208
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 p2, 0x1

    .line 209
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x0

    .line 210
    :goto_0
    array-length v3, v0

    if-ge p2, v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    aget v3, v3, p2

    iget-object v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    aget-object v4, v4, p2

    aget v5, p1, p2

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->addListItem(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->selectedState:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->selectedState:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->generateStatistics(I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
