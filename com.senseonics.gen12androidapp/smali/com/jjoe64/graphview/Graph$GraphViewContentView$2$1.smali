.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$2$1;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2$1;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-static {v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$1500(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V

    return-void
.end method
