.class public Lcom/senseonics/util/NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/NotificationsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/senseonics/util/NotificationsAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 60
    new-instance p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;-><init>(Lcom/senseonics/util/NotificationsAdapter;Lcom/senseonics/util/NotificationsAdapter$1;)V

    .line 61
    iget-object v1, p0, Lcom/senseonics/util/NotificationsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902b6

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f090241

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->separator:Landroid/widget/TextView;

    const v2, 0x7f0900c5

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f0902ae

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const v2, 0x7f090147

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f0901e2

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p2, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->dateLayout:Landroid/widget/RelativeLayout;

    .line 70
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Notification;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/senseonics/util/Utils;->formatWeekDateYearForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez p1, :cond_1

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    .line 86
    :cond_1
    iget-object v6, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Notification;

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 88
    invoke-virtual {p1}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/senseonics/util/Utils;->formatWeekDateYearForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ne p1, v5, :cond_3

    const p1, 0x7f090242

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->dateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 103
    :cond_3
    iget-object p1, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->dateLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    :goto_3
    invoke-virtual {v2}, Lcom/senseonics/util/Notification;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 109
    invoke-virtual {v2}, Lcom/senseonics/util/Notification;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 121
    iget-object v5, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v4, :cond_5

    .line 131
    :cond_4
    iget-object v0, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->separator:Landroid/widget/TextView;

    const-string v4, ","

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/senseonics/util/Notification;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_5
    iget-object v0, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {v3, v2, p3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 140
    iget-object p3, v1, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-object p2
.end method

.method public setNotifications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/senseonics/util/NotificationsAdapter;->notifications:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method
