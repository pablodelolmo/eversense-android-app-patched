.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.source "MsrpcSamrOpenDomain.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->ptype:I

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->flags:I

    return-void
.end method
