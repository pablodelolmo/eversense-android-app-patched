.class public Lcom/jjoe64/graphview/Graph$EventGroup;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventGroup"
.end annotation


# instance fields
.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jjoe64/graphview/Graph;

.field public x:F

.field xOnScreen:F

.field y:F

.field yOnScreen:F


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/Graph;FF)V
    .locals 0

    .line 2088
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 2089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    iput p2, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    .line 2091
    iput p3, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->y:F

    .line 2092
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->events:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/Graph;FFFF)V
    .locals 0

    .line 2095
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    iput p2, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    .line 2098
    iput p3, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->y:F

    .line 2099
    iput p4, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    .line 2100
    iput p5, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    .line 2101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 2105
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->events:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNear(Lcom/senseonics/events/EventPoint;)Z
    .locals 2

    .line 2109
    iget v0, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->x:F

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2110
    iget v1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->y:F

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2112
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNearOnScreen(Lcom/senseonics/events/EventPoint;)Z
    .locals 2

    .line 2120
    iget v0, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getxOnScreen()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2121
    iget v1, p0, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getyOnScreen()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2123
    sget v1, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget v0, Lcom/senseonics/graph/util/GraphUtils;->eventBitmapSize:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
