.class Lcom/senseonics/uploadData/UploadDataRepository$1;
.super Ljava/lang/Object;
.source "UploadDataRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/uploadData/UploadDataRepository;->putDeviceEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/uploadData/UploadDataRepository;

.field final synthetic val$callback:Lcom/senseonics/uploadData/UploadDataRepository$Callback;


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository$1;->this$0:Lcom/senseonics/uploadData/UploadDataRepository;

    iput-object p2, p0, Lcom/senseonics/uploadData/UploadDataRepository$1;->val$callback:Lcom/senseonics/uploadData/UploadDataRepository$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/UploadDataRepository$1;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadDataRepository$1;->val$callback:Lcom/senseonics/uploadData/UploadDataRepository$Callback;

    invoke-interface {v0, p1}, Lcom/senseonics/uploadData/UploadDataRepository$Callback;->handleUploadDataResult(Ljava/util/List;)V

    return-void
.end method
