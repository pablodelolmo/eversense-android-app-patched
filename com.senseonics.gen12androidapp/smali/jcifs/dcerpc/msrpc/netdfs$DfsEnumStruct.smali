.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumStruct"
.end annotation


# instance fields
.field public e:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 424
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 425
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 426
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 427
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 433
    :cond_0
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 434
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 411
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 412
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 413
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 414
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 415
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 417
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    if-eqz v0, :cond_0

    .line 418
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 419
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    return-void
.end method
