.class public Lcom/senseonics/uploadData/DMSUploadTaskREST;
.super Landroid/os/AsyncTask;
.source "DMSUploadTaskREST.java"

# interfaces
.implements Lcom/senseonics/uploadData/UploadDataRepository$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/senseonics/uploadData/UploadDataRepository$Callback;"
    }
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hoursBack:I

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILcom/senseonics/util/StateModelUploadUtility;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "DMS(DMSUploadTaskREST)"

    .line 27
    iput-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->Tag:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 37
    iput-object p2, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 38
    iput p3, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->hoursBack:I

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    .line 40
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    .line 41
    iput-object p4, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILcom/senseonics/util/StateModelUploadUtility;)V

    .line 46
    iput-object p4, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/util/DMSTaskCallback;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;)V

    .line 51
    iput-object p6, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DMS(DMSUploadTaskREST)"

    const-string v0, "PANIC: No Valid Account Info"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->hoursBack:I

    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/util/AccountConstants;->getBase64_Sensor_BGM_Patient_Alert_Data(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleUploadDataFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 107
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2

    :cond_1
    instance-of p1, p1, Lcom/google/gson/stream/MalformedJsonException;

    if-eqz p1, :cond_3

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_5

    .line 114
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v2, v1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_5

    .line 118
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_1

    .line 108
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_5

    .line 109
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public handleUploadDataResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedOnInPreference()V

    .line 94
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/DMSUploadResultEvent;

    invoke-direct {v3, v2}, Lcom/senseonics/events/DMSUploadResultEvent;-><init>(Z)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;

    invoke-direct {v3}, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;-><init>()V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v1, v0, v2, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedStartInPreference()V

    .line 74
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 75
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 76
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v0, 0x2

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x3

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v8, p0

    .line 74
    invoke-virtual/range {v1 .. v8}, Lcom/senseonics/uploadData/UploadDataRepository;->putDeviceEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->handleUploadDataFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
