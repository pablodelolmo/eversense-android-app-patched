.class public Lcom/senseonics/util/StaleDataChecker;
.super Ljava/lang/Object;
.source "StaleDataChecker.java"


# instance fields
.field private isStaleData:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/senseonics/util/StaleDataChecker;->isStaleData:Z

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    add-int/lit8 p3, p3, 0x3c

    int-to-long p1, p3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/senseonics/util/StaleDataChecker;->isStaleData:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isStaleData()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/senseonics/util/StaleDataChecker;->isStaleData:Z

    return v0
.end method
