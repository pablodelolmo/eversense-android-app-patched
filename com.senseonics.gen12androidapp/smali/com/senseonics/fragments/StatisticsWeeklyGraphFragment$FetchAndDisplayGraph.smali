.class Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;
.super Landroid/os/AsyncTask;
.source "StatisticsWeeklyGraphFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndDisplayGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/senseonics/graph/util/WeeklyStatValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 328
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    aget-object p1, p1, v0

    .line 333
    iget-object v1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 334
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {v2, v1, v0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;I)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 328
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 351
    new-instance v1, Lcom/senseonics/graph/WeeklyStatGraph;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/senseonics/graph/WeeklyStatGraph;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 353
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v0, 0x7f09012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 354
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method
