.class public Lcom/senseonics/graph/events/GraphCacheEvent;
.super Ljava/lang/Object;
.source "GraphCacheEvent.java"


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field public final glucoseValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation
.end field

.field public final newStartEndDates:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/senseonics/graph/events/GraphCacheEvent;->glucoseValues:Ljava/util/List;

    .line 16
    iput-object p2, p0, Lcom/senseonics/graph/events/GraphCacheEvent;->events:Ljava/util/List;

    .line 17
    iput-boolean p3, p0, Lcom/senseonics/graph/events/GraphCacheEvent;->newStartEndDates:Z

    return-void
.end method
