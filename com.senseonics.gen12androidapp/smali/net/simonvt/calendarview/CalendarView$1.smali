.class Lnet/simonvt/calendarview/CalendarView$1;
.super Landroid/database/DataSetObserver;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/calendarview/CalendarView;->setUpAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lnet/simonvt/calendarview/CalendarView;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$1;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .line 1017
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$1;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$600(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$1;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$700(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$1;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$600(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$1;->this$0:Lnet/simonvt/calendarview/CalendarView;

    const/4 v3, 0x1

    .line 1020
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 1021
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1022
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1019
    invoke-interface {v1, v2, v3, v4, v0}, Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;->onSelectedDayChange(Lnet/simonvt/calendarview/CalendarView;III)V

    :cond_0
    return-void
.end method
