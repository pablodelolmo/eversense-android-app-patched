.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;
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

.field final synthetic val$currentDate:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;Ljava/util/Calendar;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;->val$currentDate:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;->this$2:Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-object v0, v0, Lcom/jjoe64/graphview/Graph;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;->val$currentDate:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/jjoe64/graphview/LineGraphView$EventsManager;->tapAddNewEvent(Ljava/util/Calendar;)V

    return-void
.end method
