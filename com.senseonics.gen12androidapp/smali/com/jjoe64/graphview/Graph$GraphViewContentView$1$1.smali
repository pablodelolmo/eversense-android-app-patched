.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$402(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Z)Z

    .line 241
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    return-void
.end method
