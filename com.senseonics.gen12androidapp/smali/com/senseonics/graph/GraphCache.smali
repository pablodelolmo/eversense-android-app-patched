.class public Lcom/senseonics/graph/GraphCache;
.super Ljava/lang/Object;
.source "GraphCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/GraphCache$Result;,
        Lcom/senseonics/graph/GraphCache$Query;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/senseonics/graph/GraphCache$Query;",
            "Lcom/senseonics/graph/GraphCache$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/graph/GraphCache;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/graph/GraphCache;->lruCache:Landroid/util/LruCache;

    .line 58
    iget-object v0, p0, Lcom/senseonics/graph/GraphCache;->TAG:Ljava/lang/String;

    const-string v1, "Creating new GraphCache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/senseonics/graph/GraphCache;->eventBus:Lde/greenrobot/event/EventBus;

    .line 60
    iput-object p2, p0, Lcom/senseonics/graph/GraphCache;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    return-void
.end method

.method private getResult(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/senseonics/graph/GraphCache$Result;
    .locals 5

    .line 70
    new-instance v0, Lcom/senseonics/graph/GraphCache$Query;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/senseonics/graph/GraphCache$Query;-><init>(Lcom/senseonics/graph/GraphCache;Lcom/senseonics/graph/GraphCache$1;)V

    .line 71
    iput-object p1, v0, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    .line 72
    iput-object p2, v0, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    .line 73
    iget-object v2, p0, Lcom/senseonics/graph/GraphCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/graph/GraphCache$Result;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lcom/senseonics/graph/GraphCache$Result;

    invoke-direct {v2, p0, v1}, Lcom/senseonics/graph/GraphCache$Result;-><init>(Lcom/senseonics/graph/GraphCache;Lcom/senseonics/graph/GraphCache$1;)V

    .line 76
    iget-object v1, p0, Lcom/senseonics/graph/GraphCache;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataInterval:J

    .line 77
    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/senseonics/db/DatabaseManager;->getGlucoseBetween(Ljava/util/Calendar;Ljava/util/Calendar;J)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/senseonics/graph/GraphCache$Result;->glucoseValues:Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/senseonics/graph/GraphCache;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    sget v4, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    .line 79
    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/senseonics/db/DatabaseManager;->getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v2, Lcom/senseonics/graph/GraphCache$Result;->eventPoints:Ljava/util/List;

    .line 81
    iget-object p1, p0, Lcom/senseonics/graph/GraphCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method


# virtual methods
.method public refresh(Ljava/util/Calendar;Ljava/util/Calendar;Z)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/senseonics/graph/util/GraphUtils;->getDiffTime()J

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseDataInterval:J

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/senseonics/graph/GraphCache;->getResult(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/senseonics/graph/GraphCache$Result;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/senseonics/graph/GraphCache;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/graph/events/GraphCacheEvent;

    iget-object v1, p1, Lcom/senseonics/graph/GraphCache$Result;->glucoseValues:Ljava/util/List;

    iget-object p1, p1, Lcom/senseonics/graph/GraphCache$Result;->eventPoints:Ljava/util/List;

    invoke-direct {v0, v1, p1, p3}, Lcom/senseonics/graph/events/GraphCacheEvent;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
