.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$1800(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string v0, "Tap Test"

    const-string v1, "isEventClicked: false 1"

    .line 856
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$1902(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Z)Z

    .line 858
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->hideEvent()V

    .line 859
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->access$2100(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    .line 860
    invoke-static {v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$2000(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    :cond_0
    return-void
.end method
