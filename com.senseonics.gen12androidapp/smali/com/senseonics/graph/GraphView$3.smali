.class Lcom/senseonics/graph/GraphView$3;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphView;->slide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphView;

.field final synthetic val$stepSize:I


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphView;I)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$3;->this$0:Lcom/senseonics/graph/GraphView;

    iput p2, p0, Lcom/senseonics/graph/GraphView$3;->val$stepSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$3;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$000(Lcom/senseonics/graph/GraphView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$3;->this$0:Lcom/senseonics/graph/GraphView;

    iget v1, p0, Lcom/senseonics/graph/GraphView$3;->val$stepSize:I

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphView;->slide(I)V

    :cond_0
    return-void
.end method
