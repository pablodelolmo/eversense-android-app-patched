.class public Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->ptype:I

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->flags:I

    return-void
.end method
