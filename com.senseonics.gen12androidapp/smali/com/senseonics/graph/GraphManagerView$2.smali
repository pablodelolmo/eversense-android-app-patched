.class Lcom/senseonics/graph/GraphManagerView$2;
.super Ljava/lang/Object;
.source "GraphManagerView.java"

# interfaces
.implements Lcom/senseonics/graph/GraphView$ScrollManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphManagerView;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphManagerView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dayChanged(Ljava/util/Date;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$000(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;->onDateChanged(Ljava/util/Date;)V

    .line 109
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$100(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/DateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/DateView;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public dayChanged(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$000(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;->onDateChanged(Ljava/util/Date;)V

    .line 115
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$100(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/DateView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/graph/DateView;->setDate(Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public hideEventGlucosePopUpTop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->hideEventGlucosePopUp()V

    return-void
.end method

.method public onEventSelected(Lcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->onEventSelected(Lcom/senseonics/events/EventPoint;)V

    return-void
.end method

.method public refreshGlucoseData()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$000(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;->onGlucoseValuesRefreshed()V

    return-void
.end method

.method public showEventPopUpTop(FLcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->showEventPopUp(FLcom/senseonics/events/EventPoint;)V

    return-void
.end method

.method public showGlucosePopUpTop(FLcom/senseonics/graph/util/Glucose;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->showGlucosePopUp(FLcom/senseonics/graph/util/Glucose;)V

    return-void
.end method

.method public showNoGlucoseReadingPopUp(F)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->showNoGlucoseReadingPopUp(F)V

    return-void
.end method

.method public tapAddNewEvent(Ljava/util/Calendar;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/senseonics/graph/GraphManagerView$2;->this$0:Lcom/senseonics/graph/GraphManagerView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphManagerView;->access$200(Lcom/senseonics/graph/GraphManagerView;)Lcom/senseonics/graph/GraphManagerView$GraphManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphManagerView$GraphManager;->tapAddNewEvent(Ljava/util/Calendar;)V

    return-void
.end method
