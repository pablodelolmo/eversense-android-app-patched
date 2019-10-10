.class public Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.source "MsrpcGetMembersInAlias.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 28
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->ptype:I

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->flags:I

    return-void
.end method
