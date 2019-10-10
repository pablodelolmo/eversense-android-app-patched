.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;
.super Ljava/util/TimerTask;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field final synthetic val$min:D


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;D)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iput-wide p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->val$min:D

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->val$min:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    new-instance v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2$1;

    invoke-direct {v1, p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2$1;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;)V

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-wide v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->val$min:D

    invoke-static {v0, v1, v2}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    .line 701
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 702
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->cancel()Z

    :goto_0
    return-void
.end method
