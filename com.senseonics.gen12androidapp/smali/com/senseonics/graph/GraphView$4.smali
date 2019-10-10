.class Lcom/senseonics/graph/GraphView$4;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lcom/jjoe64/graphview/LineGraphView$EventsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphView;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hidePopUpEvent()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method

.method public onEventClick(FFLcom/jjoe64/graphview/Graph$EventGroup;)V
    .locals 4

    .line 295
    sget-boolean v0, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object p1, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {p1}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    goto :goto_0

    .line 298
    :cond_0
    sput p2, Lcom/senseonics/graph/util/GraphUtils;->popUpY:F

    .line 299
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    .line 300
    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$100(Lcom/senseonics/graph/GraphView;)Lcom/jjoe64/graphview/Graph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->getRectWidth()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    iget v3, p3, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils;->popUpCalendar:Ljava/util/Calendar;

    .line 305
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/senseonics/graph/GraphView;->createEventsPopUp(FFLcom/jjoe64/graphview/Graph$EventGroup;)V

    :goto_0
    return-void
.end method

.method public tapAddNewEvent(Ljava/util/Calendar;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$4;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphView$ScrollManager;->tapAddNewEvent(Ljava/util/Calendar;)V

    return-void
.end method
