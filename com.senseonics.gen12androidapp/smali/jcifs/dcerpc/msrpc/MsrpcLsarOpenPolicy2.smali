.class public Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.source "MsrpcLsarOpenPolicy2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V
    .locals 1

    .line 25
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;-><init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V

    .line 26
    iget-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    const/16 p2, 0x18

    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 27
    new-instance p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    const/16 p2, 0xc

    .line 28
    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    const/4 p2, 0x2

    .line 29
    iput-short p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    const/4 p2, 0x1

    .line 30
    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    const/4 p2, 0x0

    .line 31
    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 32
    iget-object p3, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    iput-object p1, p3, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 33
    iput p2, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->ptype:I

    const/4 p1, 0x3

    .line 34
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->flags:I

    return-void
.end method
