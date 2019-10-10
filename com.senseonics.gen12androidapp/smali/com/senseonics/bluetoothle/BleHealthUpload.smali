.class public Lcom/senseonics/bluetoothle/BleHealthUpload;
.super Ljava/lang/Object;
.source "BleHealthUpload.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final ALERT_ID:Ljava/lang/String;

.field private final ALERT_NAME:Ljava/lang/String;

.field private final BLE_HEALTH_COUNTDOWN_INTERVAL:J

.field private final BLE_HEALTH_UPLOAD_INTERVAL:J

.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

.field private cTimer:Landroid/os/CountDownTimer;

.field private context:Landroid/content/Context;

.field private startTime:J

.field private startTimeTicker:J

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/BleHealthMonitor;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class p1, Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string p1, "1010"

    .line 26
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->ALERT_ID:Ljava/lang/String;

    const-string p1, "BLELogging"

    .line 27
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->ALERT_NAME:Ljava/lang/String;

    const-wide/32 p1, 0xdbba0

    .line 30
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->BLE_HEALTH_UPLOAD_INTERVAL:J

    const-wide/16 p1, 0x7530

    .line 31
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->BLE_HEALTH_COUNTDOWN_INTERVAL:J

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/BleHealthUpload;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/BleHealthUpload;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/senseonics/bluetoothle/BleHealthUpload;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/BleHealthUpload;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/senseonics/bluetoothle/BleHealthUpload;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/senseonics/bluetoothle/BleHealthUpload;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/bluetoothle/BleHealthUpload;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->startBleHealthSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/bluetoothle/BleHealthUpload;)Landroid/os/CountDownTimer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private startBleHealthSync()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: No Internet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: No Valid Account Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, ">>> Sync BLE health Now <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT"

    .line 117
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->snapshot()Ljava/lang/String;

    return-void

    .line 103
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: Initial Launch | not loggin in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTimer()V
    .locals 8

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    .line 68
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    .line 70
    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x7530

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/bluetoothle/BleHealthUpload$2;-><init>(Lcom/senseonics/bluetoothle/BleHealthUpload;JJ)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    .line 93
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
