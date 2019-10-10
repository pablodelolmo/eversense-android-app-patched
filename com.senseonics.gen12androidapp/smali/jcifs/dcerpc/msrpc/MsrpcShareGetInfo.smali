.class public Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.source "MsrpcShareGetInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    const/16 v1, 0x1f6

    invoke-direct {p0, p1, p2, v1, v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->ptype:I

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->flags:I

    return-void
.end method


# virtual methods
.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    .line 37
    iget-object v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljcifs/smb/SecurityDescriptor;

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    const/4 v3, 0x0

    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-direct {v1, v2, v3, v0}, Ljcifs/smb/SecurityDescriptor;-><init>([BII)V

    .line 40
    iget-object v0, v1, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
