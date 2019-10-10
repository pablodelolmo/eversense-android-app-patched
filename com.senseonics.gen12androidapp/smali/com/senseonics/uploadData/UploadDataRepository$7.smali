.class Lcom/senseonics/uploadData/UploadDataRepository$7;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/uploadData/UploadDataRepository;

.field final synthetic val$eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository$7;->this$0:Lcom/senseonics/uploadData/UploadDataRepository;

    iput-object p2, p0, Lcom/senseonics/uploadData/UploadDataRepository$7;->val$eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository$7;->val$eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/UploadDataRepository$7;->call(Ljava/lang/Boolean;)V

    return-void
.end method
