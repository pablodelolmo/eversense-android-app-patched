.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.source "MsrpcSamrOpenAlias.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->ptype:I

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->flags:I

    return-void
.end method
