.class Lnet/simonvt/calendarview/CalendarView$WeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;


# direct methods
.method constructor <init>(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter$CalendarGestureListener;->this$1:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
