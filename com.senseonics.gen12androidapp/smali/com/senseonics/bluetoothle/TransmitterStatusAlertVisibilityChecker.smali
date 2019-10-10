.class public Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;
.super Ljava/lang/Object;
.source "TransmitterStatusAlertVisibilityChecker.java"


# instance fields
.field private final CHECK_INTERVAL:J

.field private final DEFAULT_VISIBILITY:Z

.field private eventBus:Lde/greenrobot/event/EventBus;

.field protected transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->DEFAULT_VISIBILITY:Z

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->CHECK_INTERVAL:J

    .line 28
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    .line 29
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 30
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->getServerValue()Z

    move-result p0

    return p0
.end method

.method private checkVisibility()V
    .locals 6

    .line 38
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->shouldCheck()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 43
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->getCheckTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 44
    iget-wide v4, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->CHECK_INTERVAL:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->setCheckTime(J)V

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;-><init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private convertStringToBool(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "0"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private getServerValue()Z
    .locals 5

    .line 57
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->getVisibility()Z

    move-result v0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    .line 62
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 63
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 68
    const-class v3, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->convertStringToBool(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method protected getCheckTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getURL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->checkVisibility()V

    return-void
.end method

.method protected setCheckTime(J)V
    .locals 0

    return-void
.end method

.method protected setVisibility(Z)V
    .locals 0

    return-void
.end method

.method protected shouldCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
