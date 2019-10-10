.class public Lcom/senseonics/fragments/StatisticsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "StatisticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_COUNT:I = 0x3


# instance fields
.field private adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

.field private shareButton:Landroid/widget/ImageView;

.field private statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

.field private statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

.field private statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

.field private stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/StatisticsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/util/StepPagerStrip;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsListFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object p0
.end method

.method static synthetic access$402(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/fragments/StatisticsListFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object p0
.end method

.method static synthetic access$502(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object p1
.end method

.method private getCurrentSelectedStatisticsFragment()Lcom/senseonics/fragments/BaseStatisticsFragment;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    invoke-virtual {v0}, Lcom/senseonics/util/StepPagerStrip;->getCurrentPage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object v0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object v0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createShareDialog()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getCurrentSelectedStatisticsFragment()Lcom/senseonics/fragments/BaseStatisticsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->formShareEmail()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0b007d

    const/4 p3, 0x0

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ee

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 41
    new-instance p2, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;-><init>(Lcom/senseonics/fragments/StatisticsFragment;Landroid/app/FragmentManager;)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    .line 42
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsFragment;->adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const p2, 0x7f090272

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/senseonics/util/StepPagerStrip;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    .line 45
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    new-instance p3, Lcom/senseonics/fragments/StatisticsFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/StatisticsFragment$1;-><init>(Lcom/senseonics/fragments/StatisticsFragment;)V

    .line 46
    invoke-virtual {p2, p3}, Lcom/senseonics/util/StepPagerStrip;->setOnPageSelectedListener(Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;)V

    .line 56
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance p3, Lcom/senseonics/fragments/StatisticsFragment$2;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/StatisticsFragment$2;-><init>(Lcom/senseonics/fragments/StatisticsFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 85
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 87
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/senseonics/util/StepPagerStrip;->setPageCount(I)V

    .line 88
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDetach()V

    .line 127
    :try_start_0
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "#3640"

    const-string v1, "!!destroy me!!"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public setShareButton(Landroid/widget/ImageView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    return-void
.end method

.method protected setShareButtonEnabled(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3e800000    # 0.25f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method
