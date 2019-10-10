.class public Lcom/senseonics/graph/LazyLoadGraphModel;
.super Ljava/lang/Object;
.source "LazyLoadGraphModel.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private intentUtils:Lcom/senseonics/util/IntentUtils;

.field private startDate:Ljava/util/Date;

.field private timeProvider:Lcom/senseonics/util/TimeProvider;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/IntentUtils;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TimeProvider;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    .line 27
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->TAG:Ljava/lang/String;

    const-string v1, "New instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p2, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 29
    iput-object p1, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->intentUtils:Lcom/senseonics/util/IntentUtils;

    .line 30
    iput-object p3, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 31
    invoke-direct {p0}, Lcom/senseonics/graph/LazyLoadGraphModel;->reset()V

    return-void
.end method

.method private getStartTimeAsCalendar()Ljava/util/Calendar;
    .locals 2

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method private possiblyRetreatStartDate(Ljava/util/Date;)Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x6

    const/4 v1, -0x3

    .line 63
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reset()V
    .locals 2

    .line 53
    sget-object v0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 56
    :cond_0
    sget-object v0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public refreshGraphWithExistingStartEndDates()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshGraphWithExistingStartEndDates to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->timeProvider:Lcom/senseonics/util/TimeProvider;

    invoke-virtual {v0}, Lcom/senseonics/util/TimeProvider;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    .line 43
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->intentUtils:Lcom/senseonics/util/IntentUtils;

    invoke-direct {p0}, Lcom/senseonics/graph/LazyLoadGraphModel;->getStartTimeAsCalendar()Ljava/util/Calendar;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/IntentUtils;->refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    return-void
.end method

.method public refreshGraphWithNewStartEndDates()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshGraphWithNewStartEndDates to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->timeProvider:Lcom/senseonics/util/TimeProvider;

    invoke-virtual {v0}, Lcom/senseonics/util/TimeProvider;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    .line 49
    iget-object v0, p0, Lcom/senseonics/graph/LazyLoadGraphModel;->intentUtils:Lcom/senseonics/util/IntentUtils;

    invoke-direct {p0}, Lcom/senseonics/graph/LazyLoadGraphModel;->getStartTimeAsCalendar()Ljava/util/Calendar;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/IntentUtils;->refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    return-void
.end method

.method public refreshWithDate(Ljava/util/Date;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/senseonics/graph/LazyLoadGraphModel;->possiblyRetreatStartDate(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    :cond_0
    return-void
.end method
