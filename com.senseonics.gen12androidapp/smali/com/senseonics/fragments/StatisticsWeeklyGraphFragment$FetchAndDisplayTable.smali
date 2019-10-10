.class Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;
.super Landroid/os/AsyncTask;
.source "StatisticsWeeklyGraphFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndDisplayTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 141
    aget-object v1, p1, v1

    .line 143
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v9, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sget-object v5, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v3, v4, v5, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 147
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v5

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v6

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 148
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v7

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 150
    new-instance v3, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v4, v5, v6, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 151
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v12

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v13

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 152
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v14

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v15

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 154
    new-instance v4, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v5, v6, v7, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 155
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v18

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v19

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 156
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v20

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v21

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 158
    new-instance v5, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    sget-object v8, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v6, v7, v8, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 159
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v12

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v13

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 160
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v14

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v15

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 162
    new-instance v6, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7, v8, v10, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 163
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v18

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v19

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 164
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v20

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v21

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v21}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 165
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v1, :cond_22

    .line 202
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_22

    if-eqz v2, :cond_22

    .line 203
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v4, 0x7f09026d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v5, 0x7f0902f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 206
    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 207
    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v7, 0x7f090074

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 208
    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v8, 0x7f09018d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 209
    iget-object v8, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v8, v8, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v9, 0x7f090139

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 211
    iget-object v9, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v9, v9, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v10, 0x7f09006c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 212
    iget-object v10, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v10, v10, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v11, 0x7f09026f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 213
    iget-object v11, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v11, v11, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v12, 0x7f0902f5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 214
    iget-object v12, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v12, v12, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v13, 0x7f090014

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 215
    iget-object v13, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v13, v13, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v14, 0x7f090076

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 216
    iget-object v14, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v14, v14, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v15, 0x7f09013d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 217
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v16, v14

    const v14, 0x7f090191

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 219
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v17, v14

    const v14, 0x7f09006e

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 220
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v18, v14

    const v14, 0x7f090271

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 221
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v19, v14

    const v14, 0x7f0902f7

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 222
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v20, v14

    const v14, 0x7f090016

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 223
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v21, v14

    const v14, 0x7f090078

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 224
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v22, v14

    const v14, 0x7f09013f

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 225
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v23, v14

    const v14, 0x7f090193

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 227
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v24, v14

    const v14, 0x7f09006b

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 228
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v25, v14

    const v14, 0x7f09026e

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 229
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v26, v14

    const v14, 0x7f0902f4

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 230
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v27, v14

    const v14, 0x7f090013

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 231
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v28, v14

    const v14, 0x7f090075

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 232
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v29, v14

    const v14, 0x7f09018e

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 233
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v0, 0x7f09013a

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v15, 0x0

    .line 235
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v15, v30

    check-cast v15, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    move-object/from16 v31, v0

    const/4 v0, 0x1

    .line 236
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    move-object/from16 v32, v14

    const/4 v14, 0x2

    .line 237
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    move-object/from16 v33, v14

    const/4 v14, 0x3

    .line 238
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    .line 240
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v30

    const/high16 v34, -0x40800000    # -1.0f

    cmpl-float v30, v30, v34

    if-eqz v30, :cond_0

    .line 241
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_1

    .line 243
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    move-object/from16 v36, v13

    move-object/from16 v35, v14

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/16 v30, 0x0

    aput-object v14, v13, v30

    invoke-static {v1, v2, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object/from16 v36, v13

    move-object/from16 v35, v14

    .line 244
    :goto_0
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_2

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/16 v30, 0x0

    aput-object v13, v14, v30

    invoke-static {v2, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_3

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v2, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_3
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_4

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v5, v13

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_4
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_5

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_5
    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_6

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_6
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_7

    .line 256
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_7
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_8

    .line 258
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_8
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_9

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_9
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_a

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_a
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_b

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v13, v36

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_b
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_c

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v17

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_c
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_d

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    move-object/from16 v14, v33

    .line 270
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_e

    .line 271
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_e
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_f

    .line 273
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_f
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_10

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_10
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_11

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_11
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_12

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_12
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_13

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_13
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_14

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    move-object/from16 v14, v35

    .line 285
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_15

    .line 286
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_15
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_16

    .line 288
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_16
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_17

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_17
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_18

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_18
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_19

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_19
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_1a

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_1a
    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v34

    if-eqz v0, :cond_1b

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    move-object/from16 v0, p0

    .line 301
    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 302
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v3, 0x7f090270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 303
    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v4, 0x7f0902f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 304
    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v5, 0x7f090015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 305
    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v6, 0x7f090077

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 306
    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v7, 0x7f090192

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 307
    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v8, 0x7f09013e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x4

    move-object/from16 v9, p1

    .line 308
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    .line 309
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v9

    cmpl-float v9, v9, v34

    if-eqz v9, :cond_1c

    .line 310
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v9

    invoke-static {v9}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1c
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_1d

    .line 312
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v1, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1d
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_1e

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.0f"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v2, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_1e
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_1f

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-static {v2, v3, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1f
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_20

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v2, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_20
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_21

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_21
    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v1

    cmpl-float v1, v1, v34

    if-eqz v1, :cond_22

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    return-void
.end method
