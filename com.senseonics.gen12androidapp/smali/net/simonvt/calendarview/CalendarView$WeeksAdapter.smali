.class Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/calendarview/CalendarView$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Lnet/simonvt/calendarview/CalendarView;


# direct methods
.method public constructor <init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V
    .locals 1

    .line 1355
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    .line 1356
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v0, p0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter$CalendarGestureListener;-><init>(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1357
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method static synthetic access$400(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)Ljava/util/Calendar;
    .locals 0

    .line 1343
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$500(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V
    .locals 0

    .line 1343
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1364
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->access$1400(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 1365
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$1500(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->access$1400(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 1366
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1600(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$1700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1367
    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1500(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$1700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1368
    :cond_0
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    :cond_1
    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1

    .line 1470
    invoke-virtual {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1471
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1}, Lnet/simonvt/calendarview/CalendarView;->access$2000(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1397
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .line 1392
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 1414
    check-cast p2, Lnet/simonvt/calendarview/CalendarView$WeekView;

    goto :goto_0

    .line 1416
    :cond_0
    new-instance p2, Lnet/simonvt/calendarview/CalendarView$WeekView;

    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lnet/simonvt/calendarview/CalendarView$WeekView;-><init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V

    .line 1417
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1420
    invoke-virtual {p2, p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x1

    .line 1421
    invoke-virtual {p2, p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setClickable(Z)V

    .line 1422
    invoke-virtual {p2, p0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1425
    :goto_0
    iget p3, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedWeek:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    .line 1427
    :goto_1
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p2, p1, p3, v0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->init(III)V

    return-object p2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1447
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1448
    check-cast p1, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 1450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 1455
    :cond_0
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1600(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1500(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1458
    :cond_1
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    return p2

    :cond_2
    :goto_0
    return p2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setFocusMonth(I)V
    .locals 1

    .line 1438
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1441
    :cond_0
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 1442
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 3

    const/4 v0, 0x6

    .line 1378
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 1379
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1383
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lnet/simonvt/calendarview/CalendarView;->access$1400(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I

    move-result p1

    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 1384
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 1385
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method
