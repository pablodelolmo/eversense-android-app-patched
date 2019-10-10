.class Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
.super Ljcifs/smb/SmbShareInfo;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsrpcShareInfo1"
.end annotation


# instance fields
.field final synthetic this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;


# direct methods
.method constructor <init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V
    .locals 0

    .line 29
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    invoke-direct {p0}, Ljcifs/smb/SmbShareInfo;-><init>()V

    .line 30
    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->netName:Ljava/lang/String;

    .line 31
    iget p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->type:I

    .line 32
    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->remark:Ljava/lang/String;

    return-void
.end method
