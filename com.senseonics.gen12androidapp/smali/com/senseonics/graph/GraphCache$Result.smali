.class Lcom/senseonics/graph/GraphCache$Result;
.super Ljava/lang/Object;
.source "GraphCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field eventPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field glucoseValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/senseonics/graph/GraphCache;


# direct methods
.method private constructor <init>(Lcom/senseonics/graph/GraphCache;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/senseonics/graph/GraphCache$Result;->this$0:Lcom/senseonics/graph/GraphCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/graph/GraphCache;Lcom/senseonics/graph/GraphCache$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/senseonics/graph/GraphCache$Result;-><init>(Lcom/senseonics/graph/GraphCache;)V

    return-void
.end method
