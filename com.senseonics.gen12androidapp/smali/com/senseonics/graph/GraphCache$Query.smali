.class Lcom/senseonics/graph/GraphCache$Query;
.super Ljava/lang/Object;
.source "GraphCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Query"
.end annotation


# instance fields
.field endDate:Ljava/util/Calendar;

.field startDate:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/senseonics/graph/GraphCache;


# direct methods
.method private constructor <init>(Lcom/senseonics/graph/GraphCache;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/senseonics/graph/GraphCache$Query;->this$0:Lcom/senseonics/graph/GraphCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/graph/GraphCache;Lcom/senseonics/graph/GraphCache$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/senseonics/graph/GraphCache$Query;-><init>(Lcom/senseonics/graph/GraphCache;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    check-cast p1, Lcom/senseonics/graph/GraphCache$Query;

    .line 32
    iget-object v2, p0, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    iget-object v3, p1, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/graph/GraphCache$Query;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v2, p0, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/senseonics/graph/GraphCache$Query;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
