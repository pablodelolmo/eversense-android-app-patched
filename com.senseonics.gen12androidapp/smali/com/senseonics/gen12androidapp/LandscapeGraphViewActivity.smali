.class public Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "LandscapeGraphViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;
    }
.end annotation


# instance fields
.field emailer:Lcom/senseonics/util/Emailer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private endDate:Ljava/util/Calendar;

.field private graphView:Lcom/jjoe64/graphview/LineGraphView;

.field intentUtils:Lcom/senseonics/util/IntentUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field shareImageButton:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field

.field spinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025d
    .end annotation
.end field

.field private startDate:Ljava/util/Calendar;

.field title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->putDataInGraph()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setDateInTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->oneThirdMyHeight()I

    move-result p0

    return p0
.end method

.method private addGraph()V
    .locals 14

    .line 119
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->updateStartAndEndDates()V

    .line 120
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    invoke-static {p0}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 121
    sget v1, Lcom/senseonics/util/Utils;->screenHeight:I

    .line 123
    new-instance v13, Lcom/jjoe64/graphview/LineGraphView;

    const-string v4, ""

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    const/16 v10, 0x32

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    move-object v3, p0

    move v7, v1

    move v8, v0

    move v9, v1

    invoke-direct/range {v2 .. v12}, Lcom/jjoe64/graphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIIZZ)V

    iput-object v13, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    .line 125
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v3, v2}, Lcom/jjoe64/graphview/LineGraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/LineGraphView;->setScalable(Z)V

    .line 130
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/LineGraphView;->setScrollable(Z)V

    .line 131
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jjoe64/graphview/LineGraphView;->setIsLandscape(Z)V

    .line 132
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v2, v4}, Lcom/jjoe64/graphview/LineGraphView;->setDisableTouch(Z)V

    .line 133
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v2, v4}, Lcom/jjoe64/graphview/LineGraphView;->setDrawBackground(Z)V

    const v2, 0x7f09012d

    .line 135
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 136
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    new-instance v4, Lcom/senseonics/graph/VerticalLineHolder;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;III)V

    .line 139
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Lcom/senseonics/graph/VerticalLineHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    new-instance v0, Lcom/senseonics/fragments/PopupGraphManagerView;

    .line 144
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->oneThirdMyHeight()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    const v1, 0x7f090209

    .line 146
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    new-instance v1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Lcom/senseonics/fragments/PopupGraphManagerView;)V

    invoke-virtual {v4, v1}, Lcom/senseonics/graph/VerticalLineHolder;->setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V

    return-void
.end method

.method private getActionBarHeight()I
    .locals 4

    .line 187
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSelectedDays()I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private oneThirdMyHeight()I
    .locals 1

    const v0, 0x1020002

    .line 152
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private putDataInGraph()V
    .locals 4

    .line 167
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->updateStartAndEndDates()V

    .line 168
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->intentUtils:Lcom/senseonics/util/IntentUtils;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/IntentUtils;->refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    .line 169
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setDateInTitle()V
    .locals 4

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStartAndEndDates()V
    .locals 3

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    .line 158
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getSelectedDays()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    mul-int/lit8 v0, v0, -0x1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0087

    .line 56
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f0902bb

    .line 59
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090175

    .line 67
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    .line 69
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$3;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->addGraph()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/graph/events/GraphCacheEvent;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/LineGraphView;->removeAllSeries()V

    .line 175
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jjoe64/graphview/LineGraphView;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 176
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->setStartDate(Ljava/util/Calendar;)V

    .line 177
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->setEndDate(Ljava/util/Calendar;)V

    .line 178
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/LineGraphView;->removeAllSeries()V

    .line 179
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->glucoseValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->addSeries(Ljava/util/List;)V

    .line 180
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getSelectedDays()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object p1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->events:Ljava/util/List;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->putDataInGraph()V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setDateInTitle()V

    return-void
.end method
