.class Lcom/senseonics/graph/GraphView$1;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lcom/senseonics/graph/GraphView$LineScrollManager;


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

    .line 127
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCancelled()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->hideEventGlucosePopUpTop()V

    return-void
.end method

.method public positionChanged(F)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$100(Lcom/senseonics/graph/GraphView;)Lcom/jjoe64/graphview/Graph;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/Graph;->ifEventAtPosition(F)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$100(Lcom/senseonics/graph/GraphView;)Lcom/jjoe64/graphview/Graph;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jjoe64/graphview/Graph;->ifGlucoseAtPosition(F)Lcom/senseonics/graph/util/Glucose;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v1}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->showEventPopUpTop(FLcom/senseonics/events/EventPoint;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/senseonics/graph/GraphView$ScrollManager;->showGlucosePopUpTop(FLcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphView$ScrollManager;->showNoGlucoseReadingPopUp(F)V

    :goto_0
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$000(Lcom/senseonics/graph/GraphView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphView;->access$002(Lcom/senseonics/graph/GraphView;Z)Z

    .line 143
    new-instance v0, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {v0, v1}, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;-><init>(Lcom/senseonics/graph/GraphView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$000(Lcom/senseonics/graph/GraphView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphView;->access$002(Lcom/senseonics/graph/GraphView;Z)Z

    .line 134
    new-instance v0, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;

    iget-object v1, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {v0, v1}, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;-><init>(Lcom/senseonics/graph/GraphView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$1;->this$0:Lcom/senseonics/graph/GraphView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphView;->access$002(Lcom/senseonics/graph/GraphView;Z)Z

    return-void
.end method
