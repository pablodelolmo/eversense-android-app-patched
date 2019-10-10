.class public Lcom/senseonics/fragments/EventLogFragment;
.super Lcom/senseonics/fragments/NotificationsFragment;
.source "EventLogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/senseonics/fragments/NotificationsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addSelection()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_5
    :goto_0
    new-instance v1, Lcom/senseonics/fragments/EventLogFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/EventLogFragment$2;-><init>(Lcom/senseonics/fragments/EventLogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 98
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_6
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method protected getAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    new-instance v1, Lcom/senseonics/fragments/EventLogFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/EventLogFragment$3;-><init>(Lcom/senseonics/fragments/EventLogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 49
    new-instance v0, Lcom/senseonics/fragments/EventLogFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/fragments/EventLogFragment$1;-><init>(Lcom/senseonics/fragments/EventLogFragment;Lcom/senseonics/util/NotificationsAdapter;)V

    return-object v0
.end method

.method public initData()V
    .locals 4

    const/4 v0, 0x2

    .line 145
    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 146
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x16

    .line 145
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    .line 148
    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    .line 150
    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    .line 152
    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    .line 154
    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    .line 156
    iget-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->addSelection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    .line 157
    iget-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/NotificationsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0b0075

    const/4 p3, 0x0

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/EventLogFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/senseonics/fragments/NotificationsFragment;->onResume()V

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method
