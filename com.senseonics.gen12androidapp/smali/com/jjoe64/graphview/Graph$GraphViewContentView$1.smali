.class Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph$GraphViewContentView;-><init>(Lcom/jjoe64/graphview/Graph;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field final synthetic val$this$0:Lcom/jjoe64/graphview/Graph;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Lcom/jjoe64/graphview/Graph;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->val$this$0:Lcom/jjoe64/graphview/Graph;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "Tap Test"

    const-string v0, "onDoubleTap"

    .line 259
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v3

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v5

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v7, v1, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/senseonics/graph/util/GraphUtils;->getCurrentPointXfromOnScreenX(FDDF)F

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$100(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v2, v2, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->access$200(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    iget-object v3, v3, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->access$300(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/senseonics/graph/util/GraphUtils;->getCalendarFromPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Tap Test"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapConfirmed->current point X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "|calendar:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$400(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0, v2}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$402(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Z)Z

    .line 228
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v0, v3}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$502(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)F

    .line 229
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$602(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)F

    .line 230
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->access$702(Lcom/jjoe64/graphview/Graph$GraphViewContentView;I)I

    .line 233
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;->this$1:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    .line 235
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 236
    new-instance v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$1;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 246
    new-instance v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1$2;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;Ljava/util/Calendar;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v2
.end method
