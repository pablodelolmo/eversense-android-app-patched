.class public Lcom/jjoe64/graphview/GraphViewSeries;
.super Ljava/lang/Object;
.source "GraphViewSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;
    }
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field private final graphViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/Graph;",
            ">;"
        }
    .end annotation
.end field

.field final style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

.field values:[Lcom/jjoe64/graphview/GraphViewDataInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;[Lcom/jjoe64/graphview/GraphViewDataInterface;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    invoke-direct {p2}, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;-><init>()V

    .line 78
    :cond_0
    iput-object p2, p0, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    .line 79
    iput-object p3, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/GraphViewDataInterface;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    invoke-direct {v0}, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    .line 69
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    return-void
.end method


# virtual methods
.method public addGraphView(Lcom/jjoe64/graphview/Graph;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendData(Lcom/jjoe64/graphview/GraphViewDataInterface;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 99
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    array-length v1, v1

    .line 100
    iget-object v2, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 103
    iput-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 104
    iget-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/Graph;

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->scrollToEnd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public appendData(Lcom/jjoe64/graphview/GraphViewDataInterface;ZI)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, p3, :cond_0

    add-int/lit8 p3, v1, 0x1

    .line 123
    new-array p3, p3, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 124
    iget-object v3, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    invoke-static {v3, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    aput-object p1, p3, v1

    goto :goto_0

    .line 129
    :cond_0
    new-array v3, p3, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 130
    iget-object v4, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    invoke-static {v4, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v5

    .line 132
    aput-object p1, v3, p3

    move-object p3, v3

    .line 134
    :goto_0
    iput-object p3, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jjoe64/graphview/Graph;

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p3}, Lcom/jjoe64/graphview/Graph;->scrollToEnd()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getStyle()Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    return-object v0
.end method

.method public removeGraphView(Lcom/jjoe64/graphview/Graph;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetData([Lcom/jjoe64/graphview/GraphViewDataInterface;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 167
    iget-object p1, p0, Lcom/jjoe64/graphview/GraphViewSeries;->graphViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/Graph;

    .line 168
    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    goto :goto_0

    :cond_0
    return-void
.end method
