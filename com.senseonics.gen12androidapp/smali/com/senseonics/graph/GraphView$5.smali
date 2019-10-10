.class Lcom/senseonics/graph/GraphView$5;
.super Ljava/lang/Object;
.source "GraphView.java"

# interfaces
.implements Lcom/jjoe64/graphview/Graph$ScaleManager;


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

    .line 325
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$5;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleEvent()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/senseonics/graph/GraphView$5;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$200(Lcom/senseonics/graph/GraphView;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->refreshGlucoseData()V

    return-void
.end method
