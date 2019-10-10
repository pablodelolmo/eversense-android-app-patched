.class Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "StatisticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsFragment;


# direct methods
.method public constructor <init>(Lcom/senseonics/fragments/StatisticsFragment;Landroid/app/FragmentManager;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    .line 157
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 158
    new-instance p2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->access$502(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    .line 159
    new-instance p2, Lcom/senseonics/fragments/StatisticsPieChartFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->access$302(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;

    .line 160
    new-instance p2, Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsListFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->access$402(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/fragments/StatisticsListFragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->getItem(I)Lcom/senseonics/fragments/BaseStatisticsFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/senseonics/fragments/BaseStatisticsFragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->access$400(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsListFragment;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->access$300(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;

    move-result-object p1

    return-object p1

    .line 167
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->access$500(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
