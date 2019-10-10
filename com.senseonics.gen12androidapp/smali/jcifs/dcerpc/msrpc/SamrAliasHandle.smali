.class public Ljcifs/dcerpc/msrpc/SamrAliasHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrAliasHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 33
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;

    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V

    .line 34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget p1, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    if-eqz p1, :cond_0

    .line 36
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
