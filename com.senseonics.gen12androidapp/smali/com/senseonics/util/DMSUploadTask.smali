.class public Lcom/senseonics/util/DMSUploadTask;
.super Landroid/os/AsyncTask;
.source "DMSUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hoursBack:I

.field private isLogin:Ljava/lang/Boolean;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private passWord:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "DMS(DMSUploadTask)"

    .line 32
    iput-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->Tag:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    .line 47
    iput-object p2, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 48
    iput-object p3, p0, Lcom/senseonics/util/DMSUploadTask;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 49
    iput-object p4, p0, Lcom/senseonics/util/DMSUploadTask;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    const-string p1, ""

    .line 52
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->passWord:Ljava/lang/String;

    const-string p1, ""

    .line 53
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->userID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    .line 55
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;ILde/greenrobot/event/EventBus;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;)V

    .line 61
    iput p5, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    .line 62
    iput-object p6, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/DMSTaskCallback;)V
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;ILde/greenrobot/event/EventBus;)V

    .line 68
    iput-object p7, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    return-void
.end method

.method private uploadDeviceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 187
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    iget-object v2, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    invoke-virtual {p1, v1, v2, v0}, Lcom/senseonics/util/AccountConstants;->formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    .line 194
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 196
    new-instance v1, Lcom/senseonics/util/DMSSSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/senseonics/util/DMSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 197
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/AccountConstants;->createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 202
    :try_start_1
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DMS(DMSUploadTask)"

    const-string v1, "IO Exception"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p1, "DMS(DMSUploadTask)"

    const-string v0, "Connect timeout"

    .line 209
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "DMS(DMSUploadTask)"

    const-string v0, "Socket timeout"

    .line 207
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p1, "DMS(DMSUploadTask)"

    const-string v0, "Client Protocol Exception"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "-1"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    const-string v0, "DMS(DMSUploadTask)"

    const-string v1, "Might be keystore exception"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "-1"

    return-object p1

    :catch_5
    const-string p1, "DMS(DMSUploadTask)"

    const-string v0, "Unsupported Encoding Exception"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const-string p1, "DMS(DMSUploadTask)"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountConstants:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->passWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/senseonics/util/DMSUploadTask;->userID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/senseonics/util/AccountConstants;->prepareRequestStringForUploadingLoginData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DMS(DMSUploadTask)"

    const-string v1, "PANIC: No Valid Account Info"

    .line 81
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    .line 82
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    return-object v0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget v1, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    invoke-virtual {p1, v1}, Lcom/senseonics/util/AccountConstants;->prepareRequestStringForUploadingData(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedStartInPreference()V

    .line 93
    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->uploadDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8

    .line 99
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 101
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "DMS(DMSUploadTask)"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadData Response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AccountConstants;->getUploadResultFromResponse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 109
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "DMS(DMSUploadTask)"

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v3

    const-string v4, "DMS(DMSUploadTask)"

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dmsError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v4, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v4}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedOnInPreference()V

    .line 121
    iget-object v4, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/senseonics/events/DMSUploadResultEvent;

    invoke-direct {v5, v1}, Lcom/senseonics/events/DMSUploadResultEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;

    invoke-direct {v4}, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;-><init>()V

    invoke-virtual {v1, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    :cond_0
    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v4, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v5, "Logout"

    invoke-direct {v4, v5}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "Reason"

    const-string v6, "InvalidUserCredentials"

    .line 145
    invoke-virtual {v4, v5, v6}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v4

    check-cast v4, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v5, "Info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {v4, v5, v6}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v4

    check-cast v4, Lcom/crashlytics/android/answers/CustomEvent;

    .line 144
    invoke-virtual {v1, v4}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 148
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v4, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v5, "Sync Invalid Credentials"

    invoke-direct {v4, v5}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "Info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v4, v5, v0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 148
    invoke-virtual {v1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    invoke-interface {v0, v3, v2, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 156
    :cond_2
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 157
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 164
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 165
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 169
    :cond_4
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 170
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    :cond_5
    :goto_0
    return-void
.end method
