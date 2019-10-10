.class Lcom/senseonics/graph/GraphView$7$1;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphView$7;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/graph/GraphView$7;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView$7;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$7$1;->this$1:Lcom/senseonics/graph/GraphView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 590
    iget-object p1, p0, Lcom/senseonics/graph/GraphView$7$1;->this$1:Lcom/senseonics/graph/GraphView$7;

    iget-object p1, p1, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {p1}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/graph/GraphView$7$1;->this$1:Lcom/senseonics/graph/GraphView$7;

    iget-object p2, p2, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    .line 591
    invoke-static {p2}, Lcom/senseonics/graph/GraphView;->access$700(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/util/EventsListAdapter;

    move-result-object p2

    .line 592
    invoke-virtual {p2, p3}, Lcom/senseonics/graph/util/EventsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/events/EventPoint;

    .line 591
    invoke-interface {p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->onEventSelected(Lcom/senseonics/events/EventPoint;)V

    .line 593
    iget-object p1, p0, Lcom/senseonics/graph/GraphView$7$1;->this$1:Lcom/senseonics/graph/GraphView$7;

    iget-object p1, p1, Lcom/senseonics/graph/GraphView$7;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-virtual {p1}, Lcom/senseonics/graph/GraphView;->hidePopUp()V

    return-void
.end method
