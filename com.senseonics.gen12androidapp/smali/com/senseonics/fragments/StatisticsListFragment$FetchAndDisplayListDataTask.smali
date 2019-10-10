.class Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;
.super Landroid/os/AsyncTask;
.source "StatisticsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndDisplayListDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "[D>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsListFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsListFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsListFragment;Lcom/senseonics/fragments/StatisticsListFragment$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;-><init>(Lcom/senseonics/fragments/StatisticsListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[D>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 123
    aget-object p1, p1, v1

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v3, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v4, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v3, v4, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v5, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v4, v5, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v5, v6, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object v5

    .line 131
    iget-object v6, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v6, v7, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object v6

    .line 132
    iget-object v7, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsListFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-object v8, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7, v8, p1, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object p1

    .line 133
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[D>;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x1

    .line 165
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const/4 v3, 0x2

    .line 166
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x3

    .line 167
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x4

    .line 168
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/4 v6, 0x5

    .line 169
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/16 v6, 0x8

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsListFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsListFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v7, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsListFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v6, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsListFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/StatisticsListFragment;->access$100(Lcom/senseonics/fragments/StatisticsListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v6, v1}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 181
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v1, v3}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 183
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v1, v4}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 184
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v1, v5}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 185
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/fragments/StatisticsListFragment;->addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V

    .line 186
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsListFragment;->access$200(Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/util/StatisticsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsListFragment;->access$200(Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/util/StatisticsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/StatisticsAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->this$0:Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsListFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method
