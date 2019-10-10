.class public Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;-><init>()V

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->ptype:I

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->flags:I

    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .locals 5

    .line 47
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    .line 48
    iget v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    new-array v1, v1, [Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    const/4 v2, 0x0

    .line 49
    :goto_0
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    if-ge v2, v3, :cond_0

    .line 50
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v2

    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;-><init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
