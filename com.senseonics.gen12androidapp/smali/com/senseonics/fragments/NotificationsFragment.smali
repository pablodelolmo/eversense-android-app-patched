.class public Lcom/senseonics/fragments/NotificationsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "NotificationsFragment.java"


# static fields
.field public static final GROUP_1:I = 0x16

.field public static final GROUP_2:I = 0x21

.field public static final GROUP_3:I = 0x2c

.field public static final GROUP_4:I = 0x37

.field public static final GROUP_5:I = 0x42


# instance fields
.field protected adapter:Lcom/senseonics/util/NotificationsAdapter;

.field protected batteryAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected batteryAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected batteryNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected currentSelectedDate:Ljava/util/Calendar;

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private date:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected list1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected maxDate:Ljava/util/Calendar;

.field protected minDate:Ljava/util/Calendar;

.field protected noStatisticsLayout:Landroid/widget/RelativeLayout;

.field private notificationsList:Landroid/widget/ListView;

.field protected redAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabView:Lcom/senseonics/util/TabView;

.field protected yellowAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/NotificationsFragment;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/NotificationsFragment;->formatDateForCurrentDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/NotificationsFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private formatDateForCurrentDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    const-string v0, "EEE dd MMMM, yyyy"

    .line 303
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected addSelection()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v5, 0x37

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v6, 0x42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 381
    :cond_6
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->redAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_7
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 383
    :cond_8
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_9
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 386
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_a
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 388
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    :cond_b
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 390
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    :cond_c
    :goto_0
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$11;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$11;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 410
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 411
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 413
    :cond_d
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public checkIfSelectionsIsEmpty()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    :cond_0
    return-void
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

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 424
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 426
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->redAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 429
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$12;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$12;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method protected getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;IZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 459
    iget-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 460
    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 462
    iget-object v2, v0, Lcom/senseonics/fragments/NotificationsFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 464
    invoke-static {v1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/senseonics/fragments/NotificationsFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    .line 462
    invoke-virtual/range {v2 .. v15}, Lcom/senseonics/db/DatabaseManager;->getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 478
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 121
    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/fragments/NotificationsFragment$1;-><init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/NotificationsAdapter;)V

    return-object v0
.end method

.method public initData()V
    .locals 8

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 316
    new-array v1, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    .line 323
    new-array v1, v5, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v3

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->redAlertList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    .line 336
    new-array v1, v1, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v3

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v4

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v5

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v1, v6

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v6, v1, v0

    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v6, 0x5

    aput-object v0, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlarmList:Ljava/util/ArrayList;

    .line 350
    new-array v0, v5, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v4

    .line 351
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlertList:Ljava/util/ArrayList;

    .line 356
    new-array v0, v4, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v3

    .line 357
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryNotificationList:Ljava/util/ArrayList;

    .line 360
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->addSelection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    .line 361
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->minDate:Ljava/util/Calendar;

    .line 137
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->minDate:Ljava/util/Calendar;

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->maxDate:Ljava/util/Calendar;

    const v0, 0x7f0901da

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090284

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/TabView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const v0, 0x7f0901ec

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    .line 144
    new-instance v0, Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    invoke-virtual {v2}, Lcom/senseonics/util/TabView;->getDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/NotificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/NotificationsFragment;->getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$2;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    .line 170
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    .line 172
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    const v0, 0x7f090297

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    .line 175
    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$3;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    .line 195
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/senseonics/util/dialogs/DateDialogManager;->onDateSelected(Ljava/util/Calendar;)V

    const v1, 0x7f090082

    .line 198
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 199
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/fragments/NotificationsFragment$4;-><init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$5;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->allTabClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$6;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab1ClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$7;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$7;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab2ClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$8;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$8;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab3ClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$9;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$9;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab4ClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$10;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$10;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab5ClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    invoke-virtual {p1}, Lcom/senseonics/util/TabView;->performClick()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b0079

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V

    .line 82
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const p3, 0x7f090291

    invoke-virtual {p2, p3}, Lcom/senseonics/util/TabView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/high16 p3, 0x41200000    # 10.0f

    .line 83
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 84
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const p3, 0x7f090279

    invoke-virtual {p2, p3}, Lcom/senseonics/util/TabView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 0

    .line 491
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 0

    .line 495
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 0

    .line 487
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 116
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    .line 100
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lcom/senseonics/fragments/NotificationsFragment;->formatDateForCurrentDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_1
    return-void
.end method
