.class public interface abstract Ljcifs/dcerpc/DcerpcSecurityProvider;
.super Ljava/lang/Object;
.source "DcerpcSecurityProvider.java"


# virtual methods
.method public abstract unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation
.end method

.method public abstract wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation
.end method
