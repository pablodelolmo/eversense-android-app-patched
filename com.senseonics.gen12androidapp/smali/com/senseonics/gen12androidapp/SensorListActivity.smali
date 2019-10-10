.class public Lcom/senseonics/gen12androidapp/SensorListActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    }
.end annotation


# static fields
.field private static final MLResponseMessageArgument_ATCCAL:I = 0x3

.field private static final MLResponseMessageArgument_CRC:I = 0x0

.field private static final MLResponseMessageArgument_EEPROM:I = 0x2

.field private static final kBaseFileExtension:Ljava/lang/String; = ".csv"

.field private static final kNumberEEPROMBlocks:I = 0x1a


# instance fields
.field private addressAndValuesACT:[I

.field private addressAndValuesEEPROM:[I

.field private avPlaceSensor:Landroid/app/Dialog;

.field private avPlaceSensorCounter:I

.field protected broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

.field private checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

.field private checkTxTimeCounter:I

.field private dialog:Landroid/app/Dialog;

.field private fileVersionString:Ljava/lang/String;

.field private imageView1:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private imageView3:Landroid/widget/ImageView;

.field private linkCheckCounter:I

.field private linkCheckHander:Landroid/os/Handler;

.field private linkCheckRunnable:Ljava/lang/Runnable;

.field private linkDetectedSensorButton:Landroid/widget/Button;

.field private linkDetectedSensorLayout:Landroid/widget/LinearLayout;

.field private linkDetectedSensorTextView:Landroid/widget/TextView;

.field private linkedSensorLayout:Landroid/widget/LinearLayout;

.field private linkedSensorSerialNumberArrived:Z

.field private linkedSensorTextView:Landroid/widget/TextView;

.field private linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field private linkingInProgress:Z

.field private linkingLayout:Landroid/widget/LinearLayout;

.field private linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field private oldSensorInsertionDate:Ljava/util/Calendar;

.field private progressBar1:Landroid/widget/ProgressBar;

.field private progressBar2:Landroid/widget/ProgressBar;

.field private progressBar3:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sendNewSensorIdExecuted:Z

.field protected sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private unlinkedSensorLayout:Landroid/widget/LinearLayout;

.field private unlinkedSensorLeftTextView:Landroid/widget/TextView;

.field private unlinkedSensorSerialNumberArrived:Z

.field private unlinkedSensorTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 97
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sendNewSensorIdExecuted:Z

    .line 99
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 261
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$4;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$4;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    .line 489
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$5;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$5;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/SensorListActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTransmitterDateTimePre()V

    return-void
.end method

.method static synthetic access$302(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object p1
.end method

.method static synthetic access$400(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->dataSentToTransmitter()V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private checkTransmitterDateTimePre()V
    .locals 4

    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 359
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 362
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dataSentToTransmitter()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f0800af

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    sput-boolean v1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingRequestsInitialized:Z

    .line 336
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sendNewSensorIdExecuted:Z

    const-string v0, "Linking"

    const-string v1, "Step 3: link the new sensor"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteSensorID(J)V

    .line 342
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private generatePassword()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    .line 585
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/16 v1, 0x24

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 585
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    .line 588
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "00Sensor"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".csv"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".csv"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "Algo format version"

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get sensor file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getTxHHDTimeDiff()J
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterTime()J

    move-result-wide v0

    const-string v2, "#4021"

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre Sensor linking : tx time -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "#4021"

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time diff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isAllDataLoaded()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkCheck()V
    .locals 7

    .line 416
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 418
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    :cond_1
    const-string v0, "Linking"

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkCheckCounter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Linking"

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avPlaceSensorCounter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_2

    const v0, 0x7f0f0081

    .line 426
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V

    :cond_2
    const-string v0, "Linking"

    const-string v2, "1. Get state copy"

    .line 430
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    .line 434
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 436
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v4

    .line 437
    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    .line 439
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 442
    :cond_3
    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 443
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_4
    :goto_0
    const-string v1, "Linking"

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Check Insertion Date: old->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " new->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> isSet? "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    const-string v3, "Linking"

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3. Read Current Phase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v1, v3, :cond_5

    .line 454
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_5
    const-string v1, "Linking"

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. needForceRead? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 461
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postForceGlucoseMeasurement()V

    .line 462
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 463
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    .line 464
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 465
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 466
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 468
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 469
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    const-string v0, "Linking"

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5. Link Finished! ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iput v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 475
    iput v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 477
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    .line 482
    :cond_7
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 485
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->step3Finished()V

    :cond_8
    :goto_1
    return-void
.end method

.method private removeCheckAndSyncTransmitterDateTimeCallBack()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1178
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private removeLinkCheckCallBack()V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "Linking"

    const-string v1, "----- removeLinkCheckCallBack -----"

    .line 1169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1171
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private resetCheckTxTimeCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method private updateTransmitterTime()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 354
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    return-void
.end method


# virtual methods
.method public GetCRCValue([B)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0xffff

    const/4 v1, 0x0

    const v2, 0xffff

    .line 1153
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1154
    aget-byte v3, p1, v1

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    :goto_1
    if-lez v4, :cond_1

    const v3, 0x8000

    and-int/2addr v3, v2

    if-lez v3, :cond_0

    shl-int/lit8 v2, v2, 0x1

    const v3, 0x11021

    xor-int/2addr v2, v3

    goto :goto_2

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    xor-int/lit8 p1, v2, 0x0

    return p1
.end method

.method public checkAndSyncTransmitterDateTime()V
    .locals 6

    .line 380
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 382
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getTxHHDTimeDiff()J

    move-result-wide v0

    .line 384
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 385
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 389
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 390
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    return-void

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    .line 396
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v3, v3, 0x5

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 401
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 403
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkMMAandTXcompatibility()Ljava/lang/String;
    .locals 7

    .line 596
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 597
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :try_start_0
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CompatibilityFileInputInfo>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:AppOS>1</tem:AppOS>\n<!--Optional:-->\n<tem:AppVersion>%appversion</tem:AppVersion>\n<!--Optional:-->\n<tem:FWVersion>%fwversion</tem:FWVersion>\n</tem:CompatibilityFileInputInfo>\n</soapenv:Body>\n</soapenv:Envelope>\n"

    const-string v4, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 624
    :try_start_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 625
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-object v1, v4

    .line 629
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    const-string v5, "%username"

    .line 635
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%password"

    .line 636
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%appversion"

    .line 637
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%fwversion"

    .line 638
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 640
    const-class v1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMMAandTXcompatibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    sget-object v2, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 644
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v3, "text/xml; charset=utf-8"

    .line 645
    invoke-virtual {v1, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SOAPAction"

    .line 646
    sget-object v3, Lcom/senseonics/util/Utils;->kAppFWCompatibilityCheckWebserviceFunctionCall:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 649
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x61a8

    .line 651
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 652
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v2, "UTF-8"

    .line 653
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 655
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5

    .line 658
    :try_start_3
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    return-object v0

    :catch_1
    move-exception v0

    .line 670
    :try_start_4
    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 671
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 667
    :catch_2
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 668
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect timeout"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 664
    :catch_3
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 665
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Socket timeout"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 662
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 673
    :goto_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq v0, v1, :cond_1

    .line 674
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$6;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$6;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const-string v0, "-1"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 685
    const-class v1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, "-1"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "GMT"

    .line 530
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "MMddyyyy"

    .line 531
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "HmacSHA256"

    .line 538
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 540
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 542
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p2, "ASCII"

    .line 544
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 546
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 547
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 548
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    .line 550
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 560
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 558
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 556
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public displayLinkingFailure()V
    .locals 5

    .line 1082
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    const/4 v0, 0x0

    .line 1083
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    const-string v0, ""

    const-string v1, ""

    .line 1086
    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$9;->$SwitchMap$com$senseonics$gen12androidapp$SensorListActivity$MLSensorLinkingError:[I

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v3}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const v0, 0x7f0f027b

    .line 1132
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f027e

    .line 1133
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f0f01e7

    .line 1126
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01e8

    .line 1127
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f0f01ff

    .line 1122
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01fe

    .line 1123
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f0f0128

    .line 1118
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0127

    .line 1119
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f0f026b

    .line 1114
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f026a

    .line 1115
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0f01f4

    .line 1110
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01f5

    .line 1111
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0f00f5

    .line 1106
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00f6

    .line 1107
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0f0222

    .line 1102
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0223

    .line 1103
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0f0296

    .line 1098
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0297

    .line 1099
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0f0129

    .line 1088
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const v2, 0x7f0f012a

    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%%"

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 1091
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%%"

    sget-object v3, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    .line 1094
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    :goto_0
    :pswitch_9
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1138
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1139
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1140
    :cond_1
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v3, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0, v1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    .line 1142
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V
    .locals 4

    .line 1183
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v0, "Linking"

    const-string v1, "Create avPlaceSensor"

    .line 1185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    :cond_0
    const-string p1, "Linking"

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avPlaceSensor isShowing?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Linking"

    const-string v0, "avPlaceSensor need to show!!"

    .line 1191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public getAvPlaceSensor()Landroid/app/Dialog;
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-object v0
.end method

.method public getCheckTxTimeCounter()I
    .locals 1

    .line 1240
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return v0
.end method

.method public getOldSensorInsertionDate()Ljava/util/Calendar;
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public isLinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1232
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return v0
.end method

.method public isUnlinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return v0
.end method

.method public linkingFailedLayout()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 520
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 521
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorIdRequest()V

    .line 525
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    :cond_1
    return-void
.end method

.method public makeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    sget-object v1, Lcom/senseonics/util/Utils;->WRITE_N_BYTE_FINISHED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0032

    .line 113
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->initializeLayout(I)Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0147

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09017f

    .line 117
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0902df

    .line 118
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    .line 119
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090225

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    .line 120
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f090177

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    .line 121
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    const v2, 0x7f0f00b1

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f09017d

    .line 123
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f09017e

    .line 124
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f09017c

    .line 125
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    const p1, 0x7f090181

    .line 126
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f09020e

    .line 127
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const p1, 0x7f09020f

    .line 128
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const p1, 0x7f090210

    .line 129
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const p1, 0x7f090151

    .line 130
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const p1, 0x7f090152

    .line 131
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const p1, 0x7f090153

    .line 132
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    .line 134
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->makeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 161
    new-instance p1, Landroid/app/ProgressDialog;

    const v1, 0x7f100145

    invoke-direct {p1, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 162
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080099

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1199
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    .line 1200
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 1201
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 1202
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1203
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 3

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 216
    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sendNewSensorIdExecuted:Z

    if-eqz p1, :cond_1

    const-string p1, "Linking"

    const-string v0, "--- Link Check START ---"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sendNewSensorIdExecuted:Z

    .line 223
    iput p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 224
    iput p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 227
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    :goto_0
    const-string p1, "Linking"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.1 Save old insertion date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 235
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 236
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_2
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;)V
    .locals 4

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 169
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 170
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    if-ne v0, v1, :cond_5

    const-string v0, "Linking"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkedSensorSerialNumberArrived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v2, :cond_4

    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-nez v0, :cond_0

    .line 181
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_2
    :goto_0
    const-string v0, "Linking"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowTextAndButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :goto_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_6

    .line 210
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_6
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 310
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 313
    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt p1, v1, :cond_6

    .line 949
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 950
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Version"

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result p2

    .line 956
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 959
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2

    if-lt p2, v5, :cond_1

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_0

    const-string p1, "Algo format version"

    const-string p2, "Compatibility check passes 0"

    .line 962
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Algo format version"

    const-string p2, "Compatibility check failed 0"

    .line 964
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "Algo format version"

    const-string p2, "Compatibility check failed 1"

    .line 968
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 971
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v1, :cond_4

    if-nez p2, :cond_3

    const-string p1, "Algo format version"

    const-string p2, "Compatibility check passes 2"

    .line 973
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "Algo format version"

    const-string p2, "Compatibility check failed 2"

    .line 975
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string p1, "Algo format version"

    const-string p2, "Compatibility check failed 3"

    .line 979
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 983
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 984
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 986
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    .line 987
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    .line 988
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 992
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object p2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-ne p1, p2, :cond_8

    .line 993
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    if-eqz p1, :cond_7

    .line 995
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$8;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$8;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1006
    sput-boolean v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingRequestsInitialized:Z

    .line 1007
    sput v2, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    .line 1010
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p1

    const-wide v0, 0xffffffffL

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteSensorID(J)V

    .line 1014
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    const/16 v0, 0xa24

    const/16 v1, 0xc

    invoke-virtual {p1, p2, v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)I

    move-result p1

    .line 1015
    sget p2, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    add-int/2addr p2, p1

    sput p2, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    .line 1017
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    new-array p1, p1, [I

    .line 1018
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x1200

    .line 1020
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    const/16 v3, 0x120c

    invoke-virtual {v0, p1, v3, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)I

    move-result p1

    .line 1021
    sget v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    add-int/2addr v0, p1

    sput v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    .line 1023
    new-array p1, v1, [I

    .line 1024
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1025
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)I

    move-result p1

    .line 1026
    sget p2, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    add-int/2addr p2, p1

    sput p2, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    const-string p1, "Linking"

    .line 1031
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "linkingPacketsNumber total: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1034
    :cond_7
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1038
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object p2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, p2, :cond_9

    .line 1039
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingFailedLayout()V

    .line 1040
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_9
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 8

    .line 864
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v0, 0x0

    .line 869
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 870
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 871
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 872
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 874
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    move-object v2, v0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-eq p1, v5, :cond_4

    .line 877
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, " PARSE -- NAME --"

    .line 879
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    goto :goto_2

    .line 884
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v5, "text"

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v3, p1

    goto :goto_1

    :pswitch_1
    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 906
    :cond_3
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 911
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 909
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 914
    :cond_4
    :goto_5
    const-class p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedCRC:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|eepromString:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|atccalString:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 917
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_2
    const-string v1, "UTF-8"

    .line 920
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 921
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->GetCRCValue([B)I

    move-result p1

    .line 923
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 924
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingFailedLayout()V

    .line 925
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 926
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_6

    .line 929
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 933
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 936
    :cond_6
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingFailedLayout()V

    .line 937
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 938
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareLinkingLayout()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAvPlaceSensor(Landroid/app/Dialog;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-void
.end method

.method public setCheckTxTimeCounter(I)V
    .locals 0

    .line 1244
    iput p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method public setLinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1236
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public setLinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method public setSendNewSensorIdExecuted(Z)V
    .locals 0

    .line 1224
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sendNewSensorIdExecuted:Z

    return-void
.end method

.method public setUnlinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1260
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public startDownloadingAndSyncingOfEEPROMAndATCCALParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 731
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 732
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 741
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%u%p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%u"

    .line 743
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%p"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "finalString"

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UTF-8"

    .line 748
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 749
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->GetCRCValue([B)I

    move-result v2

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CalibrationFileInfoEx>\n<!--Optional:-->\n<tem:ATCCALFetchFlag>1</tem:ATCCALFetchFlag>\n<!--Optional:-->\n<tem:CRC>%crc</tem:CRC>\n<!--Optional:-->\n<tem:EEPROMFetchFlag>1</tem:EEPROMFetchFlag>\n<!--Optional:-->\n<tem:FileName>%id</tem:FileName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n</tem:CalibrationFileInfoEx>\n</soapenv:Body>\n</soapenv:Envelope>\n"

    const-string v4, "%crc"

    .line 772
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%id"

    .line 773
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%password"

    .line 774
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%username"

    .line 775
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "request string"

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 781
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "text/xml; charset=utf-8"

    .line 782
    invoke-virtual {v0, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 783
    sget-object v2, Lcom/senseonics/util/Utils;->webserviceFunction:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 788
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x61a8

    .line 790
    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 791
    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "UTF-8"

    .line 792
    invoke-static {p1, v1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 794
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 797
    :try_start_1
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 798
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_0
    move-exception p1

    .line 809
    :try_start_2
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 810
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 806
    :catch_1
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string p1, "Connect timeout"

    const-string v0, " - "

    .line 807
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :catch_2
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string p1, "Socket timeout"

    const-string v0, " - "

    .line 804
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 801
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 812
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, v0, :cond_0

    .line 813
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$7;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$7;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string p1, "-1"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    const-string v0, "exception"

    const-string v1, "----"

    .line 823
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, "-1"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public step3Finished()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v2, 0x7f0800af

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 505
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSignalStrengthRequest()V

    .line 509
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 511
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    .line 512
    iput-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    .line 514
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->initUpload()V

    return-void
.end method

.method public updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    .line 1047
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x34

    .line 1049
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1051
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1053
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1055
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1056
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    and-int/lit16 v5, v3, 0xff

    aput v5, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1058
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1059
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    aput v3, v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    const/4 p1, 0x0

    .line 1069
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x2

    .line 1070
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x10

    .line 1072
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1073
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    aput v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string p1, "Linking"

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atccalString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateViews()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
