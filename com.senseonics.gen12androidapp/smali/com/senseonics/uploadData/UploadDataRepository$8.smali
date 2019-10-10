.class Lcom/senseonics/uploadData/UploadDataRepository$8;
.super Ljava/lang/Object;
.source "UploadDataRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/uploadData/UploadDataRepository;->putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;Lde/greenrobot/event/EventBus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/uploadData/UploadDataRepository;

.field final synthetic val$eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository$8;->this$0:Lcom/senseonics/uploadData/UploadDataRepository;

    iput-object p2, p0, Lcom/senseonics/uploadData/UploadDataRepository$8;->val$eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/UploadDataRepository$8;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository$8;->val$eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
