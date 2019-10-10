.class Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;
.super Landroid/os/AsyncTask;
.source "StatisticsPieChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsPieChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndDisplayPieChartDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsPieChartFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsPieChartFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;-><init>(Lcom/senseonics/fragments/StatisticsPieChartFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 139
    aget-object p1, p1, v0

    .line 142
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v3, ">="

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v4

    const-string v5, "<="

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/db/DatabaseManager;->getStatistics2Between(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsPieChartFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v3, ">"

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsPieChartFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v4

    const-string v5, "<="

    sget v6, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/db/DatabaseManager;->getStatistics2Between(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v7

    .line 148
    iget-object v1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsPieChartFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v3, ">="

    sget v4, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    const-string v5, "<"

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsPieChartFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/db/DatabaseManager;->getStatistics2Between(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Piechart debug"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aboveTargetLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Piechart debug"

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "belowTargetLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Piechart debug"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "withinTargetLevels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 172
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v7, 0x8

    if-nez p1, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    .line 176
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsPieChartFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsPieChartFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v8, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v8, v8, Lcom/senseonics/fragments/StatisticsPieChartFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v7, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsPieChartFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v7, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    new-array v2, v2, [I

    aput v3, v2, v1

    aput v5, v2, v4

    aput p1, v2, v6

    invoke-virtual {v7, v2, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->refreshContent([ILandroid/content/Context;)V

    .line 185
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->this$0:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method
