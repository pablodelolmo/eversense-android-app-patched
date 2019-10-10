.class public Lcom/jjoe64/graphview/Graph$GlucoseSection;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlucoseSection"
.end annotation


# instance fields
.field private color:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field private glucosePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GraphViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GraphViewData;",
            ">;",
            "Lcom/senseonics/graph/util/GraphUtils$COLOR;",
            ")V"
        }
    .end annotation

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->setGlucosePoints(Ljava/util/ArrayList;)V

    .line 1472
    invoke-virtual {p0, p2}, Lcom/jjoe64/graphview/Graph$GlucoseSection;->setColor(Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/senseonics/graph/util/GraphUtils$COLOR;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GlucoseSection;->color:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object v0
.end method

.method public getGlucosePoints()[Lcom/jjoe64/graphview/GraphViewDataInterface;
    .locals 3

    .line 1476
    new-instance v0, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GlucoseSection;->glucosePoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GlucoseSection;->glucosePoints:Ljava/util/ArrayList;

    .line 1478
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/jjoe64/graphview/Graph$GraphViewData;

    .line 1477
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    invoke-direct {v0, v1}, Lcom/jjoe64/graphview/GraphViewSeries;-><init>([Lcom/jjoe64/graphview/GraphViewDataInterface;)V

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    return-object v0
.end method

.method public setColor(Lcom/senseonics/graph/util/GraphUtils$COLOR;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GlucoseSection;->color:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-void
.end method

.method public setGlucosePoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GraphViewData;",
            ">;)V"
        }
    .end annotation

    .line 1482
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GlucoseSection;->glucosePoints:Ljava/util/ArrayList;

    return-void
.end method
