.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray1"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 66
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 67
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    .line 68
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 72
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 73
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x4

    .line 74
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 76
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 82
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;-><init>()V

    aput-object v3, v2, v1

    .line 85
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 48
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 49
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 50
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 52
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    if-eqz v0, :cond_0

    .line 53
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 54
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->count:I

    .line 55
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 56
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x4

    .line 57
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 59
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
