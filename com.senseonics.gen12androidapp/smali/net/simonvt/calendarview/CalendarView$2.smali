.class Lnet/simonvt/calendarview/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/calendarview/CalendarView;->setUpListView()V
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

    .line 1073
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$2;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$2;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1, p2, p3, p4}, Lnet/simonvt/calendarview/CalendarView;->access$900(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$2;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->access$800(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;I)V

    return-void
.end method
