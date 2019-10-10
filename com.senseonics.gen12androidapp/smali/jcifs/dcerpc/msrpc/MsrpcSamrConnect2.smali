.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->ptype:I

    const/4 p1, 0x3

    .line 26
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->flags:I

    return-void
.end method
