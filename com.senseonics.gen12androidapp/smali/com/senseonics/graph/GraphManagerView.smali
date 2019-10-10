.class public Lcom/senseonics/graph/GraphManagerView;
.super Landroid/widget/RelativeLayout;
.source "GraphManagerView.java"

# interfaces
.implements Lcom/senseonics/util/IDestroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/GraphManagerView$GraphManager;,
        Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;
    }
.end annotation


# instance fields
.field private dateView:Lcom/senseonics/graph/DateView;

.field private graphManagerViewListener:Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

.field private graphView:Lcom/senseonics/graph/GraphView;

.field private manager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

.field scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/util/Calendar;)V
    .locals 9

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/senseonics/graph/GraphManagerView$1;

    invoke-direct {v0, p0}, Lcom/senseonics/graph/GraphManagerView$1;-><init>(Lcom/senseonics/graph/GraphManagerView;)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphManagerViewListener:Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    .line 104
    new-instance v0, Lcom/senseonics/graph/GraphManagerView$2;

    invoke-direct {v0, p0}, Lcom/senseonics/graph/GraphManagerView$2;-><init>(Lcom/senseonics/graph/GraphManagerView;)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    .line 43
    new-instance v0, Lcom/senseonics/graph/DateView;

    invoke-direct {v0, p1, p2, p4}, Lcom/senseonics/graph/DateView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v1, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    invoke-virtual {v1, v0}, Lcom/senseonics/graph/DateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    invoke-virtual {p0, v0}, Lcom/senseonics/graph/GraphManagerView;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/DateView;->setId(I)V

    .line 50
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/DateView;->setClickable(Z)V

    .line 51
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/DateView;->setFocusable(Z)V

    .line 52
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/DateView;->setBackgroundResource(I)V

    .line 55
    new-instance v0, Lcom/senseonics/graph/GraphView;

    sub-int v6, p3, p4

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p1

    move v5, p2

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/senseonics/graph/GraphView;-><init>(Landroid/content/Context;IIIILjava/util/Calendar;)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    .line 56
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x0

    .line 57
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 58
    iget-object p2, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    invoke-virtual {p2}, Lcom/senseonics/graph/DateView;->getId()I

    move-result p2

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    iget-object p2, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    invoke-virtual {p2, p1}, Lcom/senseonics/graph/GraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/GraphManagerView;->addView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    const p2, 0x7f090129

    invoke-virtual {p1, p2}, Lcom/senseonics/graph/GraphView;->setId(I)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    iget-object p2, p0, Lcom/senseonics/graph/GraphManagerView;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {p1, p2}, Lcom/senseonics/graph/GraphView;->setScrollManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V

    .line 64
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/graph/GraphManagerView;->graphManagerViewListener:Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/DateView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/graph/GraphManagerView;->manager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 70
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentVisibleDate()Ljava/util/Calendar;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->getCurrentVisibleDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEventMainThread(Lcom/senseonics/graph/events/GraphCacheEvent;)V
    .locals 2

    .line 88
    iget-boolean v0, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->newStartEndDates:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    iget-object v1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->glucoseValues:Ljava/util/List;

    iget-object p1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->events:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/graph/GraphView;->redrawGraphWithNewStartEndDates(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    iget-object v1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->glucoseValues:Ljava/util/List;

    iget-object p1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->events:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/graph/GraphView;->redrawGraphWithExistingStartEndDates(Ljava/util/List;Ljava/util/List;)V

    .line 92
    iget-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->manager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    invoke-interface {p1}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->dismissProgressDialog()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method

.method public setCurrentVisibleDate(Ljava/util/Calendar;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->graphView:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/GraphView;->selectDay(Ljava/util/Calendar;)V

    return-void
.end method

.method public setGraphManagerViewListener(Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->graphManagerViewListener:Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    return-void
.end method

.method public setManager(Lcom/senseonics/graph/GraphManagerView$GraphManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/senseonics/graph/GraphManagerView;->manager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    return-void
.end method

.method public setOnDateClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView;->dateView:Lcom/senseonics/graph/DateView;

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/DateView;->setListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
