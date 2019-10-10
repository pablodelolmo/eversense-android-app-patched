.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "MsrpcSamrConnect4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1

    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;->ptype:I

    const/4 p1, 0x3

    .line 26
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;->flags:I

    return-void
.end method
