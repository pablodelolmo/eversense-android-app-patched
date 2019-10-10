.class Lcom/jjoe64/graphview/Graph$1;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/Graph;->setScalable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjoe64/graphview/Graph;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/Graph;)V
    .locals 0

    .line 1888
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/jjoe64/graphview/ScaleGestureDetector;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1891
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 1894
    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 1895
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/ScaleGestureDetector;->getScaleFactor()D

    move-result-wide v7

    div-double/2addr v3, v7

    double-to-float v3, v3

    .line 1896
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->maxViewPortSize:F

    cmpl-float v4, v3, v4

    const/4 v7, 0x0

    if-gtz v4, :cond_7

    sget v4, Lcom/senseonics/graph/util/GraphUtils;->minViewPortSize:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto/16 :goto_3

    .line 1900
    :cond_0
    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 1901
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/ScaleGestureDetector;->getScaleFactor()D

    move-result-wide v8

    div-double/2addr v3, v8

    sput-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 1903
    iget-object v3, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    sget-wide v8, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    div-double/2addr v8, v5

    sub-double/2addr v1, v8

    invoke-static {v3, v1, v2}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    .line 1907
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    .line 1908
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v8

    cmpg-double v1, v8, v3

    if-gez v1, :cond_1

    .line 1909
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1, v3, v4}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    .line 1913
    :cond_1
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v8

    .line 1914
    sget-wide v10, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-nez v1, :cond_2

    .line 1915
    sput-wide v8, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 1917
    :cond_2
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v10

    sget-wide v14, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v10, v14

    sub-double/2addr v10, v8

    cmpl-double v1, v10, v12

    if-lez v1, :cond_4

    .line 1921
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v12

    sub-double/2addr v12, v10

    cmpl-double v1, v12, v3

    if-lez v1, :cond_3

    .line 1922
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-object v3, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    sub-double/2addr v3, v10

    invoke-static {v1, v3, v4}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    goto :goto_0

    .line 1925
    :cond_3
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1, v3, v4}, Lcom/jjoe64/graphview/Graph;->access$1002(Lcom/jjoe64/graphview/Graph;D)D

    .line 1926
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1927
    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    sub-double/2addr v8, v3

    sput-wide v8, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 1931
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    sput-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 1933
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1934
    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$100(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->access$200(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->access$300(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v8, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1935
    invoke-static {v8}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1933
    invoke-static {v1, v3, v4, v8}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v1

    .line 1937
    iget-object v3, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1938
    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->access$100(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1939
    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->access$200(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v8, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1940
    invoke-static {v8}, Lcom/jjoe64/graphview/Graph;->access$300(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v8

    iget-object v9, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1941
    invoke-static {v9}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v9, v9

    sget-wide v11, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 1937
    invoke-static {v3, v4, v8, v9}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v3

    .line 1942
    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1943
    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->access$100(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v8, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1944
    invoke-static {v8}, Lcom/jjoe64/graphview/Graph;->access$200(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v8

    iget-object v9, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1945
    invoke-static {v9}, Lcom/jjoe64/graphview/Graph;->access$300(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v9

    iget-object v10, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 1946
    invoke-static {v10}, Lcom/jjoe64/graphview/Graph;->access$1000(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-double v10, v10

    sget-wide v12, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    div-double/2addr v12, v5

    add-double/2addr v10, v12

    double-to-float v5, v10

    .line 1942
    invoke-static {v4, v8, v9, v5}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v4

    .line 1948
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1949
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v5, v8

    .line 1950
    sget-wide v8, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    cmp-long v5, v5, v8

    if-lez v5, :cond_5

    .line 1951
    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->access$000(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1952
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1951
    invoke-interface {v4, v1, v3}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 1954
    :cond_5
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$000(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;)V

    .line 1958
    :goto_1
    invoke-static {}, Lcom/senseonics/graph/util/GraphUtils;->getDiffTime()J

    move-result-wide v3

    sput-wide v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataInterval:J

    .line 1959
    sget-boolean v1, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataIntervalChanged:Z

    if-eqz v1, :cond_6

    .line 1960
    sput-boolean v7, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataIntervalChanged:Z

    .line 1961
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->access$2300(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/Graph$ScaleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/jjoe64/graphview/Graph$ScaleManager;->onScaleEvent()V

    goto :goto_2

    .line 1963
    :cond_6
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$1;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    :goto_2
    return v2

    :cond_7
    :goto_3
    return v7
.end method
