.class public interface abstract Lcom/senseonics/api/UploadDataService;
.super Ljava/lang/Object;
.source "UploadDataService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "api/care/"

.field public static final PATH_BLE:Ljava/lang/String; = "api/BleAudit/"


# virtual methods
.method public abstract PutTransmitterInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutTransmitterValues"
    .end annotation
.end method

.method public abstract putAppInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutAppValues"
    .end annotation
.end method

.method public abstract putCurrentValues(Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutCurrentValues"
    .end annotation
.end method

.method public abstract putDeviceEvents(Lcom/senseonics/api/DeviceEvents;)Lrx/Observable;
    .param p1    # Lcom/senseonics/api/DeviceEvents;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/api/DeviceEvents;",
            ")",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutDeviceEvents"
    .end annotation
.end method

.method public abstract putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutSensorValues"
    .end annotation
.end method

.method public abstract putThresholdInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/care/PutThresholdValues"
    .end annotation
.end method

.method public abstract uploadBluetoothLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "AlertID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "AlertName"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "AlertDate"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "Payload"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/BleAudit/UploadBluetoothLogs"
    .end annotation
.end method
