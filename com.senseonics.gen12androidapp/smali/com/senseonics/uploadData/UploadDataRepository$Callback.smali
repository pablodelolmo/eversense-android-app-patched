.class public interface abstract Lcom/senseonics/uploadData/UploadDataRepository$Callback;
.super Ljava/lang/Object;
.source "UploadDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/uploadData/UploadDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract handleUploadDataFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract handleUploadDataResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
