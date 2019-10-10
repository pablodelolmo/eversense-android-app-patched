.class Lcom/senseonics/fragments/StatisticsFragment$2;
.super Ljava/lang/Object;
.source "StatisticsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/StatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/StatisticsFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$200(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/util/StepPagerStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/util/StepPagerStrip;->setCurrentPage(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$300(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->updateTabSelection()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$400(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsListFragment;->updateTabSelection()V

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$000(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->getItem(I)Lcom/senseonics/fragments/BaseStatisticsFragment;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$2;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/BaseStatisticsFragment;->hasData()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/senseonics/fragments/StatisticsFragment;->setShareButtonEnabled(Z)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method
