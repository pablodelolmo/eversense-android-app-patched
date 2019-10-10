.class Lcom/senseonics/fragments/StatisticsFragment$1;
.super Ljava/lang/Object;
.source "StatisticsFragment.java"

# interfaces
.implements Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;


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

    .line 46
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$1;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStripSelected(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$1;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$000(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$1;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$100(Lcom/senseonics/fragments/StatisticsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment$1;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsFragment;->access$100(Lcom/senseonics/fragments/StatisticsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
