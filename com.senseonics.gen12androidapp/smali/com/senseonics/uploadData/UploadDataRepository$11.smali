.class Lcom/senseonics/uploadData/UploadDataRepository$11;
.super Ljava/lang/Object;
.source "UploadDataRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/uploadData/UploadDataRepository;->putAppInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)V
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


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadDataRepository$11;->this$0:Lcom/senseonics/uploadData/UploadDataRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/UploadDataRepository$11;->call(Ljava/lang/Boolean;)V

    return-void
.end method
