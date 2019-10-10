.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;
.super Ljava/util/TimerTask;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field final synthetic val$max:D


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;D)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iput-wide p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->val$max:D

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 721
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->val$max:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    new-instance v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3$1;

    invoke-direct {v1, p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3$1;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;)V

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-wide v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->val$max:D

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    .line 731
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 732
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->cancel()Z

    :goto_0
    return-void
.end method
