.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$3$1;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$1500(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V

    return-void
.end method
