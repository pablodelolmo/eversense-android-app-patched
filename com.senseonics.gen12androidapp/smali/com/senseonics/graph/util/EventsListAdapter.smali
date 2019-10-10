.class public Lcom/senseonics/graph/util/EventsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eventPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 63
    iget-object p3, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/senseonics/graph/util/EventsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b006c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;-><init>(Lcom/senseonics/graph/util/EventsListAdapter;Lcom/senseonics/graph/util/EventsListAdapter$1;)V

    const v0, 0x7f090150

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0902b1

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f09010d

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/events/EventPoint;

    .line 82
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p1}, Lcom/senseonics/graph/util/GraphUtils;->getBitmapForEvent(Lcom/senseonics/events/EventPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_1
    iget-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    .line 88
    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v0, Lcom/senseonics/graph/util/EventsListAdapter$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    .line 113
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :pswitch_0
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 107
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_4

    .line 108
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 99
    :pswitch_1
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 100
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_4

    .line 102
    :cond_2
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 94
    :pswitch_2
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/senseonics/events/AlertEventPoint;

    .line 96
    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/senseonics/graph/util/EventsListAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEvent(Lcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    return-void
.end method
