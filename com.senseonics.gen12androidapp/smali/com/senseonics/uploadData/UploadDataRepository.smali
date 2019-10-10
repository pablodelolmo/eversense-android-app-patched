.class public Lcom/senseonics/uploadData/UploadDataRepository;
.super Ljava/lang/Object;
.source "UploadDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/uploadData/UploadDataRepository$Callback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/UploadDataService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/UploadDataService;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 34
    iput-object p2, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    .line 35
    iput-object p3, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method


# virtual methods
.method public putAppInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadDataService;->putAppInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 131
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 132
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/uploadData/UploadDataRepository$11;

    invoke-direct {v0, p0}, Lcom/senseonics/uploadData/UploadDataRepository$11;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    new-instance v1, Lcom/senseonics/uploadData/UploadDataRepository$12;

    invoke-direct {v1, p0}, Lcom/senseonics/uploadData/UploadDataRepository$12;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    .line 133
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putBleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/senseonics/api/UploadDataService;->uploadBluetoothLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/senseonics/api/RetryObservable;

    iget-object p3, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {p2, p3}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 148
    invoke-virtual {p1, p2}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 149
    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/senseonics/uploadData/UploadDataRepository$13;

    invoke-direct {p2, p0}, Lcom/senseonics/uploadData/UploadDataRepository$13;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    new-instance p3, Lcom/senseonics/uploadData/UploadDataRepository$14;

    invoke-direct {p3, p0}, Lcom/senseonics/uploadData/UploadDataRepository$14;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    .line 150
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putCurrentValues(Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadDataService;->putCurrentValues(Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 63
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 64
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/uploadData/UploadDataRepository$3;

    invoke-direct {v0, p0}, Lcom/senseonics/uploadData/UploadDataRepository$3;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    new-instance v1, Lcom/senseonics/uploadData/UploadDataRepository$4;

    invoke-direct {v1, p0}, Lcom/senseonics/uploadData/UploadDataRepository$4;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    .line 65
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putDeviceEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    .line 39
    iget-object v2, v0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    new-instance v12, Lcom/senseonics/api/DeviceEvents;

    const-string v4, "SMSIMeter"

    const-string v5, "Smart Transmitter (Android)"

    move-object v3, v12

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/senseonics/api/DeviceEvents;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Lcom/senseonics/api/UploadDataService;->putDeviceEvents(Lcom/senseonics/api/DeviceEvents;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/senseonics/api/RetryObservable;

    iget-object v4, v0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v3, v4}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 40
    invoke-virtual {v2, v3}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    iget-object v3, v0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 41
    invoke-virtual {v3}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/senseonics/uploadData/UploadDataRepository$1;

    invoke-direct {v3, v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository$1;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V

    new-instance v4, Lcom/senseonics/uploadData/UploadDataRepository$2;

    invoke-direct {v4, v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository$2;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V

    .line 42
    invoke-virtual {v2, v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadDataService;->putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 97
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 98
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/uploadData/UploadDataRepository$7;

    invoke-direct {v0, p0, p2}, Lcom/senseonics/uploadData/UploadDataRepository$7;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;)V

    new-instance v1, Lcom/senseonics/uploadData/UploadDataRepository$8;

    invoke-direct {v1, p0, p2}, Lcom/senseonics/uploadData/UploadDataRepository$8;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;)V

    .line 99
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putThresholdInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadDataService;->putThresholdInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 114
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 115
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/uploadData/UploadDataRepository$9;

    invoke-direct {v0, p0}, Lcom/senseonics/uploadData/UploadDataRepository$9;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    new-instance v1, Lcom/senseonics/uploadData/UploadDataRepository$10;

    invoke-direct {v1, p0}, Lcom/senseonics/uploadData/UploadDataRepository$10;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    .line 116
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putTransmitterInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->service:Lcom/senseonics/api/UploadDataService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadDataService;->PutTransmitterInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/uploadData/UploadDataRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 80
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 81
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/uploadData/UploadDataRepository$5;

    invoke-direct {v0, p0}, Lcom/senseonics/uploadData/UploadDataRepository$5;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    new-instance v1, Lcom/senseonics/uploadData/UploadDataRepository$6;

    invoke-direct {v1, p0}, Lcom/senseonics/uploadData/UploadDataRepository$6;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;)V

    .line 82
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
