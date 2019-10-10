.class Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lnet/simonvt/calendarview/CalendarView;


# direct methods
.method private constructor <init>(Lnet/simonvt/calendarview/CalendarView;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/calendarview/CalendarView;Lnet/simonvt/calendarview/CalendarView$1;)V
    .locals 0

    .line 1293
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;-><init>(Lnet/simonvt/calendarview/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1306
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 1307
    iput p2, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mNewState:I

    .line 1308
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {p1, p0}, Lnet/simonvt/calendarview/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1309
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    const-wide/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v1}, Lnet/simonvt/calendarview/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1313
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->access$1002(Lnet/simonvt/calendarview/CalendarView;I)I

    .line 1315
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1316
    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1100(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1322
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$1200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1323
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$1200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1324
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$1300(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v2

    const/16 v3, 0x1f4

    if-eqz v2, :cond_1

    .line 1325
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1331
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->this$0:Lnet/simonvt/calendarview/CalendarView;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Lnet/simonvt/calendarview/CalendarView;->access$1102(Lnet/simonvt/calendarview/CalendarView;I)I

    return-void
.end method
